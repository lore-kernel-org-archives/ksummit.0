Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E6518959
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 08:30:50 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 740B513B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 08:30:50 +0000 (UTC)
Date: Tue, 2 Aug 2016 10:30:45 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
In-Reply-To: <CAKdAkRSgnL_efCUnX+v8Up_OcJq4RcKH=-AHORDwDFWHDXxPAQ@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1608021030180.22028@cbobk.fhfr.pm>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160729111303.GA10376@sirena.org.uk>
	<20160801190309.GX3296@wotan.suse.de>
	<1555444.RIYpEbA2F7@vostro.rjw.lan>
	<20160802005650.GF3296@wotan.suse.de>
	<CAKdAkRSgnL_efCUnX+v8Up_OcJq4RcKH=-AHORDwDFWHDXxPAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Oded Gabbay <oded.gabbay@gmail.com>,
	=?ISO-8859-15?Q?J=F6rg_R=F6del?= <jroedel@suse.de>,
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

On Mon, 1 Aug 2016, Dmitry Torokhov wrote:

> HID would definitely benefit from specific/generic support. Rigth now 
> there are somewhat long tables of devices generic hid driver ignores so 
> that specific drivers have a chance to bind.

Agreed, that's an excellent use-case for this proposal. Thanks,

-- 
Jiri Kosina
SUSE Labs
