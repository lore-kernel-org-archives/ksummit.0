Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9E294995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 12:41:26 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id D764D20193
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 12:41:24 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>
Date: Thu, 08 May 2014 14:58:04 +0200
Message-ID: <1664398.kOfsDrBujV@vostro.rjw.lan>
In-Reply-To: <53692127.7040603@linux.vnet.ibm.com>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
	<53692127.7040603@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Tuesday, May 06, 2014 11:21:35 PM Preeti U Murthy wrote:
> Hi,
> 
> On 05/06/2014 06:24 PM, Rafael J. Wysocki wrote:
> > Hi All,
> >
> > During a recent discussion on linux-pm/LKML regarding the integration
> of the
> > scheduler with cpuidle (http://marc.info/?t=139834240600003&r=1&w=4)
> it became
> > apparent that the kernel might benefit from adding interfaces to let
> it know
> > how far it should go with saving energy, possibly at the expense of
> performance.
> >
> > First of all, it would be good to have a place where subsystems and device
> > drivers can go and check what the current "energy conservation bias" is in
> > case they need to make a decision between delivering more performance and
> > using less energy.  Second, it would be good to provide user space with
> > a means to tell the kernel whether it should care more about
> performance or
> > energy.  Finally, it would be good to be able to adjust the overall
> "energy
> > conservation bias" automatically in response to certain "power" events
> such
> > as "battery is low/critical" etc.
> 
> With respect to the point around user space being able to tell the
> kernel what it wants I have the following idea.This is actually
> extending what Dave quoted in his reply to this thread:
> 
> "
> The advantage of moving to policy names vs frequencies also means that
> we could use a single power saving policy for cpufreq, cpuidle, and
> whatever else we come up with.
> 
> The scheduler might also be able to make better decisions if we maintain
> separate lists for each policy-type, prioritizing performance over
> power-save etc."

I generally agree with this.

> Tuned today exposes profiles like powersave, performance which set
> kernel parameters, cpu-freq and cpu idle governors for these extreme use
> cases. In powersave policy we do not worry about performance and vice
> versa. However if one finds these as aggressive approaches to their
> goals, there is balanced profile as well, which switches to powersave at
> low load and to performance at high load. Even if latency sensitive
> workloads run in this profile they will get hit only during the switch
> from powersave to performance mode, but thereafter will get their way.
> 
> The advantage of having the concept of profiles is as Dave mentions,if
> the user chooses a specific tuned profile, *multiple sub-system settings
> can be taken care of in one place*. The profile could make way for
> cpufreq, cpuidle, scheduler, device driver settings provided each of
> these expose parameters which allow tuning of their decisions. So to
> answer your question of if device drivers must probe the user settings,
> I don't think so. These profiles can set the required driver parameters
> which should automatically then kick in?

That's something I was thinking about too, but the difficulty here is in
how to define the profiles (that is, what settings in each subsystem are
going to be affected by a profile change) and in deciding when to switch
profiles and which profile is the most appropriate going forward.

IOW, the high-level concept looks nice, but the details of the implementation
are important too. :-)

> Today cpuidle and cpufreq already expose these settings through
> governors.

cpufreq governors are kind of tied to specific "energy efficiency" profiles,
performance, powersave, on-demand.  However, cpuidle governors are rather
different in that respect.

> I am also assuming device drivers have scope for tuning their
> functions through some such user exposed parameters. Memory can come
> under this ambit too. Now lets consider scheduler which is set to join
> this league.
>    We could discuss and come up with some suitable parameters like
> discrete levels of Perf/Watt which will allow the scheduler to take

I prefer the amout of work per energy unit to perf/Watt (which is the same
number BTW), but that's just a detail.

