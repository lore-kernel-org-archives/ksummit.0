Return-Path: <jroedel@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DE96171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 09:57:30 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6D18E112
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Aug 2016 09:57:30 +0000 (UTC)
Date: Tue, 9 Aug 2016 11:57:28 +0200
From: =?iso-8859-1?Q?J=F6rg_R=F6del?= <jroedel@suse.de>
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20160809095728.GE30880@suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de> <579A7DFD.60305@metafoo.de>
	<98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
	<20160729111303.GA10376@sirena.org.uk>
	<20160801190309.GX3296@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160801190309.GX3296@wotan.suse.de>
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

On Mon, Aug 01, 2016 at 09:03:09PM +0200, Luis R. Rodriguez wrote:
> Another piece of code that deals with complex dependencies I've recently
> ventured into was the x86 IOMMU stuff. The complexities here are both at
> the built-in init level and also later at probe.

Yeah, everything is fine when both, AMD-KFD and the IOMMUv2 driver are
built as modules, as the order of loading these modules is
preserved by symbol dependencies. But when they are built-in these
modules also need to be initialized in the right order, otherwise the
KFD-driver will call into an uninialized IOMMU driver and crashes the
system. Long-term this will be fixed by always build-in the IOMMU-parts
(when they are merged with the Intel-SVM support), but in general not
being able to express dependencies between build-in modules remains to
be a problem.

I have spent spent some thoughts on how this could be solved, and one
idea I had was to rework the way build-in modules work. If they are not
linked into the kernel at compile-time, but at boot-time, this problem
would be solved. On the other hand this slows down boot (is this important
when distro-kernels build everything as modules anyway?) and probably
doesn't solve the dependency problems for power-management or elsewhere
in kernel.

So I'd like to participate if this is going to be discussed.


Thanks,

	Joerg
