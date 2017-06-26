Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 86C08A82
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 11:49:36 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6FA573D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 11:49:35 +0000 (UTC)
Date: Mon, 26 Jun 2017 04:49:31 -0700
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170626114931.GG23064@atomide.com>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626064947.GF23064@atomide.com> <20170626111207.GA11688@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170626111207.GA11688@amd>
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

* Pavel Machek <pavel@ucw.cz> [170626 04:12]:
> On Sun 2017-06-25 23:49:47, Tony Lindgren wrote:
> > * NeilBrown <neilb@suse.com> [170625 16:56]:
> > > On Sun, Jun 25 2017, Pavel Machek wrote:
> > > > Situation around mobile phones is only improving very slowly. We now
> > > > have hardware that is supported in the mainline kernel in useful way
> > > > (Mitac Mio A701, Nokia N900, N9, N950). Graphics acceleration is still
> > > > missing.
> > 
> > Also droid 4 should be getting there eventually too with 3G data working
> > and audio driver in progress.
> 
> Yes, good luck with Droid 4 getting there. 

Well actually it's sort of already there for some use cases as it's been
usable for me for about a month as a low-power laptop/ssh terminal with
Linux next and lapdock or hdmi dock :) Typing away with kernel
4.12.0-rc6-next-20170622 right now.

> > > > But there are major pieces missing: first is userspace. That's not for
> > > > us to solve. Then there's some kind of hardware abstraction layer;
> > > > kernel currently does NOT provide enough information for userland to
> > > > autoconfigure everything.
> > > >
> > > > There are big questions about kernel / user interface. We have whole
> > > > subsystems missing. They include:
> > > >
> > > > 1) Who is responsible for shutting machine down on low battery, and
> > > > not bringing it up unless safe?
> > > 
> > > My laptop hibernates when the battery level gets too low. Why should a
> > > phone be any different?  User-space monitoring and policy seems a
> > > suitable answer.
> > 
> > Some of the battery monitors actually have a low battery and almost
> > empty battery interrupts that can be used to do orderly_reboot().
> > 
> > If no interrupts exist, we should probably have kernel based
> > low voltage monitoring and batteryd/libbattery as documented in
> > Documentation/power/power_supply_class.txt.
> > 
> > The reason why I think we need kernel based voltage monitoring for is
> > that some devices may need a higher voltage for the MMC file system
> > for example while the rest of the system could still keep running with
> > a lower voltage and file system corruption can happen.
> > 
> > Maybe setting up the battery as a regulator for the drivers would
> > be the simplest solution to allow drivers to do something when the
> > battery voltage is low enough?
> 
> Well, I agree that kernel should handle this somehow, but I don't
> believe drivers should monitor the voltage themselves. We are talking
> about battery voltages below 3.6V, right? At that point, we are
> already damaging the battery, and the battery is "soft" meaning
> voltage will vary with load a lot. Just because voltage was 3.31V few
> miliseconds before does not mean it is not be 3.1V now.

Sure and yes below 3.6V in the MMC case.

> We are already damaging the battery, and I believe right solution is
> to either shut down or put the machine into deep sleep, and wait for
> power to be reapplied. 

Yeah probably should be configurable based on some policy.

> > > > Plus of course, there's a lot of work to be done to get different
> > > > phones supported.
> > 
> > Yeah it's the typical Linux kernel popularity contest where the devices
> > that people use get (and should get) more support. We've already seen
> > who little the vendors care about upstreaming support for their
> > devices, probably no easy way around that.
> 
> Well, the problem seems to be two fold:
> 
> 1) very few phones have usable kernel support
> 
> (and it is not even clear how the ideal kernel support should look,
> because kernel/user interfaces are missing or inadequate)
>
> 2) normal distributions do not have support for phones
> 
> (-> testing is hard because you have to develop both kernel and
> userland tests, and motivation is low).

Yeah, there are use cases that are not handled that way
at all currently.

Personally I just stick to standard mainline kernel and standard
distros so problem solved for me by limiting my use cases..

Regards,

Tony
