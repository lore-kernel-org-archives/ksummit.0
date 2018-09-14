Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B2A76C49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Sep 2018 08:09:12 +0000 (UTC)
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 60AAF782
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Sep 2018 08:09:12 +0000 (UTC)
Received: by mail-it0-f67.google.com with SMTP id u13-v6so1484157iti.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Sep 2018 01:09:12 -0700 (PDT)
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
	<CACRpkdbJFZ+SkCY4QJwhbO+moyNpSVA1SjNozNxLdzHmBJQA1w@mail.gmail.com>
	<CAMuHMdX3w1M8PyFZbym0f-_we9y6uw3tW6ep7m4kmfsyWfr74Q@mail.gmail.com>
In-Reply-To: <CAMuHMdX3w1M8PyFZbym0f-_we9y6uw3tW6ep7m4kmfsyWfr74Q@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Sep 2018 10:08:57 +0200
Message-ID: <CACRpkdakjMQQ8Zxp89uhQgUKLYmPHLAkrNNtp=omu2e6CusA4A@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
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

On Fri, Sep 14, 2018 at 9:39 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Fri, Sep 14, 2018 at 9:08 AM Linus Walleij <linus.walleij@linaro.org> wrote:

> > However one piece that got merged at this turbulent time
> > was the GPIO sysfs ABI which in my opinion
> > was not very nice. The main problem was that it exposed
> > kernel internals (the global GPIO numberspace) to the whole
> > world and made them semi-ABI which is really tricky to
> > maintain in the long run. It probably didn't seem like a big
> > problem at the time and GPIO was seen as obscure. But
> > it has created a major maintenance headache, and I imagine
> > that an active maintainer would have come up with something
> > a bit different.
>
> While we do miss David Brownell, I think there are some errors in your
> timeline. Commit d8f388d8dc8d4f36 ("gpio: sysfs interface") was authored
> by David himself.

Sigh yeah git history never lies, things were wrong in my head ... :/

It would nevertheless have been nice to have him
around to explain how this was thought out. Possibly I would
have been told off and discouraged to remove the sysfs
ABI at all.

IIRC I asked some of the other people of this commit at one
point what the ideas was, and the answer was "we just needed
something to control GPIOs from userspace".

Yours,
Linus Walleij
