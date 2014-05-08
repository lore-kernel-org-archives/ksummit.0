Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0F881927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 12:13:12 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id E60D11FB51
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 12:13:10 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Peter Zijlstra <peterz@infradead.org>
Date: Thu, 08 May 2014 14:29:51 +0200
Message-ID: <3530193.D853G801VB@vostro.rjw.lan>
In-Reply-To: <20140506134909.GM11096@twins.programming.kicks-ass.net>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
	<20140506134909.GM11096@twins.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Len Brown <len.brown@intel.com>, ksummit-discuss@lists.linuxfoundation.org,
	Daniel Lezcano <daniel.lezcano@linaro.org>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH(CORE?) TOPIC] Energy conservation bias
	interfaces
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday, May 06, 2014 03:49:09 PM Peter Zijlstra wrote:
> 
> --2F7AbV2suvT8PGoH
> Content-Type: text/plain; charset=us-ascii
> Content-Disposition: inline
> Content-Transfer-Encoding: quoted-printable
> 
> On Tue, May 06, 2014 at 02:54:03PM +0200, Rafael J. Wysocki wrote:
> > Hi All,
> >=20
> > During a recent discussion on linux-pm/LKML regarding the integration of =
> the
> > scheduler with cpuidle (http://marc.info/?t=3D139834240600003&r=3D1&w=3D4=
> ) it became
> > apparent that the kernel might benefit from adding interfaces to let it k=
> now
> > how far it should go with saving energy, possibly at the expense of perfo=
> rmance.
> >=20
> > First of all, it would be good to have a place where subsystems and device
> > drivers can go and check what the current "energy conservation bias" is in
> > case they need to make a decision between delivering more performance and
> > using less energy.  Second, it would be good to provide user space with
> > a means to tell the kernel whether it should care more about performance =
> or
> > energy.  Finally, it would be good to be able to adjust the overall "ener=
> gy
> > conservation bias" automatically in response to certain "power" events su=
> ch
> > as "battery is low/critical" etc.
> >=20
> > It doesn't seem to be clear currently what level and scope of such interf=
> aces
> > is appropriate and where to place them.  Would a global knob be useful?  =
> Or
> > should they be per-subsystem, per-driver, per-task, per-cgroup etc?
> 
> per-task and per-cgroup doesn't seem to make sense to me; its the
> hardware that consumes energy.
> 
> per-subsystem sounds right to me; I don't care which particular instance
> of graphics cards I have, I want whichever one(s) I have to obey.
> 
> global doesn't make sense, like stated earlier I absolutely detest
> automagic backlight dimming, whereas I don't particularly care about
> compute speed at all.

Except that subsustems may not be as independent as they may seem to be.
Take the graphics and the CPU.  They may share thermal constraints, for
example, and other things like clocks and voltage regulators.

Per-subsystem settings may not be adequate in such cases.

> So while I might want a energy conserving bias for say the CPU and GPU,
> I most definitely don't want that to dim the screen.

That happens because user space has its own ideas about what's appropriate. :-)

The question here is whether or not we want the kernel to react to events
like "we're on battery now" or "battery is low" which are global.

So while knobs may be per subsystem, there needs to be some kind of coordination
it seems or at least a notification mechanism that the subsystems can subscribe
to.

> > It also is not particularly clear what representation of "energy conserva=
> tion
> > bias" would be most useful.  Should that be a number or a set of well-def=
> ined
> > discrete levels that can be given names (like "max performance", "high
> > prerformance", "balanced" etc.)?  If a number, then what units to use and
> > how many different values to take into account?
> 
> Yeah, fun.. we're not even sure how to make it do the 0,1 variants, and
> now you want a sliding scale to make it do in-betweens ;-)

Well, if we don't think we can do better that 0,1, that will be the choice
I guess. :-)

-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
