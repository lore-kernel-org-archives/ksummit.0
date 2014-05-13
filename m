Return-Path: <morten.rasmussen@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2F72848E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 09:59:40 +0000 (UTC)
Received: from collaborate-mta1.arm.com (fw-tnat.austin.arm.com
	[217.140.110.23])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 45A5D1F986
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 09:59:39 +0000 (UTC)
Date: Tue, 13 May 2014 10:59:29 +0100
From: Morten Rasmussen <morten.rasmussen@arm.com>
To: Amit Kucheria <amit.kucheria@linaro.org>
Message-ID: <20140513095929.GD5540@e103034-lin>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
	<CAP245DV9U+L2D-LPHd-M=zuT_Jh2cuxXzo59-=GLbaMdfCjGeA@mail.gmail.com>
	<20140512123134.GC5540@e103034-lin>
	<CAP245DXHnmSBnBdcKzuzFUCQc4Q5XpukenE3Zz+jSeB7Cd=_1g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP245DXHnmSBnBdcKzuzFUCQc4Q5XpukenE3Zz+jSeB7Cd=_1g@mail.gmail.com>
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

On Tue, May 13, 2014 at 06:52:01AM +0100, Amit Kucheria wrote:
> On Mon, May 12, 2014 at 6:01 PM, Morten Rasmussen
> <morten.rasmussen@arm.com> wrote:
> > On Mon, May 12, 2014 at 12:53:11PM +0100, Amit Kucheria wrote:
> >> On Tue, May 6, 2014 at 6:24 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> 
> <snip>
> 
> > The middleware power manager as you mention above seems to be a good
> > candidate. The kernel wouldn't know which tasks are trusted to behave
> > nicely so I think that is a user-space/middleware problem to deal with.
> >
> >>
> >> > It also is not particularly clear what representation of "energy conservation
> >> > bias" would be most useful.  Should that be a number or a set of well-defined
> >> > discrete levels that can be given names (like "max performance", "high
> >> > prerformance", "balanced" etc.)?  If a number, then what units to use and
> >> > how many different values to take into account?
> >>
> >> I have a hard time figuring out how to map these levels to performance
> >> / power optimisations I care about. Say I have the following
> >> optimisation techniques available today that I can change at runtime.
> >>
> >> #define XX_TASK_PACKING              0x00000001  /* opposite of the
> >> default spread policy */
> >> #define XX_DISABLE_OVERDRIVE    0x00000002  /* disables expensive P-states */
> >> #define XX_FORCE_DEEP_IDLE        0x00000004  /* go to deep idle
> >> states even if activity on system dictates low-latency idling - useful
> >> for thermal throttling aka idle injection */
> >> #define XX_FORCE_SHALLOW_IDLE 0x00000008  /* keep cpu in low-latency
> >> idle states for performance reasons */
> >> #define XX_FOO_TECHNIQUE           0x00000010
> >>
> >> This is a mix of power and performance objectives that apply on a
> >> per-cpu and/or per-cluster level. The challenge here is the lack of
> >> consistency - some of these conflict with each other but are not
> >> necessary opposites of each other. Some of them are good for
> >> performance and power. How do I categorize them into 'max
> >> performance', 'balanced' or 'power save' ?
> >
> > You can't. Since platforms are different, different techniques will have
> > different impacts on the performance/energy trade-off. As I have said in
> > the original thread, we need to distinguish between techniques to change
> > behaviour (like the ones you have listed above) and optimization goals.
> > Whether a specific technique can bring us closer to our current
> > optimization goal (performance/energy trade-off) depends on the
> > platform.
> 
> Right. So we are saying that state names like "powersave",
> "balanced/auto", "performance" will be platform-defined. Is it worth
> defining them at all then?

No. I see "powersave", "auto", and "balance/auto" as objectives.
Objectives are platform independent. If we want stay within a certain
energy budget, for example consume less than X joules for playing one
hour of music, we set the performance/energy knob accordingly. It is
then up to the kernel to apply the right techniques to achieve the
objective on the particular platform. That will of course mean that the
kernel needs to be better informed about the platform energy
characteristics than it is today.

It is really a question of where we want to put all the details about
the platform. In user-space and let some daemon control a long list of
kernel parameters, or in the kernel and have a simple objective
user-space interface where the performance/energy trade-off can be
tuned (like the energy cost target as Rafael proposed).

> I expect that these techniques can be counted on our fingers, so why
> not just expose them directly to the system? The middleware and even
> other kernel subsystems can directly toggle their state based on
> current conditions.

It might make sense for controlling subsystems like (GPU, wifi,
modem,...) as middleware should often have a very good idea about which
subsystems that are in use. However, the techniques for scheduling might
not be either on or off. For example, task packing might make sense to
a certain degree under certain circumstances that cannot been seen from
user-space. The scheduler has access to detailed task information like
load averages and wake-up counts, which might necessary to determine
when to apply a specific technique. Forcing deep idle to reduce power
could potentially have the exact opposite effect if applied in scenarios
with frequent wake-ups as you risk burning more energy during the
transitions than you save while in deep idle.

IMHO, exposing the techniques to user-space implies exporting most of
the energy-awarness problem to user-space. My concern is that the
interface will become complicated and the user-space daemon needs to be
strictly in sync with the kernel. A simple(r) objective interface
(energy cost target for scheduling/idle/freq, subsystems not in use,
...) might be easier use and maintain.
