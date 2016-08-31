Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 359F1308
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 31 Aug 2016 08:24:26 +0000 (UTC)
Received: from mail-it0-f65.google.com (mail-it0-f65.google.com
	[209.85.214.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A9EE7112
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 31 Aug 2016 08:24:25 +0000 (UTC)
Received: by mail-it0-f65.google.com with SMTP id n75so4824866ith.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 31 Aug 2016 01:24:25 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <201608302144.40679.arnd@arndb.de>
References: <20160826193331.GA29084@jra3> <201608301733.36149.arnd@arndb.de>
	<20160830160450.GC26785@roeck-us.net>
	<201608302144.40679.arnd@arndb.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 31 Aug 2016 10:24:23 +0200
Message-ID: <CAMuHMdWw64AMy_dMoQrkk1O0=dX4tiGJeGqvKPScxnZ29BNT0Q@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset=UTF-8
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Arnd,

On Tue, Aug 30, 2016 at 9:44 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> However, Linaro also has a number of subsystem maintainers and most of
> the sunxi specific drivers were reviewed and/or merged by someone
> in Linaro who is doing that work for all ARM platforms, whether they

I think "ARM" shouldn't be part of this sentence (e.g. for SPI).

> are made by Linaro member companies or not.

Yep. That's assumed by wearing a Linux MAINTAINERS hat...

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
