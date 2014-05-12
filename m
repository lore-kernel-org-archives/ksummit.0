Return-Path: <amit.kucheria@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3741C979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 11:53:15 +0000 (UTC)
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 301882011A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 11:53:12 +0000 (UTC)
Received: by mail-vc0-f177.google.com with SMTP id if17so4081346vcb.36
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 04:53:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1998761.B2k0A5OtQR@vostro.rjw.lan>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
Date: Mon, 12 May 2014 17:23:11 +0530
Message-ID: <CAP245DV9U+L2D-LPHd-M=zuT_Jh2cuxXzo59-=GLbaMdfCjGeA@mail.gmail.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset=UTF-8
Cc: Len Brown <len.brown@intel.com>, ksummit-discuss@lists.linuxfoundation.org,
	Peter Zijlstra <peterz@infradead.org>,
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

On Tue, May 6, 2014 at 6:24 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> Hi All,
>
> During a recent discussion on linux-pm/LKML regarding the integration of the
> scheduler with cpuidle (http://marc.info/?t=139834240600003&r=1&w=4) it became
> apparent that the kernel might benefit from adding interfaces to let it know
> how far it should go with saving energy, possibly at the expense of performance.

Thanks for bringing this up Rafael.

It is clear that the energy-efficiency objective is a multi-level
problem that depends on the HW architecture and application running on
it. There is no single policy that is always correct even on a single
HW platform - we'll be able to come up with use-cases that'll break
our carefully crafted policies. So we need the kernel to provide
mechanisms to select specific optimisations for our platform and then
ways to bypass them at runtime in some use-cases.

> First of all, it would be good to have a place where subsystems and device
> drivers can go and check what the current "energy conservation bias" is in
> case they need to make a decision between delivering more performance and
> using less energy.  Second, it would be good to provide user space with

Drivers are always designed to go as fast as possible until there is
nothing to do and runtime PM kicks in. Do we really want drivers that
slow down file copy to the USB stick because we are on battery? Or
degrade audio/video quality to save power? The only usecase I can come
up with where this makes sense is the wifi connection where the driver
should perhaps throttle bitrates if the network isn't being used
actively. But that is a driver-internal decision.

Between generic power domains, runtime PM and pm-qos, we seem to have
infrastructure in place to allow subystems and drivers to influence
system behaviour. Is anything missing here? Or is it just a matter of
having a centralised location (scheduler?)to deal with all this input
from the system?

> a means to tell the kernel whether it should care more about performance or
> energy.  Finally, it would be good to be able to adjust the overall "energy
> conservation bias" automatically in response to certain "power" events such
> as "battery is low/critical" etc.

In most cases middleware such as Android power HAL, gnome power
manager or tuned will be the user here. These arbitrators consolidate
diverse user preferences and poke a few sysfs files to get the desired
behaviour, including preventing PeterZ's backlight from dimming when
he is on battery :) While I agree about exposing the knobs to the
middleware, I don't want to depend on it to setup everything correctly
- we need sane defaults in the kernel.

> It doesn't seem to be clear currently what level and scope of such interfaces
> is appropriate and where to place them.  Would a global knob be useful?  Or
> should they be per-subsystem, per-driver, per-task, per-cgroup etc?

One other thing I'd like to touch upon is privilege - who gets to turn
these knobs? If we're thinking per-process scope, we need a default
"no policy" to deal with app marketplaces where a rogue application
could run down your battery or worse burn your fingers.

> It also is not particularly clear what representation of "energy conservation
> bias" would be most useful.  Should that be a number or a set of well-defined
> discrete levels that can be given names (like "max performance", "high
> prerformance", "balanced" etc.)?  If a number, then what units to use and
> how many different values to take into account?

I have a hard time figuring out how to map these levels to performance
/ power optimisations I care about. Say I have the following
optimisation techniques available today that I can change at runtime.

#define XX_TASK_PACKING              0x00000001  /* opposite of the
default spread policy */
#define XX_DISABLE_OVERDRIVE    0x00000002  /* disables expensive P-states */
#define XX_FORCE_DEEP_IDLE        0x00000004  /* go to deep idle
states even if activity on system dictates low-latency idling - useful
for thermal throttling aka idle injection */
#define XX_FORCE_SHALLOW_IDLE 0x00000008  /* keep cpu in low-latency
idle states for performance reasons */
#define XX_FOO_TECHNIQUE           0x00000010

This is a mix of power and performance objectives that apply on a
per-cpu and/or per-cluster level. The challenge here is the lack of
consistency - some of these conflict with each other but are not
necessary opposites of each other. Some of them are good for
performance and power. How do I categorize them into 'max
performance', 'balanced' or 'power save' ?

> The people involved in the scheduler/cpuidle discussion mentioned above were:
>  * Amit Kucheria
>  * Ingo Molnar
>  * Daniel Lezcano
>  * Morten Rasmussen
>  * Peter Zijlstra
> and me, but I think that this topic may be interesting to others too (especially
> to Len who proposed a global "enefgy conservation bias" interface a few years ago).
>
> Please let me know what you think.

Again, thanks for bringing this up. This is an important interface discussion.

Regards,
Amit
