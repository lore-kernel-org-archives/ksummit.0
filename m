Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7EA80279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 18:06:57 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AAF0D187
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 18:06:56 +0000 (UTC)
Date: Tue, 9 Aug 2016 20:06:52 +0200
From: "Luis R. Rodriguez" <mcgrof@kenel.org>
To: =?iso-8859-1?Q?J=F6rg_R=F6del?= <jroedel@suse.de>
Message-ID: <20160809180651.GC3296@wotan.suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de> <579A7DFD.60305@metafoo.de>
	<98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
	<20160729111303.GA10376@sirena.org.uk>
	<20160801190309.GX3296@wotan.suse.de>
	<20160809095728.GE30880@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20160809095728.GE30880@suse.de>
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

On Tue, Aug 09, 2016 at 11:57:28AM +0200, Jörg Rödel wrote:
> On Mon, Aug 01, 2016 at 09:03:09PM +0200, Luis R. Rodriguez wrote:
> > Another piece of code that deals with complex dependencies I've recently
> > ventured into was the x86 IOMMU stuff. The complexities here are both at
> > the built-in init level and also later at probe.
> 
> Yeah, everything is fine when both, AMD-KFD and the IOMMUv2 driver are
> built as modules, as the order of loading these modules is
> preserved by symbol dependencies. But when they are built-in these
> modules also need to be initialized in the right order, otherwise the
> KFD-driver will call into an uninialized IOMMU driver and crashes the
> system. Long-term this will be fixed by always build-in the IOMMU-parts
> (when they are merged with the Intel-SVM support), but in general not
> being able to express dependencies between build-in modules remains to
> be a problem.
> 
> I have spent spent some thoughts on how this could be solved, and one
> idea I had was to rework the way build-in modules work. If they are not
> linked into the kernel at compile-time, but at boot-time, this problem
> would be solved.

If the semantics of order would be in place at compile time linker tables
could be used to link at compile time in such a way that order is respected
so linking at compile time is possible, you however would need an explicit
order mentioned, which IMHO would be good.

How would linking the kernel at boot time happen so that it can
enable proper ordering ?

> On the other hand this slows down boot (is this important
> when distro-kernels build everything as modules anyway?)

If done once I think this is reasonable, but again, if you can do this
arrangement at compile time, why not?

The one issue with this solution however is it does not address
specialized ordering with information only attainable at run time.
For this later issue a run time sort is still possible and we have
precedents for such things in the x86 IOMMU PCI initialization code,
however note that that code can be replaced by compile time sort given
the dependencies can be attained also at link order. Nevertheless, its
precedent shows a demo of how a run time sort is possible if you don't
all ordering information at compile time.

  Luis
