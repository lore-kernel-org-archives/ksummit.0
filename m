Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21614BAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 17:56:04 +0000 (UTC)
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9B296A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 17:56:03 +0000 (UTC)
Received: by mail-io0-f195.google.com with SMTP id j200so5898854ioe.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 10:56:03 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <CA+55aFzgumwC-HqDpsj-OEVoQdhcnRo9Fh2Kg7SMPL6+wP4ctg@mail.gmail.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
	<CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
	<CAOesGMimO1rYi7RpcsZYX9uDgWUJdv4XSgQR+RJaaS2qt_FCLw@mail.gmail.com>
	<CA+55aFxDyj-9koeDemqUvxYrLyKxV8Xggy=ad_EQmGrfEef_gg@mail.gmail.com>
	<20170627231011.GA10543@mail.hallyn.com>
	<CAB=NE6Wd9WWCyRzO=TjaTiPNruSwt24G3BD2qTuUue8B3kRX5g@mail.gmail.com>
	<CA+55aFzgumwC-HqDpsj-OEVoQdhcnRo9Fh2Kg7SMPL6+wP4ctg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 28 Jun 2017 19:56:01 +0200
Message-ID: <CAMuHMdXQ3FVOQcRBfbc68f5KWmZw7q=YKyeQYUfKqikqrcAAmQ@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Cristina Moraru <cristina.moraru09@gmail.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jun 28, 2017 at 2:14 AM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Tue, Jun 27, 2017 at 5:09 PM, Luis R. Rodriguez <mcgrof@kernel.org> wrote:
>> The *easier* thing to do for now was to just map a loaded module to a
>> kconfig symbol, and she proposed fairly simple patches to do this.
>
> Well, localmodconfig does that today already.
>
> And as mentioned, this is *not* even primarily about devices.
>
> Devices are actually the easy case. Not only are they generally fairly
> easy to enumerate (ie lsusb etc), they are things that people are at
> least more or less aware of.

Devices are indeed the easy part.  And on systems using DT, it's fairly easy
to find out which drivers you need to enable.
However, many drivers cannot be enabled without enabling a subsystem and
a few subsystem-specific options first.  Finding out which is already much
harder. E.g. the media subsystem has many of these.

> The config options that don't enable drivers, but enable particular
> behavior - *those* are actually the nastiest ones.
>
> And you don't see those in module names (well, you obviously sometimes
> do, since the module might be what implements the behavior, but quite
> often it's a built-in or just a setting for a module)

Module names assume you already have a running system to get a list of modules.
I don't want to go into systemd bashing (you can probably find other examples),
but when a Debian upgrade pulled in systemd, I had a hard time finding out
which Kconfig options I had to enable to make the system boot again.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
