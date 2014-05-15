Return-Path: <preeti@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 43B8B4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 10:42:18 +0000 (UTC)
Received: from e8.ny.us.ibm.com (e8.ny.us.ibm.com [32.97.182.138])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C7B01F986
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 10:42:17 +0000 (UTC)
Received: from /spool/local
	by e8.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<preeti@linux.vnet.ibm.com>; Thu, 15 May 2014 06:42:16 -0400
Received: from b01cxnp23032.gho.pok.ibm.com (b01cxnp23032.gho.pok.ibm.com
	[9.57.198.27])
	by d01dlp03.pok.ibm.com (Postfix) with ESMTP id 42210C9004A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 06:42:09 -0400 (EDT)
Received: from d01av04.pok.ibm.com (d01av04.pok.ibm.com [9.56.224.64])
	by b01cxnp23032.gho.pok.ibm.com (8.13.8/8.13.8/NCO v10.0) with ESMTP id
	s4FAgEoB8847618 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 10:42:14 GMT
Received: from d01av04.pok.ibm.com (localhost [127.0.0.1])
	by d01av04.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	s4FAgDNk017246 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 06:42:14 -0400
Message-ID: <537498FC.6010006@linux.vnet.ibm.com>
Date: Thu, 15 May 2014 16:07:48 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
MIME-Version: 1.0
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
	<2FABAEF0D3DCAF4F9C9628D6E2F9684533B4DB65@BGSMSX102.gar.corp.intel.com>
	<5370FA68.6020100@linux.vnet.ibm.com>
	<1704878.GgvXpHngnm@vostro.rjw.lan>
In-Reply-To: <1704878.GgvXpHngnm@vostro.rjw.lan>
Content-Type: text/plain; charset=UTF-8
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

On 05/14/2014 05:06 AM, Rafael J. Wysocki wrote:
> On Monday, May 12, 2014 10:14:24 PM Preeti U Murthy wrote:
>> On 05/08/2014 08:27 PM, Iyer, Sundar wrote:
>>>> -----Original Message-----
>>>> From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksummit-
>>>> discuss-bounces@lists.linuxfoundation.org] On Behalf Of Rafael J.
>>>> Wysocki
>>>> Sent: Thursday, May 8, 2014 6:28 PM
>>>  
>>>> That's something I was thinking about too, but the difficulty here is in how to
>>>> define the profiles (that is, what settings in each subsystem are going to be
>>>> affected by a profile change) and in deciding when to switch profiles and
>>>> which profile is the most appropriate going forward.
>>>>
>>>> IOW, the high-level concept looks nice, but the details of the implementation
>>>> are important too. :-)
>>>
>>> I agree. Defining these profiles and trying to fit them into a system definition, 
>>> system usage policy and above all user usage policy is where the sticking point is.
>>>
>>>>> Today cpuidle and cpufreq already expose these settings through
>>>>> governors.
>>>>
>>>> cpufreq governors are kind of tied to specific "energy efficiency" profiles,
>>>> performance, powersave, on-demand.  However, cpuidle governors are
>>>
>>> I am not sure if that is correct. IMO Cpufreq governors function simply as per
>>> policies defined to meet user experience. A system may choose to sacrifice
>>> user experience @ the cost of running the CPU at the lowest frequency, but the
>>> governor has no idea if it was really energy efficient for the platform. Similarly,
>>
>> The governor will never know if it was energy efficient. It will only
>> take decisions from the data it has at its behest. And from the data
>> that is exposed by the platform, if it appears that running the cpus at
>> lowest frequency is the best bet to meet the system policy, it will do
>> so. It cannot do better than this IMO and as I pointed in the previous
>> mail this should be good enough too. Better than not having a governor no?
>>
>>> the governor might decide to run at a higher turbo frequency for better user
>>> responsiveness, but it still doesn't know if it was energy efficient running @ those
>>> frequencies. I am coming back to the point that energy efficiency is countable
>>> _only_ at the platform level: if it results in a longer battery life w/o needing to plug in.
>>
>> Not every profile above is catering to energy savings. The very fact
>> that the governor decided to run the cpus at turbo frequency means that
>> it not looking at energy efficiency but merely at short bursts of high
>> performance. This will definitely drop down battery life. But if the
>> user chose a profile where turbo mode is enabled it means he is ok with
>> these side effects.
> 
> You seem to be assuming a bit about the user.  Who may be a kid playing a game
> on his phone or tablet and having no idea what "turbo" is whatsoever. :-)
> 
>> We know certain general facts about cpu frequencies. Like running in
>> turbo mode would mean the cpus could possibly get throttled and lead to
>> eventual drop in performance. These are platform level. But having an
>> idea about these things help us design the algorithms in the kernel.
> 
> That I can agree with, but I wouldn't count on user input too much.
> 
> Of course, I'm for giving users who know what they are doing as much power
> as reasonably possible, but on the other hand they are not really likely
> to use that power, on the average at least.

Hmm..but then who helps the kernel in decisions like "should i spread
the load vs pack the load"? In an earlier attempt towards power aware
scheduler, a user policy would help it decide this.
  This time in addition to user policy or the user policy apart,
sufficient platform level details about the energy impact of spreading
vs packing should help the kernel decide. Is this what you are
suggesting with regard to the energy aware decisions by the kernel ?

> 
> [cut]
> 
>>>
>>> For this specific example, when you say the *user* has chosen the policy, do
>>> you mean a user space daemon that takes care of this or the application itself?
>>
>> I mean the "user"; i.e. whoever is in charge of deciding the system
>> policies. For virtualized systems it could be the system administrator
>> who could decide a specific policy for a VM. For laptops it is us, users.
> 
> What about phones, tablets, Android-based TV sets, Tizen-based watches??

In these cases I guess the kernel has to monitor the system by itself
and decide appropriately?
> 
>>> How are we going to know if we will really save energy by limiting deep idle states
>>> on all the 10 CPUs? Please help me understand this.
>>
>> We will not save energy by limiting idle states.By limiting idle states
>> we ensure that we do not affect the latency requirement of the task
>> running on the cpu.
> 
> OK, so now, to be a little more specific, how is the task supposed to specify
> that latency requirement?

Coming to think of it, a per task latency requirement is not making
sense for the following reason.

As long as a task is running on a cpu, the cpu will not enter any idle
state. The issue of latency comes up when the task sleeps. If the task
is guaranteed to wake up on the same cpu as that it slept on, we could
use the task latency requirement to decide the idle states that the cpu
could enter into.
   However in the scheduler today the task can wake up on *any cpu*. We
can't possibly disable the deep idle states on every cpu for this
reason. So looks like this needs more thought.

Regards
Preeti U Murthy

> 
> 
