Return-Path: <preeti@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 217974C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 10:07:04 +0000 (UTC)
Received: from e37.co.us.ibm.com (e37.co.us.ibm.com [32.97.110.158])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3410D1F986
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 10:07:02 +0000 (UTC)
Received: from /spool/local
	by e37.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<preeti@linux.vnet.ibm.com>; Thu, 15 May 2014 04:07:01 -0600
Received: from b03cxnp08027.gho.boulder.ibm.com
	(b03cxnp08027.gho.boulder.ibm.com [9.17.130.19])
	by d03dlp02.boulder.ibm.com (Postfix) with ESMTP id 8BE623E40044
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 04:06:58 -0600 (MDT)
Received: from d03av02.boulder.ibm.com (d03av02.boulder.ibm.com [9.17.195.168])
	by b03cxnp08027.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s4FA5wfI11469212
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 12:06:06 +0200
Received: from d03av02.boulder.ibm.com (localhost [127.0.0.1])
	by d03av02.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s4FA6P4v016793 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 04:06:25 -0600
Message-ID: <5374908B.8070603@linux.vnet.ibm.com>
Date: Thu, 15 May 2014 15:31:47 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
MIME-Version: 1.0
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Amit Kucheria <amit.kucheria@linaro.org>
References: <20140512153234.GE23253@e103034-lin>
	<53733EE4.4080605@linux.vnet.ibm.com>
	<20140514103717.GA20860@e102568-lin.cambridge.arm.com>
In-Reply-To: <20140514103717.GA20860@e102568-lin.cambridge.arm.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: Peter Zijlstra <peterz@infradead.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] Energy-aware Scheduling Workshop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Amit, Lorenzo,

On 05/14/2014 04:07 PM, Lorenzo Pieralisi wrote:
> Hi Preeti,
> 
> On Wed, May 14, 2014 at 11:01:08AM +0100, Preeti U Murthy wrote:
>> Hi Morten,
>>
>> Thank you for initiating this.
>>
>> On 05/12/2014 09:02 PM, Morten Rasmussen wrote:
>>> Hi,
>>>
>>> Last year's Energy-Aware Scheduling workshop [1,2] was a good
>>> opportunity for interested parties to discuss some of the open issues in
>>> this area face to face. While work is still ongoing on many of the
>>> topics that were discussed, it might be worth having workshop again this
>>> year to follow up, revise the plans if necessary, and discuss topics
>>> that were not covered last year.
>>>
>>> Before submitting a workshop proposal to the Ksummit PC I would like to
>>> probe the interest. IMO, it is important that we have scheduler
>>> maintainers present.
>>>
>>> Workshop topic proposals:
>>>
>>> Test cases
>>> Use-cases for high-end phones (which some of us care about) consist of
>>> rather complex software stacks which are not suitable for quick patch
>>> testing [3]. While we can't avoid testing using the full software stack
>>> in the end, it would be useful to have configurable micro-benchmarks for
>>> initial testing and to reproduce specific scheduling patterns from the
>>> full use-case for debugging purposes.
>>>
>>> Energy Evaluation
>>> A hot topic last year. We need a way to evaluate energy-awareness
>>> patches. Work has started on an idle state analysis tool [4], but we are
>>> not there yet.
>>>
>>
>> An interesting sub topic pertaining to evaluation would be deciding the
>> target residency of idle states. How do we know if the target residency
>> set for the different idle states is set optimally? The cpuidle governor
>> bases its decisions of the idle state to enter into based on numbers
>> such as these. If it is too stringent we would be hampering power savings.
>>
>> We could run different benchmarks with different degree of utilization.
>> And observe how much of the idle time is spent in different idle states.
>> If it is too less in a particular idle state we can up the target
>> residency of that idle state to begin with. This is static setting and
>> we hard code the target residency like now. Will a dynamic setting of
>> metrics like these help us in any way?
> 
> It might, as long as you are able to monitor energy in the kernel.
> target_residency is expressed in time, but must be evaluated in energy
> terms, it is a break-even point. It strictly depends on the dynamic state
> of the CPU when it goes idle, hence not really easy to factor in.
> 
> On ARM, it depends on a slew of factors, inclusive of the number of
> dirty caches lines (ie memory writebacks), running CPU frequency, memory
> frequency and the list goes on and on and on.
> 
> I am not even taking into account CPU idle states (C-states) whose power
> domains span devices such as GPUs.
> 
> It is certainly an interesting topic, I gave a presentation on this
> at Linaro Connect in 2013, I would be happy to share the results and debate
> it if I am able to attend.
> 
>> This was just an example to show that there are interesting problems
>> around "tuning" of power management metrics. It would be very helpful if
>> the maintainers relevant to this workshop guide us on this.
> 
> I would be certainly happy to explain to you how idle states work on ARM
> systems and the factors contributing to target_residency and other idle
> states parameters.

Thanks for sharing your ideas about this.

Lorenzo,
Sure I will be glad if we are able to meet to discuss this.

Amit,
I will take a look at idle stat and verify if I can use it for my purpose.

Regards
Preeti U Murthy
> 
> Thanks,
> Lorenzo
> 
