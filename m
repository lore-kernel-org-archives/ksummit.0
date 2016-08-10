Return-Path: <jroedel@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 57AFD721
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 15:21:01 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DB60E22A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 15:21:00 +0000 (UTC)
Date: Wed, 10 Aug 2016 17:21:24 +0200
From: =?iso-8859-1?Q?J=F6rg_R=F6del?= <jroedel@suse.de>
To: "Luis R. Rodriguez" <mcgrof@kenel.org>
Message-ID: <20160810152124.GC2547@suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de> <579A7DFD.60305@metafoo.de>
	<98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
	<20160729111303.GA10376@sirena.org.uk>
	<20160801190309.GX3296@wotan.suse.de>
	<20160809095728.GE30880@suse.de>
	<20160809180651.GC3296@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160809180651.GC3296@wotan.suse.de>
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

On Tue, Aug 09, 2016 at 08:06:52PM +0200, Luis R. Rodriguez wrote:
> If the semantics of order would be in place at compile time linker tables
> could be used to link at compile time in such a way that order is respected
> so linking at compile time is possible, you however would need an explicit
> order mentioned, which IMHO would be good.
> 
> How would linking the kernel at boot time happen so that it can
> enable proper ordering ?

The idea was basically to compile module stuff always as a module and
put the modules that should be 'built-in' into the kernel-image and let
the module-code link them into the kernel at boot time automatically in
the right order, as the required symbols become visible.

But thats a rather intrusive change and I am not sure the benefits
outweight the conversion cost.



	Joerg
