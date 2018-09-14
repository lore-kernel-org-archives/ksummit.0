Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 07A08BA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Sep 2018 07:08:21 +0000 (UTC)
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 73A8113A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Sep 2018 07:08:20 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id w11-v6so5251590iob.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Sep 2018 00:08:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
	<CACRpkdZeR=0-_tN03jFLGc-j1pW4hfOtqB6icjhpF190A8Z0=A@mail.gmail.com>
	<20180912182343.GI2760@piout.net>
	<alpine.DEB.2.21.1809122037450.1473@nanos.tec.linutronix.de>
	<20180913120811.oilaweiun3z4l5wo@flea>
In-Reply-To: <20180913120811.oilaweiun3z4l5wo@flea>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Sep 2018 09:08:07 +0200
Message-ID: <CACRpkdbJFZ+SkCY4QJwhbO+moyNpSVA1SjNozNxLdzHmBJQA1w@mail.gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 13, 2018 at 2:08 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:

> If there's a very significant part of the work that is
> done by the maintainer of a given subsystem, and that there is a
> single maintainer for that subsystem, what will happen when that
> maintainer decides to stop contributing for some reason?
>
> All the knowledge they built, experience they got (including at
> reviewing) is gone, possibly forever, and there's no one to pick up
> the subsystem, and the code is left to rot.

Unfortunately this is what happened when David Brownell
passed away. His passing had a long-standing and serious
impact on the quality of the subsystems he helped creating.

GPIO was left unmaintained and patches were coming in
and merged by Andrew Morton, as is default (and it is a
good thing that we don't just stop merging code, that would
probably have been even worse). Most of it was fine.

However one piece that got merged at this turbulent time
was the GPIO sysfs ABI which in my opinion
was not very nice. The main problem was that it exposed
kernel internals (the global GPIO numberspace) to the whole
world and made them semi-ABI which is really tricky to
maintain in the long run. It probably didn't seem like a big
problem at the time and GPIO was seen as obscure. But
it has created a major maintenance headache, and I imagine
that an active maintainer would have come up with something
a bit different. I have moved that ABI to "obsolete" and try
to make the new character device ABI as tasty as possible
to encourage migration but it will have to be maintained
until there is noone left in the forest to hear the tree fall
when I cut it. I guess in 2045 or so.

There are other things that was David's ideas, such as highly
optimized bit-banging routines in SPI where it would have
been great to have his input. Those are less severe, but I
can't help to compare with the MMC/SD subsystem where at
one point last year I could reach out to the previous-to-previous
maintainer (Pierre Ossman) and ask why the subsystem had
a bounce buffer mechanism, which was really helpful because
he quickly provided the answer and we managed to fix it up
nicely (commit bd9b902798ab).

Yours,
Linus Walleij