> appropriate decisions. (Of course we will need to work on this decision
> making part of the scheduler.) So the tuned profiles could further
> include the scheduler settings as well.
> 
> The point is that, profiles is a nice way of allowing the user to make
> his choices. If he does not want to put in too much effort apart from
> making a choice of profile, he can simply switch the currently active
> profile to the one that meets his goal and not bother about the settings
> it is doing internally. If he instead wants to have more fine grained
> control over the settings, he can create a custom profile deriving out
> of the existing tuned profiles.
> 
> Look at an example for a tuned profile for performance:
> start() gets called when the profile is switched to and stop() when its
> turned off. We could include the scheduling parameters in the profile
> when we come up with the set of them.
> 
>  start() {
>      [ "$USB_AUTOSUSPEND" = 1 ] && enable_usb_autosuspend
>      set_disk_alpm min_power
>      enable_cpu_multicore_powersave
>      set_cpu_governor ondemand
>      enable_snd_ac97_powersave
>      set_hda_intel_powersave 10
>      enable_wifi_powersave
>      set_radeon_powersave auto
>      return 0
>  }
> 
>  stop() {
>      [ "$USB_AUTOSUSPEND" = 1 ] && disable_usb_autosuspend
>      set_disk_alpm max_performance
>      disable_cpu_multicore_powersave
>      restore_cpu_governor
>      restore_snd_ac97_powersave
>      restore_hda_intel_powersave
>      disable_wifi_powersave
>      restore_radeon_powersave
>      return 0
>  }

You seem to think that user space would operate those profiles, but the
experience so far is that user space is not actually good at doing things
like that.  We have exposed a number of PM-related knobs to user space,
but in may cases it actively refuses to use them (we have dropped a couple
of them too for this very reason).

This means expecting user space *alone* to do the right thing and tell the
kernel what to do next with the help of all of the individual knobs spread
all over the place is not entirely realistic in my view.

Yes, I think there should be ways for user space to indicate what its
current preference (or policy if you will) is, but those should be
relatively simple and starightforward to use.

For example, we have a per-device knob that user space can use to indicate
whether or not runtime PM should be used for the devices, if available.
As a result, if a user wants to enable runtime PM for all devices, she or
he has to go through all of them and switch the knob for each one individually,
which it would be easier to use a common big switch for that.  And that big
switch would be more likely to be actually used just because it is big
and makes a big difference.

> > It doesn't seem to be clear currently what level and scope of such
> interfaces
> > is appropriate and where to place them.  Would a global knob be
> useful?  Or
> > should they be per-subsystem, per-driver, per-task, per-cgroup etc?
> 
> A global knob would be useful in the case where the user chooses
> performance policy for example. It means he expects the kernel to
> *never* sacrifice performance for powersave. Now assume that a set of
> tasks is running on 4 cpus out of 10. If the user has chosen performance
> policy, *none of the 10 cpus should enter deep idle states* lest they
> affect the latency of the tasks. Here a global knob would do well.
> 
> For less aggressive policies like balanced policy, a per-task policy
> would do very well. Assume the above same scenario, we would want to
> disable deep idle states only for those 4 cpus that we are running on
> and allow the remaining 6 to enter deep idle states. Of course this
> would mean that if the task gets scheduled on one of those 6, it would
> take a latency hit, but only initially. The per-task knob would then
> prevent that cpu from entering deep idle states henceforth. Or we could
> use cgroups to prevent even such a thing from happening and make it a
> per-cgroup knob if even the initial latency hit cannot be tolerated.

I'm still seeing a problem with mixing tasks with different "energy"
settings.  If there are "performance" and "energy friendly" tasks to
run at the same time, it is not particularly clear how to the load
balancer should handle them, for one example.

> So having both per-task and global knobs may help depending on the profiles.
> >
> > It also is not particularly clear what representation of "energy
> conservation
> > bias" would be most useful.  Should that be a number or a set of
> well-defined
> > discrete levels that can be given names (like "max performance", "high
> > prerformance", "balanced" etc.)?  If a number, then what units to use and
> > how many different values to take into account?
> 
> Currently tuned has a good set of initial profiles. We could start with
> them and add tunings which could be discrete values or could be policy
> names depending on the sub-system. As for scheduler we could start with
> with auto, power, performance and then move on to discrete values I guess.

What you're suggesting seems to be to start with the "levels" that are
defined currently, by cpufreq governors for one example, and then to add
more over time as needed.  Is that correct?


-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
