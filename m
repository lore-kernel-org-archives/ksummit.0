Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 57CFD8A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 07:16:55 +0000 (UTC)
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7A8F91F8BD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 07:16:54 +0000 (UTC)
Received: by mail-lb0-f175.google.com with SMTP id 10so3722959lbg.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 00:16:52 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <53F16E14.6030507@landley.net>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<CACRpkdZL_1Enxd2dTnaEvZkHuCfV08f74ZOqFqaRtEdyMmwtvA@mail.gmail.com>
	<53EB8E4F.9090008@roeck-us.net> <53F16E14.6030507@landley.net>
Date: Mon, 18 Aug 2014 09:16:52 +0200
Message-ID: <CAMuHMdWJFjziYGrtHUOac+guL-Kf=znTG9F5xW1T-0Tz6WP9Rg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Rob Landley <rob@landley.net>
Content-Type: text/plain; charset=UTF-8
Cc: Shuah Khan <shuah.kh@samsung.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Rob,

On Mon, Aug 18, 2014 at 5:08 AM, Rob Landley <rob@landley.net> wrote:
> (My dayjob has nothing to do with anything interesting, I'm paid to work
> on a a company's fork of a vendor's bsp fork of a really old kernel. For
> the new board, we just upgraded _to_ a version that's only 4 years old.
> When they finally ship there will be a nominal compliance tarball put on
> a website somewhere that nobody will ever look at or care about. I keep
> meaning to put up a patreon to see if people would be willing to sponsor
> me to spend all my time on actually _interesting_ stuff like this, but
> the chances are low enough I haven't bothered.)
>
>> I have been unable to find a working combination of kernel configuration,
>> qemu version, qemu command line, and root file system for m68k. Presumably
>> that must exist, because qemu supports m68k, I just have not been able
>> to figure out how to make it work.
>
> QEMU does not support m68k, qemu supports coldfire which is a nommu
> subset of m68k. But people have used the aranym emulator to fake an
> atari machine that _has_ run the root filesystems I've been building.
> (With a different kernel config, and a largeish patch for aranym devices
> that since went upstream. But it showed the basics were right.)

These days atari_defconfig in upstream should run fine on ARAnyM.

> The problem with using aranym is my setup expects a certain pile of
> devices. If /dev/console goes to stdin/stdout than it's easy to script
> the sucker with tcl/expect and log the output with "tee". If you have a

Ah, ARAnyM's nfcon only does stdout, not stdin.

> virtual network card you can move the heavy lifting of compilation
> outside the emulator with distcc hooked up to the cross compiler

But nfeth works fine.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
