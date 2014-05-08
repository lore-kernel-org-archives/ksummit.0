Return-Path: <preeti@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 45B1D681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 09:14:09 +0000 (UTC)
Received: from e8.ny.us.ibm.com (e8.ny.us.ibm.com [32.97.182.138])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 303FF1FAA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 09:14:08 +0000 (UTC)
Received: from /spool/local
	by e8.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<preeti@linux.vnet.ibm.com>; Thu, 8 May 2014 05:04:04 -0400
Received: from b01cxnp22036.gho.pok.ibm.com (b01cxnp22036.gho.pok.ibm.com
	[9.57.198.26])
	by d01dlp02.pok.ibm.com (Postfix) with ESMTP id C98276E801C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 05:03:53 -0400 (EDT)
Received: from d01av01.pok.ibm.com (d01av01.pok.ibm.com [9.56.224.215])
	by b01cxnp22036.gho.pok.ibm.com (8.13.8/8.13.8/NCO v10.0) with ESMTP id
	s48941k09961752 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 8 May 2014 09:04:01 GMT
Received: from d01av01.pok.ibm.com (localhost [127.0.0.1])
	by d01av01.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	s4893xAm016014 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 8 May 2014 05:04:01 -0400
Message-ID: <536B477B.2030800@linux.vnet.ibm.com>
Date: Thu, 08 May 2014 14:29:39 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
MIME-Version: 1.0
To: "Iyer, Sundar" <sundar.iyer@intel.com>,
	Peter Zijlstra <peterz@infradead.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
In-Reply-To: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: "Brown, Len" <len.brown@intel.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>, Ingo Molnar <mingo@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On 05/07/2014 10:50 AM, Iyer, Sundar wrote:
>> -----Original Message-----
>> From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksummit-
>> discuss-bounces@lists.linuxfoundation.org] On Behalf Of Peter Zijlstra
> 
>>> (http://marc.info/?t=139834240600003&r=1&w=4) it became apparent that
> 
>>> First of all, it would be good to have a place where subsystems and
>>> device drivers can go and check what the current "energy conservation
>>> bias" is in case they need to make a decision between delivering more
>>> performance and using less energy.  Second, it would be good to
> 
> It might sound a stupid question, but isn't this entirely dependent on the platform?
> 
> A higher performance will translate into better energy only if the "race to halt" was
> true and the system/platform had a nice power/performance/energy curve. E.g. if the
> task got completed quicker enough (reduced t) to offset the most probably increased
> current consumption (increased i @ constant v).
> 
> Am I wrong? What would happen on a platform, where more performance means
> using more energy?

True that 'race to halt' also ends up saving energy. But when the kernel
goes conservative on energy, the scheduler would look at racing to idle
*within a power domain* as much as possible. Only if the load crosses a
certain threshold would it spread across to other power domains.

But if it is asked not to sacrifice on performance, it will more readily
spread across power domains.

These are general heuristics. These simple heuristics must work out for
most platforms but may not work for all. If it works for majority of the
cases then I believe we can safely call it a success.

> 
>>> provide user space with a means to tell the kernel whether it should
>>> care more about performance or energy.  Finally, it would be good to
>>> be able to adjust the overall "energy conservation bias" automatically
> 
> Instead of either energy or performance, would it be easier to look if
> it were a "just enough performance" metric? Rather than worry about a reduced
> performance to save energy, it would be IMO better to try to optimize the energy
> within the constraints of the required performance. Of course, those constraints
> could be changed.
> 
> e.g. if the display would communicate it doesn't need to refresh more than 60fps,
> this could be communicated to the GPU/CPU to control the bias for these sub-systems
> accordingly.

We don't really give the user a black and white choice like performance
and power-save alone. There is a proposal for 'auto' profile which
balances between the two.

To give an example where we already expose a parameter for defining
performance constraint is the PM_QOS_CPU_DMA_LATENCY, where we tell the
cpuidle sub-system that any idle state not adhering to this latency
requirement should not be entered into. So we are saying you cannot
sacrifice latency beyond this threshold. Here we look at powersavings
but within a said constraint.

The point is we will certainly look to provide the user with a mix and
match of powersave and performance profiles but to get started we begin
with powersave and performance.

> 
>>> in response to certain "power" events such as "battery is low/critical" etc.
> 
> Would I be wrong if I said the thermal throttling is already an example of this?
> When the battery is critical/temperature is unbearable, the system cuts down
> the performance of sub-systems like CPU, display etc.

Thermal throttling is an entirely different game altogether IMHO. We
throttle cpus to save the system from getting heated up and thus
damaged. That is to say if we don't do this, the system will become
unusable not just now, but forever.

However if you look at the example of switching to energy save mode when
battery is low, this is to give the user a better user experience. IOW
if we didn't do that the system would die down, the user would have to
plug in the power supply and restart the machine. It would have wasted
some of his time. But no harm done,only a dissatisfied user.

Now compare both the above scenarios: while the former should
necessarily be there if the platform has enabled turbo cpu frequency
ranges, the latter is an enhanced kernel behaviour to better end user
experience.

We already have safety mechanisms like thermal throttling in the kernel
and the platforms today. That is not where we lack. We lack in providing
a better end user experience depending on his requirement for power
efficiency.

> 
>> per-subsystem sounds right to me; I don't care which particular instance of
>> graphics cards I have, I want whichever one(s) I have to obey.
>>
>> global doesn't make sense, like stated earlier I absolutely detest automagic
>> backlight dimming, whereas I don't particularly care about compute speed at
>> all.
> 
> That calls for highly customized preferences for what to control: in most cases
> the dimmed backlight itself saves a considerable amount of energy which wouldn't
> be matched by a CPU (or a GPU) control. On a battery device, the first preference
> would be to dim out the screen but still allow the user a good battery life and 
> user experience.

Thats why I suggested the concept of profiles. If the user does not like
the existing system profiles, he can derive from one of them that comes
closes to his requirements and amend his preferences.

Regards
Preeti U Murthy
> 
> Cheers!
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
