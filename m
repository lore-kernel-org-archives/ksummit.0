Return-Path: <jroedel@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6A11F279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 16:52:38 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E9AD419F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 16:52:37 +0000 (UTC)
Date: Tue, 9 Aug 2016 18:53:07 +0200
From: =?iso-8859-1?Q?J=F6rg_R=F6del?= <jroedel@suse.de>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160809165306.GA2547@suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de> <579A7DFD.60305@metafoo.de>
	<98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
	<20160729111303.GA10376@sirena.org.uk>
	<20160801190309.GX3296@wotan.suse.de>
	<20160809095728.GE30880@suse.de>
	<1470758919.2299.46.camel@HansenPartnership.com>
	<1470759060.2299.49.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1470759060.2299.49.camel@HansenPartnership.com>
Cc: Oded Gabbay <oded.gabbay@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Cristina Moraru <cristina.moraru09@gmail.com>,
	Roberto Di Cosmo <roberto@dicosmo.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Stefano Zacchiroli <zack@upsilon.cc>,
	Valentin Rothberg <valentinrothberg@gmail.com>
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

On Tue, Aug 09, 2016 at 09:11:00AM -0700, James Bottomley wrote:
> 
> Hmm, pressed send to early.  However, the basic point is that you can
> finesse most of the "dependency" issues by separating the
> initalisations into a subsystem part (which is guaranteed before any
> device is probed) and a device part, which can be done at device
> instantiation time.

Yeah, that's true, the problem can be solved with this pattern too, and
this sounds a lot more stable than the current solution for this problem
on the IOMMU side. Currently this is 'solved' by making sure the iommu
driver is linked in before the KFD driver is, which affects the order of
the initcalls.

Anyway, it would be good to have a solution which removes the
differences between whether something is compiled-in or as a module,
because this reduces the testing matrix and makes everyones life easier.
For me it would be nice to know that if something works as a module, it
will still work when compiled in.



	Joerg
