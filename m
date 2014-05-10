Return-Path: <preeti@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4C46F681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 17:03:38 +0000 (UTC)
Received: from e39.co.us.ibm.com (e39.co.us.ibm.com [32.97.110.160])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 957321F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 17:03:37 +0000 (UTC)
Received: from /spool/local
	by e39.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<preeti@linux.vnet.ibm.com>; Sat, 10 May 2014 11:03:36 -0600
Received: from b03cxnp08028.gho.boulder.ibm.com
	(b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
	by d03dlp03.boulder.ibm.com (Postfix) with ESMTP id D7F1B19D8039
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 11:03:26 -0600 (MDT)
Received: from d03av04.boulder.ibm.com (d03av04.boulder.ibm.com [9.17.195.170])
	by b03cxnp08028.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s4AH3WX960424432
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 19:03:32 +0200
Received: from d03av04.boulder.ibm.com (loopback [127.0.0.1])
	by d03av04.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s4AH3V9J007606 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 10 May 2014 11:03:32 -0600
Message-ID: <536E5ADE.4070106@linux.vnet.ibm.com>
Date: Sat, 10 May 2014 22:29:10 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
MIME-Version: 1.0
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
	<53692127.7040603@linux.vnet.ibm.com>
	<1664398.kOfsDrBujV@vostro.rjw.lan>
In-Reply-To: <1664398.kOfsDrBujV@vostro.rjw.lan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

On 05/08/2014 06:28 PM, Rafael J. Wysocki wrote:
>>
>> The advantage of having the concept of profiles is as Dave mentions,if
>> the user chooses a specific tuned profile, *multiple sub-system settings
>> can be taken care of in one place*. The profile could make way for
>> cpufreq, cpuidle, scheduler, device driver settings provided each of
>> these expose parameters which allow tuning of their decisions. So to
>> answer your question of if device drivers must probe the user settings,
>> I don't think so. These profiles can set the required driver parameters
>> which should automatically then kick in?
> 
> That's something I was thinking about too, but the difficulty here is in
> how to define the profiles (that is, what settings in each subsystem are
> going to be affected by a profile change) and in deciding when to switch
> profiles and which profile is the most appropriate going forward.
> 
> IOW, the high-level concept looks nice, but the details of the implementation
> are important too. :-)

I was thinking something as elementary as a powersave profile,
performance profile and balanced profile. The default should be balanced
profile where runtime pm of all devices kick in. The powersave profile
has conservative pm; a static powersave mode. The performance profile
has zero latency tolerance; no power management.

The kernel will remain in balanced profile unless the user changes his
choice of profile. In balanced profile, the behaviour of the
participating sub-systems should be
1.monitor load/relevant metric
2. Adjust device settings in a cycle.

> 
>> Today cpuidle and cpufreq already expose these settings through
>> governors.
> 
> cpufreq governors are kind of tied to specific "energy efficiency" profiles,
> performance, powersave, on-demand.  However, cpuidle governors are rather
> different in that respect.
> 
>> I am also assuming device drivers have scope for tuning their
>> functions through some such user exposed parameters. Memory can come
>> under this ambit too. Now lets consider scheduler which is set to join
>> this league.
>>    We could discuss and come up with some suitable parameters like
>> discrete levels of Perf/Watt which will allow the scheduler to take
> 
> I prefer the amout of work per energy unit to perf/Watt (which is the same
> number BTW), but that's just a detail.

