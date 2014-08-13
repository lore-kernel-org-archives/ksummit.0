Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 308C2ADF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 19:54:02 +0000 (UTC)
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B30082034C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 19:54:00 +0000 (UTC)
Received: by mail-lb0-f177.google.com with SMTP id s7so192630lbd.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 12:53:59 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20140813180743.GB16662@roeck-us.net>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
	<20140813180743.GB16662@roeck-us.net>
Date: Wed, 13 Aug 2014 21:53:58 +0200
Message-ID: <CAMuHMdVEYEsk1EtBbAAinJ=7m5SRh-w4DZb=_N0gaMgpvtRadw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] RFC: Kernel tinification - kernel config
	reduction
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 13, 2014 at 8:07 PM, Guenter Roeck <linux@roeck-us.net> wrote:
> Major problem I see is that many architecture maintainers don't seem to care
> about "make allmodconfig" and/or "make allyesconfig", meaning there is no
> simple means to at least compile-test all code that _can_ be enabled for
> a given architecture. And don't even mention "make randconfig".

There are still architectures that don't support multi-platform kernels, which
is a requirement for good coverage.

An alternative could be to have several allmodconfig builds, one for each
subset that can't be built-in together, like

make CONFIG_SUBSET_FOO=y allmodconfig
make CONFIG_SUBSET_BAR=y allmodconfig
...

> Instead of CONFIG_TINY or similar, I would find it more important to get
> allmodconfig and/or allyesconfig to work for as many architectures as
> possible, and to create some means to help catching errors of the
> kind detected by randconfig, only in a more deterministic way.

The few allmodconfig/allyesconfig builds on
kisskb.ellerman.id.au/kisskb/matrix/ are actually not in such a bad shape.
Shall more be added?

You also only build some of the allmodconfigs?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
