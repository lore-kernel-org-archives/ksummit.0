Return-Path: <morten.rasmussen@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9C2DB942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 12:31:40 +0000 (UTC)
Received: from collaborate-mta1.arm.com (fw-tnat.austin.arm.com
	[217.140.110.23])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id DC85D2019D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 12:31:39 +0000 (UTC)
Date: Mon, 12 May 2014 13:31:34 +0100
From: Morten Rasmussen <morten.rasmussen@arm.com>
To: Amit Kucheria <amit.kucheria@linaro.org>
Message-ID: <20140512123134.GC5540@e103034-lin>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
	<CAP245DV9U+L2D-LPHd-M=zuT_Jh2cuxXzo59-=GLbaMdfCjGeA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP245DV9U+L2D-LPHd-M=zuT_Jh2cuxXzo59-=GLbaMdfCjGeA@mail.gmail.com>
Cc: Len Brown <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Mon, May 12, 2014 at 12:53:11PM +0100, Amit Kucheria wrote:
> On Tue, May 6, 2014 at 6:24 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> > a means to tell the kernel whether it should care more about performance or
> > energy.  Finally, it would be good to be able to adjust the overall "energy
> > conservation bias" automatically in response to certain "power" events such
> > as "battery is low/critical" etc.
> 
> In most cases middleware such as Android power HAL, gnome power
> manager or tuned will be the user here. These arbitrators consolidate
> diverse user preferences and poke a few sysfs files to get the desired
> behaviour, including preventing PeterZ's backlight from dimming when
> he is on battery :) While I agree about exposing the knobs to the
> middleware, I don't want to depend on it to setup everything correctly
> - we need sane defaults in the kernel.
> 
> > It doesn't seem to be clear currently what level and scope of such interfaces
> > is appropriate and where to place them.  Would a global knob be useful?  Or
> > should they be per-subsystem, per-driver, per-task, per-cgroup etc?
> 
> One other thing I'd like to touch upon is privilege - who gets to turn
> these knobs? If we're thinking per-process scope, we need a default
> "no policy" to deal with app marketplaces where a rogue application
> could run down your battery or worse burn your fingers.

The middleware power manager as you mention above seems to be a good
candidate. The kernel wouldn't know which tasks are trusted to behave
nicely so I think that is a user-space/middleware problem to deal with.

> 
> > It also is not particularly clear what representation of "energy conservation
> > bias" would be most useful.  Should that be a number or a set of well-defined
> > discrete levels that can be given names (like "max performance", "high
> > prerformance", "balanced" etc.)?  If a number, then what units to use and
> > how many different values to take into account?
> 
> I have a hard time figuring out how to map these levels to performance
> / power optimisations I care about. Say I have the following
> optimisation techniques available today that I can change at runtime.
> 
> #define XX_TASK_PACKING              0x00000001  /* opposite of the
> default spread policy */
> #define XX_DISABLE_OVERDRIVE    0x00000002  /* disables expensive P-states */
> #define XX_FORCE_DEEP_IDLE        0x00000004  /* go to deep idle
> states even if activity on system dictates low-latency idling - useful
> for thermal throttling aka idle injection */
> #define XX_FORCE_SHALLOW_IDLE 0x00000008  /* keep cpu in low-latency
> idle states for performance reasons */
> #define XX_FOO_TECHNIQUE           0x00000010
> 
> This is a mix of power and performance objectives that apply on a
> per-cpu and/or per-cluster level. The challenge here is the lack of
> consistency - some of these conflict with each other but are not
> necessary opposites of each other. Some of them are good for
> performance and power. How do I categorize them into 'max
> performance', 'balanced' or 'power save' ?

You can't. Since platforms are different, different techniques will have
different impacts on the performance/energy trade-off. As I have said in
the original thread, we need to distinguish between techniques to change
behaviour (like the ones you have listed above) and optimization goals.
Whether a specific technique can bring us closer to our current
optimization goal (performance/energy trade-off) depends on the
platform.

Instead of a static mapping between techniques and the power/energy knob
setting we need to give the kernel enough information about the system
topology and energy costs figure out which technique should be applied
to get closer to the goal. For example, if the kernel knows the wake-up
costs (energy) of the cpus and tracks task behaviour it should be able
to figure out whether it makes sense to apply task packing. Similarly,
if we know the energy-efficiency for the P-states, we can more try to
avoid them if they are really expensive.
