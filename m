Return-Path: <preeti@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4EEA98AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 17:56:00 +0000 (UTC)
Received: from e35.co.us.ibm.com (e35.co.us.ibm.com [32.97.110.153])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6680B201BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 17:55:59 +0000 (UTC)
Received: from /spool/local
	by e35.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<preeti@linux.vnet.ibm.com>; Tue, 6 May 2014 11:55:59 -0600
Received: from b03cxnp08027.gho.boulder.ibm.com
	(b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id 8F3CB1FF003B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 11:55:55 -0600 (MDT)
Received: from d03av06.boulder.ibm.com (d03av06.boulder.ibm.com [9.17.195.245])
	by b03cxnp08027.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s46Ht6hj11403602
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 6 May 2014 19:55:06 +0200
Received: from d03av06.boulder.ibm.com (loopback [127.0.0.1])
	by d03av06.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVout) with ESMTP
	id s46HxiuT030664 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 6 May 2014 11:59:45 -0600
Message-ID: <53692127.7040603@linux.vnet.ibm.com>
Date: Tue, 06 May 2014 23:21:35 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
MIME-Version: 1.0
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
	ksummit-discuss@lists.linuxfoundation.org,
	Peter Zijlstra <peterz@infradead.org>,
	Morten Rasmussen <Morten.Rasmussen@arm.com>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
In-Reply-To: <1998761.B2k0A5OtQR@vostro.rjw.lan>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Len Brown <len.brown@intel.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
	Ingo Molnar <mingo@kernel.org>, Amit Kucheria <amit.kucheria@linaro.org>
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

Hi,

