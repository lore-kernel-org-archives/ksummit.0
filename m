Return-Path: <preeti@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D30EA4D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:48:52 +0000 (UTC)
Received: from e35.co.us.ibm.com (e35.co.us.ibm.com [32.97.110.153])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8814720206
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:48:51 +0000 (UTC)
Received: from /spool/local
	by e35.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<preeti@linux.vnet.ibm.com>; Mon, 12 May 2014 10:48:51 -0600
Received: from b03cxnp08028.gho.boulder.ibm.com
	(b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id C565F1FF003F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:48:48 -0600 (MDT)
Received: from d03av06.boulder.ibm.com (d03av06.boulder.ibm.com [9.17.195.245])
	by b03cxnp08028.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s4CGmmMn7864708
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 18:48:48 +0200
Received: from d03av06.boulder.ibm.com (loopback [127.0.0.1])
	by d03av06.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVout) with ESMTP
	id s4CGqeqh001493 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:52:40 -0600
Message-ID: <5370FA68.6020100@linux.vnet.ibm.com>
Date: Mon, 12 May 2014 22:14:24 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
MIME-Version: 1.0
To: "Iyer, Sundar" <sundar.iyer@intel.com>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
	<53692127.7040603@linux.vnet.ibm.com>
	<1664398.kOfsDrBujV@vostro.rjw.lan>
	<2FABAEF0D3DCAF4F9C9628D6E2F9684533B4DB65@BGSMSX102.gar.corp.intel.com>
In-Reply-To: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4DB65@BGSMSX102.gar.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: "Brown, Len" <len.brown@intel.com>,
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

On 05/08/2014 08:27 PM, Iyer, Sundar wrote:
>> -----Original Message-----
>> From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksummit-
>> discuss-bounces@lists.linuxfoundation.org] On Behalf Of Rafael J.
>> Wysocki
>> Sent: Thursday, May 8, 2014 6:28 PM
>  
>> That's something I was thinking about too, but the difficulty here is in how to
>> define the profiles (that is, what settings in each subsystem are going to be
>> affected by a profile change) and in deciding when to switch profiles and
>> which profile is the most appropriate going forward.
>>
>> IOW, the high-level concept looks nice, but the details of the implementation
>> are important too. :-)
> 
> I agree. Defining these profiles and trying to fit them into a system definition, 
> system usage policy and above all user usage policy is where the sticking point is.
> 
>>> Today cpuidle and cpufreq already expose these settings through
>>> governors.
>>
>> cpufreq governors are kind of tied to specific "energy efficiency" profiles,
>> performance, powersave, on-demand.  However, cpuidle governors are
> 
> I am not sure if that is correct. IMO Cpufreq governors function simply as per
> policies defined to meet user experience. A system may choose to sacrifice
> user experience @ the cost of running the CPU at the lowest frequency, but the
> governor has no idea if it was really energy efficient for the platform. Similarly,

The governor will never know if it was energy efficient. It will only
take decisions from the data it has at its behest. And from the data
that is exposed by the platform, if it appears that running the cpus at
lowest frequency is the best bet to meet the system policy, it will do
so. It cannot do better than this IMO and as I pointed in the previous
mail this should be good enough too. Better than not having a governor no?

> the governor might decide to run at a higher turbo frequency for better user
> responsiveness, but it still doesn't know if it was energy efficient running @ those
> frequencies. I am coming back to the point that energy efficiency is countable
> _only_ at the platform level: if it results in a longer battery life w/o needing to plug in.

Not every profile above is catering to energy savings. The very fact
that the governor decided to run the cpus at turbo frequency means that
it not looking at energy efficiency but merely at short bursts of high
performance. This will definitely drop down battery life. But if the
user chose a profile where turbo mode is enabled it means he is ok with
these side effects.

We know certain general facts about cpu frequencies. Like running in
turbo mode would mean the cpus could possibly get throttled and lead to
eventual drop in performance. These are platform level. But having an
idea about these things help us design the algorithms in the kernel.

> 
>>> Look at an example for a tuned profile for performance:
>>> start() gets called when the profile is switched to and stop() when
>>> its turned off. We could include the scheduling parameters in the
>>> profile when we come up with the set of them.
>>>
>>>  start() {
>>>      [ "$USB_AUTOSUSPEND" = 1 ] && enable_usb_autosuspend
>>>      set_disk_alpm min_power
>>>      enable_cpu_multicore_powersave
>>>      set_cpu_governor ondemand
>>>      enable_snd_ac97_powersave
>>>      set_hda_intel_powersave 10
>>>      enable_wifi_powersave
>>>      set_radeon_powersave auto
>>>      return 0
>>>  }
>>>
>>>  stop() {
>>>      [ "$USB_AUTOSUSPEND" = 1 ] && disable_usb_autosuspend
>>>      set_disk_alpm max_performance
>>>      disable_cpu_multicore_powersave
>>>      restore_cpu_governor
>>>      restore_snd_ac97_powersave
>>>      restore_hda_intel_powersave
>>>      disable_wifi_powersave
>>>      restore_radeon_powersave
>>>      return 0
>>>  }
>>
>> You seem to think that user space would operate those profiles, but the
>> experience so far is that user space is not actually good at doing things like
>> that.  We have exposed a number of PM-related knobs to user space, but in
>> may cases it actively refuses to use them (we have dropped a couple of
>> them too for this very reason).
> 
> Please correct me if I am wrong, but items like wifi_powersave are something
> default on most systems especially with per-device runtime power management.
> Most devices are runtime managed and I don't see a strong reason to switch
> device policies as energy saving methods.

Hmm I am not aware of this. This was a sample tuned profile on Fedora
that I used as an example.

> 
>>> A global knob would be useful in the case where the user chooses
>>> performance policy for example. It means he expects the kernel to
>>> *never* sacrifice performance for powersave. Now assume that a set of
>>> tasks is running on 4 cpus out of 10. If the user has chosen
>>> performance policy, *none of the 10 cpus should enter deep idle
>>> states* lest they affect the latency of the tasks. Here a global knob would
>> do well.
> 
> For this specific example, when you say the *user* has chosen the policy, do
> you mean a user space daemon that takes care of this or the application itself?

I mean the "user"; i.e. whoever is in charge of deciding the system
policies. For virtualized systems it could be the system administrator
who could decide a specific policy for a VM. For laptops it is us, users.
> 
> How are we going to know if we will really save energy by limiting deep idle states
> on all the 10 CPUs? Please help me understand this.

We will not save energy by limiting idle states.By limiting idle states
we ensure that we do not affect the latency requirement of the task
running on the cpu.

Regards
Preeti U Murthy
> 
> Cheers!
> 
