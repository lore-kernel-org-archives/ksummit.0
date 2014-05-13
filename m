Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 33CFD70A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 22:58:03 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 17D0E201AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 22:58:01 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Morten Rasmussen <morten.rasmussen@arm.com>
Date: Wed, 14 May 2014 01:14:48 +0200
Message-ID: <18927107.3rlNmEK8uL@vostro.rjw.lan>
In-Reply-To: <20140512153234.GE23253@e103034-lin>
References: <20140512153234.GE23253@e103034-lin>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Monday, May 12, 2014 04:32:34 PM Morten Rasmussen wrote:
> Hi,

Hi,

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

I would be interested in participating in that discussion (which also is
related to the energy conservation bias interfaces KS topic proposed by
me).

Thanks!


> [1] http://lwn.net/Articles/571414/
> [2] http://etherpad.osuosl.org/energy-aware-scheduling-ks-2013
> [3] https://lkml.org/lkml/2014/1/7/355
> [4] https://lkml.org/lkml/2014/3/24/363
> [5] https://lkml.org/lkml/2014/1/7/503 

-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
