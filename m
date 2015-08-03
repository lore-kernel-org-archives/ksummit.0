Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4AE4B7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 04:59:03 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id DA079A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 04:59:02 +0000 (UTC)
Date: Mon, 3 Aug 2015 12:58:41 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Chris Mason <clm@fb.com>
Message-ID: <20150803045841.GB26601@wfg-t540p.sh.intel.com>
References: <20150715153725.GA12601@ret.masoncoding.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150715153725.GA12601@ret.masoncoding.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] benchmarking and performance
 trends
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 15, 2015 at 11:37:25AM -0400, Chris Mason wrote:
> Hi everyone,
> 
> I know I never get bored of graphs comparing old/new, but I feel guilty
> suggesting this one yet again.  Still, I think it's important for the
> people trying to push new kernels into production to have a chance to
> talk about the problems we've hit, and/or the changes that have made
> life easier.

I'm very interested in learning your experiences and problems, and
check whether they can be avoided in upstream kernel. So that
production systems like Facebook can upgrade kernels smoother in future.

> We're starting to push 4.0 into prod (122 hosts almost counts), and I'm
> sure we'll backport some wins from 4.2+.  I'm hoping to make this a
> collection point for other benchmarking war stories.  Our biggest gains
> right now are coming from scsi-mq, and early benchmarks show 4.2 has a
> boost that I'm hoping are from the futex locking improvements.

I can also share the performance trends in the data collected by 0day.
I'm afraid it'll be a bit negative because we cannot catchup with
writing new test cases to take advantage of the improvements in new
kernels.

Here is a comparison for a set of 988 test jobs.

                   v4.0    v4.1
-------------------------------
    perf-index      100      99  (the larger, the better)
   power-index      100      95
 latency-index      100      98
    size-index      100      98

The overall regressions also indicate 0day is not mature enough to
bisect all regressions in time and keep them from hitting mainline.

> It ties in a little with the new interfaces applications may be able to use
> (restartable sequences etc topic), and I want to ask the broad question of
> "are we doing enough to prevent performance regressions".

There are much to be desired in 0day POV.

- timeliness

The earlier regressions are caught, the better. Up to now kbuild is
doing reasonably well (mostly within 1 hour), however the runtime
tests -- boot, functional, performance/power/latency -- still have
obvious gaps (typically days long but sometimes may go up to weeks).

- coverage

Kbuild has achieved near 100% coverage (700 reports per month).
However runtime tests are far from enough (50 reports per month).

This is the area that needs collaborations throughout the community.
Developers in each subsystem -- mm, fs, network, rcu, sched, cgroup,
VM, drm, media, etc. -- may have versatile ways for testing his
subsystem or feature set:

- run some WORKLOAD to evaluate performance/power/latency/..

- SETUP the system in different ways to run tests
  eg. fs params, md/dm setup, cgroup, NUMA policy, CPU affinity, ..

- MONITOR various system metrics during the test run

If such knowledge and scripts can be shared and accumulated it'd be
valuable for other developers and testers, and will eventually help
overall linux kernel health.

Up to now 0day has collected a number of WORKLOAD, SETUP and MONITOR
scripts. They are public available here

https://git.kernel.org/cgit/linux/kernel/git/wfg/lkp-tests.git/

There are much more to be desired. Contribution of new scripts will be
highly appreciated.

We are especially in short of SETUP scripts. Good test schemes should
cover different combinations of SETUP+WORKLOAD and their parameters.
There are presumably a huge number of ways one can configure his
system, however most are beyond our imagination and test scope.

For MONITOR/WORKLOAD scripts, we borrowed some few nice scripts from
Mel's MMTests. phoronix, xfstests, autotest, kernel selftests etc.
test suites are also running routinely in 0day infrastructure. So if
you add new test case to one of them, there are good chances it'll be
pick up by 0day.

Thanks,
Fengguang
