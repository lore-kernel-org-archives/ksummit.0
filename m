Return-Path: <preeti@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D055D48E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 10:06:30 +0000 (UTC)
Received: from e7.ny.us.ibm.com (e7.ny.us.ibm.com [32.97.182.137])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1839E1FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 10:06:29 +0000 (UTC)
Received: from /spool/local
	by e7.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<preeti@linux.vnet.ibm.com>; Wed, 14 May 2014 06:06:29 -0400
Received: from b01cxnp22033.gho.pok.ibm.com (b01cxnp22033.gho.pok.ibm.com
	[9.57.198.23])
	by d01dlp01.pok.ibm.com (Postfix) with ESMTP id 9FA2938C8046
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 06:06:27 -0400 (EDT)
Received: from d01av05.pok.ibm.com (d01av05.pok.ibm.com [9.56.224.195])
	by b01cxnp22033.gho.pok.ibm.com (8.13.8/8.13.8/NCO v10.0) with ESMTP id
	s4EA6JZC262542 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 10:06:27 GMT
Received: from d01av05.pok.ibm.com (localhost [127.0.0.1])
	by d01av05.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	s4EA5sWH013516 for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 06:05:55 -0400
Message-ID: <53733EE4.4080605@linux.vnet.ibm.com>
Date: Wed, 14 May 2014 15:31:08 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
MIME-Version: 1.0
To: Morten Rasmussen <morten.rasmussen@arm.com>
References: <20140512153234.GE23253@e103034-lin>
In-Reply-To: <20140512153234.GE23253@e103034-lin>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] Energy-aware Scheduling Workshop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Morten,

Thank you for initiating this.

On 05/12/2014 09:02 PM, Morten Rasmussen wrote:
> Hi,
> 
> Last year's Energy-Aware Scheduling workshop [1,2] was a good
> opportunity for interested parties to discuss some of the open issues in
> this area face to face. While work is still ongoing on many of the
> topics that were discussed, it might be worth having workshop again this
> year to follow up, revise the plans if necessary, and discuss topics
> that were not covered last year.
> 
> Before submitting a workshop proposal to the Ksummit PC I would like to
> probe the interest. IMO, it is important that we have scheduler
> maintainers present.
> 
> Workshop topic proposals:
> 
> Test cases
> Use-cases for high-end phones (which some of us care about) consist of
> rather complex software stacks which are not suitable for quick patch
> testing [3]. While we can't avoid testing using the full software stack
> in the end, it would be useful to have configurable micro-benchmarks for
> initial testing and to reproduce specific scheduling patterns from the
> full use-case for debugging purposes.
> 
> Energy Evaluation
> A hot topic last year. We need a way to evaluate energy-awareness
> patches. Work has started on an idle state analysis tool [4], but we are
> not there yet.
> 

An interesting sub topic pertaining to evaluation would be deciding the
target residency of idle states. How do we know if the target residency
set for the different idle states is set optimally? The cpuidle governor
bases its decisions of the idle state to enter into based on numbers
such as these. If it is too stringent we would be hampering power savings.

We could run different benchmarks with different degree of utilization.
And observe how much of the idle time is spent in different idle states.
If it is too less in a particular idle state we can up the target
residency of that idle state to begin with. This is static setting and
we hard code the target residency like now. Will a dynamic setting of
metrics like these help us in any way?

This was just an example to show that there are interesting problems
around "tuning" of power management metrics. It would be very helpful if
the maintainers relevant to this workshop guide us on this.

> Platform Performance/Energy data
> Currently the kernel has quite limited knowledge about energy costs of
> the platform where it is running. Without this information it is rather
> hard to make energy-efficient scheduling decisions. It seems that
> various energy-saving techniques don't work equally well on all
> platforms and might even depend on the use-case. Should we give the
> kernel enough information to construct a simple energy-model to guide
> decisions?
> 
> CPU utilization and cpu_power
> The entity load tracking has given us a much better indication of
> individual task loadi. However, priority scaling makes it less suitable
> for low load scenarios [5] where we care more about actual cpu
> utilization per task when trying to figure out an energy-efficient load
> balance. Do we need entity utilization tracking as well? Related to this
> topic is the representation of cpu compute capacity. The current
> representation, cpu_power, can't deal with heterogeneous systems
> correctly. Can we come up with a solution that can handle SMT, SMP, and
> heterogeneous systems?
> 
> 
> All comments and topic proposals are welcome.

I would be very interested in attending this workshop. We are currently
evaluating cpuidle and cpu-frequency subsystems on PowerPC. I look
forward to share and discuss the findings in this workshop.

Thanks!

Regards
Preeti U Murthy
> 
> Thanks,
> Morten
> 
> [1] http://lwn.net/Articles/571414/
> [2] http://etherpad.osuosl.org/energy-aware-scheduling-ks-2013
> [3] https://lkml.org/lkml/2014/1/7/355
> [4] https://lkml.org/lkml/2014/3/24/363
> [5] https://lkml.org/lkml/2014/1/7/503 
> 