Right. It makes it clearer.
> 
>> appropriate decisions. (Of course we will need to work on this decision
>> making part of the scheduler.) So the tuned profiles could further
>> include the scheduler settings as well.
>>
>> The point is that, profiles is a nice way of allowing the user to make
>> his choices. If he does not want to put in too much effort apart from
>> making a choice of profile, he can simply switch the currently active
>> profile to the one that meets his goal and not bother about the settings
>> it is doing internally. If he instead wants to have more fine grained
>> control over the settings, he can create a custom profile deriving out
>> of the existing tuned profiles.
>>
>> Look at an example for a tuned profile for performance:
>> start() gets called when the profile is switched to and stop() when its
>> turned off. We could include the scheduling parameters in the profile
>> when we come up with the set of them.
>>
>>  start() {
>>      [ "$USB_AUTOSUSPEND" = 1 ] && enable_usb_autosuspend
>>      set_disk_alpm min_power
>>      enable_cpu_multicore_powersave
>>      set_cpu_governor ondemand
>>      enable_snd_ac97_powersave
>>      set_hda_intel_powersave 10
>>      enable_wifi_powersave
>>      set_radeon_powersave auto
>>      return 0
>>  }
>>
>>  stop() {
>>      [ "$USB_AUTOSUSPEND" = 1 ] && disable_usb_autosuspend
>>      set_disk_alpm max_performance
>>      disable_cpu_multicore_powersave
>>      restore_cpu_governor
>>      restore_snd_ac97_powersave
>>      restore_hda_intel_powersave
>>      disable_wifi_powersave
>>      restore_radeon_powersave
>>      return 0
>>  }
> 
> You seem to think that user space would operate those profiles, but the
> experience so far is that user space is not actually good at doing things
> like that.  We have exposed a number of PM-related knobs to user space,
> but in may cases it actively refuses to use them (we have dropped a couple
> of them too for this very reason).
> 
> This means expecting user space *alone* to do the right thing and tell the
> kernel what to do next with the help of all of the individual knobs spread
> all over the place is not entirely realistic in my view.
> 
> Yes, I think there should be ways for user space to indicate what its
> current preference (or policy if you will) is, but those should be
> relatively simple and starightforward to use.
> 
> For example, we have a per-device knob that user space can use to indicate
> whether or not runtime PM should be used for the devices, if available.
> As a result, if a user wants to enable runtime PM for all devices, she or
> he has to go through all of them and switch the knob for each one individually,
> which it would be easier to use a common big switch for that.  And that big
> switch would be more likely to be actually used just because it is big
> and makes a big difference.

I agree. You are right, it is absurd to rely on user space to make fine
grained settings and the kernel to completely rely on it for its system
wide energy management decisions. So as I mentioned above and as you
state too we should have a big switch between three levels: perf,
powersave and balanced.

> 
>>> It doesn't seem to be clear currently what level and scope of such
>> interfaces
>>> is appropriate and where to place them.  Would a global knob be
>> useful?  Or
>>> should they be per-subsystem, per-driver, per-task, per-cgroup etc?
>>
>> A global knob would be useful in the case where the user chooses
>> performance policy for example. It means he expects the kernel to
>> *never* sacrifice performance for powersave. Now assume that a set of
>> tasks is running on 4 cpus out of 10. If the user has chosen performance
>> policy, *none of the 10 cpus should enter deep idle states* lest they
>> affect the latency of the tasks. Here a global knob would do well.
>>
>> For less aggressive policies like balanced policy, a per-task policy
>> would do very well. Assume the above same scenario, we would want to
>> disable deep idle states only for those 4 cpus that we are running on
>> and allow the remaining 6 to enter deep idle states. Of course this
>> would mean that if the task gets scheduled on one of those 6, it would
>> take a latency hit, but only initially. The per-task knob would then
>> prevent that cpu from entering deep idle states henceforth. Or we could
>> use cgroups to prevent even such a thing from happening and make it a
>> per-cgroup knob if even the initial latency hit cannot be tolerated.
> 
> I'm still seeing a problem with mixing tasks with different "energy"
> settings.  If there are "performance" and "energy friendly" tasks to
> run at the same time, it is not particularly clear how to the load
> balancer should handle them, for one example.

By per-task what I meant was the cpu that the task is running on should
adjust the choice of idle states and frequency to run on depending on
the latency requirement of the task. The load balancer will not behave
any differently.
   When a latency intolerant task is run on a cpu, whichever it might
be, the cpuidle governor will disable deep idle states on that cpu or
run the cpu at turbo mode say. Of course there is more to this than such
a simplistic view. But just to convey an idea I had in mind about the
advantage of per-task policy.
> 
> What you're suggesting seems to be to start with the "levels" that are
> defined currently, by cpufreq governors for one example, and then to add
> more over time as needed.  Is that correct?

Thats right.

Regards
Preeti U Murthy
> 
> 
