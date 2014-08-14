Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 26D8FADF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 07:50:02 +0000 (UTC)
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 48EF7201A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 07:50:01 +0000 (UTC)
Received: by mail-la0-f48.google.com with SMTP id gl10so683520lab.35
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 00:49:59 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20140814001450.GW17528@sirena.org.uk>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
	<20140813180743.GB16662@roeck-us.net>
	<CAMuHMdVEYEsk1EtBbAAinJ=7m5SRh-w4DZb=_N0gaMgpvtRadw@mail.gmail.com>
	<20140813224507.GA29606@roeck-us.net>
	<20140814001450.GW17528@sirena.org.uk>
Date: Thu, 14 Aug 2014 09:49:59 +0200
Message-ID: <CAMuHMdUH_7KL0KCsZEL91m2YKwBBGTQEcYfQRQsHLcQ8LXHpkQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Mark Brown <broonie@kernel.org>
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

Hi Mark,

On Thu, Aug 14, 2014 at 2:14 AM, Mark Brown <broonie@kernel.org> wrote:
> On Wed, Aug 13, 2014 at 03:45:07PM -0700, Guenter Roeck wrote:
>> > The few allmodconfig/allyesconfig builds on
>> > kisskb.ellerman.id.au/kisskb/matrix/ are actually not in such a bad shape.
>> > Shall more be added?
>
> I can't get that site to load...

Sometimes it's slow, sometimes it's fast...

> allnoconfig is interesting too for similar reasons.

Yes, but given you can't actually boot it, it usually receives even less care
than allmodconfig.

Plus you have to band-aid various trivia, like
  - NR_IRQS being zero,
  - No CPU or platform code included, causing link errors (e.g. head.o is
    not built on m68k),
  - ...

Furthermore, allnoconfig disables CONFIG_MMU on architectures that support
nommu, which is less interesting, and thus need a KCONFIG_ALLCONFIG=
trick (I'd love to have just "make CONFIG_MMU=y allnoconfig" instead).

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