On 05/06/2014 06:24 PM, Rafael J. Wysocki wrote:
> Hi All,
>
> During a recent discussion on linux-pm/LKML regarding the integration
of the
> scheduler with cpuidle (http://marc.info/?t=139834240600003&r=1&w=4)
it became
> apparent that the kernel might benefit from adding interfaces to let
it know
> how far it should go with saving energy, possibly at the expense of
performance.
>
> First of all, it would be good to have a place where subsystems and device
> drivers can go and check what the current "energy conservation bias" is in
> case they need to make a decision between delivering more performance and
> using less energy.  Second, it would be good to provide user space with
> a means to tell the kernel whether it should care more about
performance or
> energy.  Finally, it would be good to be able to adjust the overall
"energy
> conservation bias" automatically in response to certain "power" events
such
> as "battery is low/critical" etc.

With respect to the point around user space being able to tell the
kernel what it wants I have the following idea.This is actually
extending what Dave quoted in his reply to this thread:

"
The advantage of moving to policy names vs frequencies also means that
we could use a single power saving policy for cpufreq, cpuidle, and
whatever else we come up with.

The scheduler might also be able to make better decisions if we maintain
separate lists for each policy-type, prioritizing performance over
power-save etc."

Tuned today exposes profiles like powersave, performance which set
kernel parameters, cpu-freq and cpu idle governors for these extreme use
cases. In powersave policy we do not worry about performance and vice
versa. However if one finds these as aggressive approaches to their
goals, there is balanced profile as well, which switches to powersave at
low load and to performance at high load. Even if latency sensitive
workloads run in this profile they will get hit only during the switch
from powersave to performance mode, but thereafter will get their way.

The advantage of having the concept of profiles is as Dave mentions,if
the user chooses a specific tuned profile, *multiple sub-system settings
can be taken care of in one place*. The profile could make way for
cpufreq, cpuidle, scheduler, device driver settings provided each of
these expose parameters which allow tuning of their decisions. So to
answer your question of if device drivers must probe the user settings,
I don't think so. These profiles can set the required driver parameters
which should automatically then kick in?

Today cpuidle and cpufreq already expose these settings through
governors. I am also assuming device drivers have scope for tuning their
functions through some such user exposed parameters. Memory can come
under this ambit too. Now lets consider scheduler which is set to join
this league.
   We could discuss and come up with some suitable parameters like
discrete levels of Perf/Watt which will allow the scheduler to take
appropriate decisions. (Of course we will need to work on this decision
making part of the scheduler.) So the tuned profiles could further
include the scheduler settings as well.

The point is that, profiles is a nice way of allowing the user to make
his choices. If he does not want to put in too much effort apart from
making a choice of profile, he can simply switch the currently active
profile to the one that meets his goal and not bother about the settings
it is doing internally. If he instead wants to have more fine grained
control over the settings, he can create a custom profile deriving out
of the existing tuned profiles.

Look at an example for a tuned profile for performance:
start() gets called when the profile is switched to and stop() when its
turned off. We could include the scheduling parameters in the profile
when we come up with the set of them.

 start() {
     [ "$USB_AUTOSUSPEND" = 1 ] && enable_usb_autosuspend
     set_disk_alpm min_power
     enable_cpu_multicore_powersave
     set_cpu_governor ondemand
     enable_snd_ac97_powersave
     set_hda_intel_powersave 10
     enable_wifi_powersave
     set_radeon_powersave auto
     return 0
 }

 stop() {
     [ "$USB_AUTOSUSPEND" = 1 ] && disable_usb_autosuspend
     set_disk_alpm max_performance
     disable_cpu_multicore_powersave
     restore_cpu_governor
     restore_snd_ac97_powersave
     restore_hda_intel_powersave
     disable_wifi_powersave
     restore_radeon_powersave
     return 0
 }

>
> It doesn't seem to be clear currently what level and scope of such
interfaces
> is appropriate and where to place them.  Would a global knob be
useful?  Or
> should they be per-subsystem, per-driver, per-task, per-cgroup etc?

A global knob would be useful in the case where the user chooses
performance policy for example. It means he expects the kernel to
*never* sacrifice performance for powersave. Now assume that a set of
tasks is running on 4 cpus out of 10. If the user has chosen performance
policy, *none of the 10 cpus should enter deep idle states* lest they
affect the latency of the tasks. Here a global knob would do well.

For less aggressive policies like balanced policy, a per-task policy
would do very well. Assume the above same scenario, we would want to
disable deep idle states only for those 4 cpus that we are running on
and allow the remaining 6 to enter deep idle states. Of course this
would mean that if the task gets scheduled on one of those 6, it would
take a latency hit, but only initially. The per-task knob would then
prevent that cpu from entering deep idle states henceforth. Or we could
use cgroups to prevent even such a thing from happening and make it a
per-cgroup knob if even the initial latency hit cannot be tolerated.

So having both per-task and global knobs may help depending on the profiles.
>
> It also is not particularly clear what representation of "energy
conservation
> bias" would be most useful.  Should that be a number or a set of
well-defined
> discrete levels that can be given names (like "max performance", "high
> prerformance", "balanced" etc.)?  If a number, then what units to use and
> how many different values to take into account?

Currently tuned has a good set of initial profiles. We could start with
them and add tunings which could be discrete values or could be policy
names depending on the sub-system. As for scheduler we could start with
with auto, power, performance and then move on to discrete values I guess.
>
> The people involved in the scheduler/cpuidle discussion mentioned
above were:
>  * Amit Kucheria
>  * Ingo Molnar
>  * Daniel Lezcano
>  * Morten Rasmussen
>  * Peter Zijlstra
> and me, but I think that this topic may be interesting to others too
(especially

I have been working on improving Energy management on PowerPC over the
last year. Specifically I have worked on extending the tick broadcast
framework in the kernel to support deep idle states and helped review
and improvise the cpufreq driver for PowerNV platforms.

https://lkml.org/lkml/2014/2/7/608
http://thread.gmane.org/gmane.linux.power-management.general/44175

Besides this I have been helping out in efforts to integrate cpuidle
with scheduler over the last year.

I wish to be a part of this discussion and look forward to sharing my
ideas on Energy management in the kernel. I am very interested in
bringing to the table, the challenges and solutions that we have on
PowerPC in the area of Energy Management. Please consider my
participation in this discussion.

Thank you

Regards
Preeti U Murthy

> to Len who proposed a global "enefgy conservation bias" interface a
few years ago).
>
> Please let me know what you think.
>
> Kind regards,
> Rafael
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
