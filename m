Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3C7465B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 07:18:40 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9CB791A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 07:18:39 +0000 (UTC)
Date: Tue, 27 Jun 2017 00:18:36 -0700
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170627071835.GJ23064@atomide.com>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626064947.GF23064@atomide.com> <20170626111207.GA11688@amd>
	<20170626114931.GG23064@atomide.com> <20170626131401.GA11980@amd>
	<20170626134904.GH23064@atomide.com> <20170626204932.GA19396@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170626204932.GA19396@amd>
Cc: Sebastian Reichel <sebastian.reichel@collabora.co.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

* Pavel Machek <pavel@ucw.cz> [170626 13:49]:
> HDMI is nice; that's a feature I'd like. And I guess you also have
> real and working USB host?

Yeah USB host works, so far only with battery VBUS so unable to power
all devices. I think there's a proper VBUS regulator too but I need to
look around more for it.

> Anyway I was interested... do you have useful X running on localhost?
> I mean... finger is too big to control X applications, and you have
> capacitive touchsreen, right?

I use i3 so I did not even note that right now atmel_mxt_ts no longer
works for me in next.. But yeah I can point to screens and activate
them. So far I have not needed anything more complex.

> Ah, thanks for the pointer. Built-in battery is very bad for
> debugging, and very bad when PM is not quite finished. But I remember
> droid4 was something that disqualified it for European use. Aha, LTE @
> 700MHz, which is not available here. Hmm, but GSM/UMTS works in v4.12
> according to the table, so that's not too bad.

Hmm the battery can be disconnected with t5.. And watchdog works.. But
we still need to somehow produce sysrq with power button + volume
down. In this case those are in separate drivers, gpio-keys for
volume down and then cpcap-pwrbutton. I'm also pretty sure the PMIC
supports powerdown on pressing down the power button some some seconds
but I have not found that bit so far :)

> Does ofonod support the modems in an useful way?

No idea, I've only used qmicli so far.

> Is GSM connected directly to the audio, or does it need real-time
> task, similar to N900?

The audio mixer is on CPCAP PMIC, and I think mdm6600 modem audio needs
help from the Linux kernel on the applications processor as it probably
goes to it first then to CPCAP PMIC. I guess it's possible that mdm6600
audio goes directly to CPCAP PMIC too.

I believe LTE modem is connected to the second SPI interface on the
CPCAP PMIC and can use it directly for audio depending on how Linux
kernel configures the PMIC secondary interface device access. What
seems to be a similar PMIC for the CPCAP internal devices is documented
in MC13783UG.pdf on NXP site so that might be worth looking at for
the audio overview.

> It looks like nice machine. OTOH N950 looks like a nice machine, too,
> and N900 is actually nicer because of the resistive touch, battery,
> and friendly bootloader...

Sure, my n950 just got so worn down I was afraid I don't have any
replacement. And we need some kind of potential community upgrade for
n900/n9/n950 anyways while waiting for better devices :)

Regards,

Tony
