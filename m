Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1FB12279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 07:33:36 +0000 (UTC)
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 96E0F110
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 07:33:35 +0000 (UTC)
Received: by mail-oi0-f52.google.com with SMTP id c15so25030047oig.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 00:33:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160809095728.GE30880@suse.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de> <579A7DFD.60305@metafoo.de>
	<98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
	<20160729111303.GA10376@sirena.org.uk>
	<20160801190309.GX3296@wotan.suse.de>
	<20160809095728.GE30880@suse.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 12 Aug 2016 09:33:33 +0200
Message-ID: <CACRpkda7OD9BB33D0nChh=C_=K9tuX-V=+pcOXb6RQLjhBw_bA@mail.gmail.com>
To: =?UTF-8?B?SsO2cmcgUsO2ZGVs?= <jroedel@suse.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Oded Gabbay <oded.gabbay@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Tue, Aug 9, 2016 at 11:57 AM, J=C3=B6rg R=C3=B6del <jroedel@suse.de> wro=
te:

> one
> idea I had was to rework the way build-in modules work. If they are not
> linked into the kernel at compile-time, but at boot-time, this problem
> would be solved. On the other hand this slows down boot (is this importan=
t
> when distro-kernels build everything as modules anyway?)

I don't know what you mean by "distro-kernels" but the vast majority if
not all Android kernels are coming with most stuff built-in, not as modules=
,
which means that you would slow down all Android tablets and phones on
the planet if this becomes slower. So it needs to be as quick or faster :)

Yours,
Linus Walleij
