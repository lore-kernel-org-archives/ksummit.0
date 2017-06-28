Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6469AA92
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 14:38:48 +0000 (UTC)
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 573BAA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 14:38:47 +0000 (UTC)
Received: by mail-it0-f41.google.com with SMTP id k192so2858765ith.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 07:38:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170625104850.GA24717@amd>
References: <20170625104850.GA24717@amd>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 28 Jun 2017 16:38:44 +0200
Message-ID: <CACRpkdYA6Tai+dAJ8Q2w_xEJonuDtHdUnTeJze_8JyX43KntPQ@mail.gmail.com>
To: Pavel Machek <pavel@ucw.cz>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

just annoying you all with my thoughts on $SUBJECT.

On Sun, Jun 25, 2017 at 12:48 PM, Pavel Machek <pavel@ucw.cz> wrote:

> Situation around mobile phones is only improving very slowly. We now
> have hardware that is supported in the mainline kernel in useful way
> (Mitac Mio A701, Nokia N900, N9, N950).

I have been trying to get the Qualcomm original DragonBoard working
with the mainline kernel. It is nice in this sense, because it has a
mobile phone(-ish) form-factor.
https://dflund.se/~triad/krad/dragonboard/

The problem I have in general, is that I got this development board
at DesignWest in 2012, and already the Qualcomm people are sort of
indicating to me that they consider the product so ancient that it is
questionable whether it is worth supporting it. Five years is an
eternity for the
business it seems, and I can feel they sometimes could remove their
thumb from the fast-forward button. At least for development boards
given to the community. It's dual-core Cortex A9 and GPU surely can run
the very latest Android if they wanted it to.

It would be nice if the Android (etc) mobile industry as a whole would be
able to do what Apple has actually been doing to a large extent: support
the very latest OS even on very (or quite) old devices. Let the lack in hardware
performance be the motivator to get new hardware, not the lack of
availability of the latest operating system, as is more often than not
the case for Android devices. Having upstream drivers and using the
kernel ABI as the hardware abstraction is the key to achieving that,
and it's weird this is so hard for some to see. Google definitely have
a role to play here.

(The above is also a security-related kernel update factor FWIW.)

> Graphics acceleration is still
> missing.

The GPU vendor mexican-standoff-farce is bound to become the
laughing stock of history. I would put my hopes to the reverse-engineered
drivers like Freedreno or the fine work from the etnaviv people.

> But there are major pieces missing: first is userspace. That's not for
> us to solve. Then there's some kind of hardware abstraction layer;
> kernel currently does NOT provide enough information for userland to
> autoconfigure everything.

I don't have the complete picture. It would be nice if vendors were at least
picking up the hardware abstraction we have. Like the IIO HAL for Android
that Intel has been developing for sensor support in Android. I don't understand
why this has simply not been picked up. The other Linux distros have picked
up Bastien Noceras work for IIO userspace integration (iio-sensor-proxy)
just fine.

> 1) Who is responsible for shutting machine down on low battery, and
> not bringing it up unless safe?

I guess this is discussed enough in the thread. But we have a bit of
maintenance problem in the battery framework: noone is working on
creating and/or maintaining a good framework for software-controlled
charging for what I can tell. There is a bunch of disparate hacky drivers
in the kernel for this purpose.

> 5) Do we need suspend-to-RAM to handle power management? If so, how
> can we handle automatic sleep an still be compatible with Unix?

There was some talk about using runtime PM. And runtime PM has improved
vastly recently.

When I tried using it with peripherals on simple slow buses like I2C or SPI
it turned out that noone had really even tried that before, because the core
concepts were wrong. But now it works.
c.f. the simple thing in drivers/iio/light/bh1780.c

I also used runtime PM in a whole slew of onchip peripherals and it works
fine. Ulf Hansson et al are working on improvements to use it also for
CPUs and clusters of CPUs IIRC.

> Plus of course, there's a lot of work to be done to get different
> phones supported.

I'd be happy if I could "just" compile and boot the latest kernel with
the latest AOSP (Android Open Source Project) on the Nokia n900 or
n950 and use it as a smartphone. I would even accept an out-of-tree
GPU driver since everything and its dog requires 3D acceleration these
days. Maybe it would nit even drain the battery in 5 minutes and that
would be GREAT.

As far as I know we not even close to anything like that. Or are there
people actually booting Android on these? Or any other phone form-factor
device running a mainline Linux+Android?

(Insert compulsory do-not-assume-Android, this other $MOBILE_OS
with 0.001% market share is so much more interesting-rant here.
I am talking about what mobile users realistically expects to be able
to run.)

Yours,
Linus Walleij
