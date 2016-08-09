Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 063FA413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 17:12:08 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id EAF99243
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 17:12:06 +0000 (UTC)
Message-ID: <1470762724.2299.56.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Tue, 09 Aug 2016 10:12:04 -0700
In-Reply-To: <20160809165105.GB3296@wotan.suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de> <579A7DFD.60305@metafoo.de>
	<98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
	<20160729111303.GA10376@sirena.org.uk>
	<20160801190309.GX3296@wotan.suse.de> <20160809095728.GE30880@suse.de>
	<1470758919.2299.46.camel@HansenPartnership.com>
	<1470759060.2299.49.camel@HansenPartnership.com>
	<20160809165105.GB3296@wotan.suse.de>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Oded Gabbay <oded.gabbay@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Cristina Moraru <cristina.moraru09@gmail.com>,
	Roberto Di Cosmo <roberto@dicosmo.org>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Stefano Zacchiroli <zack@upsilon.cc>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2016-08-09 at 18:51 +0200, Luis R. Rodriguez wrote:
> On Tue, Aug 09, 2016 at 09:11:00AM -0700, James Bottomley wrote:
> > On Tue, 2016-08-09 at 09:08 -0700, James Bottomley wrote:
> > > On Tue, 2016-08-09 at 11:57 +0200, Jörg Rödel wrote:
> > > > On Mon, Aug 01, 2016 at 09:03:09PM +0200, Luis R. Rodriguez
> > > > wrote:
> > > > > Another piece of code that deals with complex dependencies 
> > > > > I've recently ventured into was the x86 IOMMU stuff. The 
> > > > > complexities here are both at the built-in init level and
> > > > > also later at probe.
> > > > 
> > > > Yeah, everything is fine when both, AMD-KFD and the IOMMUv2 
> > > > driver are built as modules, as the order of loading these 
> > > > modules is preserved by symbol dependencies. But when they are 
> > > > built-in these modules also need to be initialized in the right 
> > > > order, otherwise the KFD-driver will call into an uninialized 
> > > > IOMMU driver and crashes the system. Long-term this will be 
> > > > fixed by always build-in the IOMMU-parts (when they are merged 
> > > > with the Intel-SVM support), but in general not being able to 
> > > > express dependencies between build-in modules remains to be a
> > > > problem.
> > > 
> > > Have you considered using transport templates or attribute 
> > > containers?  That's how we manage the complex hierarchies in 
> > > ATA/SCSI.  If you look we have a complex dependency
> > > 
> > > ata_dev->transport->ata->scsi (or in SCSI dev->transport->scsi)
> > > 
> > > Our chains are much more complex than this because I've stopped 
> > > before probing begins, which is async.
> > > 
> > > The basic way we cope is that both ata and scsi use 
> > > subsystem_init for their exclusive resources, meaning they're 
> > > order independent. The probes a kicked off by the hardware 
> > > modules, so they're done by module_init (meaning after 
> > > subsystem_init) again, order independent.  The rest of the 
> > > dependent initialisations is done within the transport/attribute 
> > > code, meaning not until a consumer is actually instantiated.
> > > 
> > > The way attributes/transport classes work is that they're 
> > > actually attached to the devices that you instantiate
> > 
> > Hmm, pressed send to early.  However, the basic point is that you 
> > can finesse most of the "dependency" issues by separating the
> > initalisations into a subsystem part (which is guaranteed before 
> > any device is probed) and a device part, which can be done at 
> > device instantiation time.
> 
> This sounds pretty great, what other subsystems use it and most
> importantly, why haven't others picked this up yet ?

The transport classes? Only SCSI and its dependent subsystems, as far
as I'm aware.  It's been around for ages (2004, I think; there's an OLS
paper on it) but hitherto only we had the complex dependency problem,
particularly with the driver/transport separation that this was
designed for.

However, there may be many other subsystems that use the technique in a
different way.  The basics are the theorem of separability: any set of
separable problems can be made arbitrarily complex if you look at them
in the wrong way.  The corollary being that any hugely complex
interdependency may be rendered unnecessary by simply viewing the
problem in a different way.  It turns out that most of our complex
dependency issues can be made to go away if we look at stuff in the
right way.

James
