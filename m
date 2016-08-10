Return-Path: <jroedel@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 12B6C412
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 21:36:59 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9EDE11F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Aug 2016 21:36:58 +0000 (UTC)
Date: Wed, 10 Aug 2016 23:37:21 +0200
From: =?iso-8859-1?Q?J=F6rg_R=F6del?= <jroedel@suse.de>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Message-ID: <20160810213721.GD2547@suse.de>
References: <20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de> <579A7DFD.60305@metafoo.de>
	<98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
	<20160729111303.GA10376@sirena.org.uk>
	<20160801190309.GX3296@wotan.suse.de>
	<20160809095728.GE30880@suse.de>
	<20160809180651.GC3296@wotan.suse.de>
	<20160810152124.GC2547@suse.de>
	<20160810164222.GJ3296@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160810164222.GJ3296@wotan.suse.de>
Cc: Oded Gabbay <oded.gabbay@gmail.com>, "Luis R. Rodriguez" <mcgrof@kenel.org>,
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

On Wed, Aug 10, 2016 at 06:42:22PM +0200, Luis R. Rodriguez wrote:
> Yeah linking at boot sounds intrusive but the logic of re-using the module
> ordering scheme for delaying selective built-in inits does not sound so bad to
> me. I believe you are right that if the existing simple module ordering scheme
> suffices for module_init() order, it should also be possible to delay such
> built-in init so long as the same module ordering is followed. With a bit of
> stuffing the driver symbol dep map stuff into built-in, it should be in theory
> possible to have something similar and simple for built-in, with already well
> tested coverage. Also, if there are flaws with module order, or simply we know
> we want something better / different for built-in it begs the question if we
> can borrow similar logic for modules as well.

Hmm, that might indeed work, with some changes to the build system, I
think. The problem is that on a vmlinux file the module boundaries went
away (you can't tell anymore which symbol belongs to which module, if at
all). So we need to work on the .o files to find out the correct order
(with some depmod-like tool) and sort the initcall-table accordingly in
an additional linker step.


	Joerg
