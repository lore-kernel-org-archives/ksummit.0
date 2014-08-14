Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 62FB88FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 15:03:13 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9FFDE2029C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 15:03:12 +0000 (UTC)
Date: Thu, 14 Aug 2014 23:01:52 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Davidlohr Bueso <davidlohr@hp.com>
Message-ID: <20140814150152.GA4597@localhost>
References: <5370DB7B.2040706@fb.com> <20140512235430.GA16440@thin>
	<1399941081.2648.51.camel@buesod1.americas.hpqcorp.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1399941081.2648.51.camel@buesod1.americas.hpqcorp.net>
Cc: Daniel Borkmann <dborkman@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Application performance: regressions,
 controlling preemption
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 05:31:21PM -0700, Davidlohr Bueso wrote:
> On Mon, 2014-05-12 at 16:54 -0700, Josh Triplett wrote:
> > On Mon, May 12, 2014 at 10:32:27AM -0400, Chris Mason wrote:
> > > Hi everyone,
> > > 
> > > We're in the middle of upgrading the tiers here from older kernels (2.6.38,
> > > 3.2) into 3.10 and higher.
> > > 
> > > I've been doing this upgrade game for a number of years now, with different
> > > business cards taped to my forehead and with different target workloads.
> > > 
> > > The result is always the same...if I'm really lucky the system isn't slower,
> > > but usually I'm left with a steaming pile of 10-30% regressions.
> > 
> > How automated are your benchmark workloads, how long do they take, and
> > how consistent are they from run to run (on a system running nothing
> > else)?  What about getting them into Fengguang Wu's automated patch
> > checker, or a similar system that checks every patch or pull rather than
> > just full releases?  If we had feedback at the time of patch submission
> > that a specific patch made the kernel x% slower for a specific
> > well-defined workload, that would prove much easier to act on than just
> > a comparison of 3.x and 3.y.
> 
> This sounds ideal, but reality is very very different.
> 
> Fengguang's scripts are quite nice and work for a number of scenarios,
> but cannot possibly cover everything.

Sorry for being late.. Yup, test coverage is a huge challenge and
I believe collaborations are the key to make substantial progresses.

Intel OTC has been running a LKP (Linux Kernel Performance) project
which does boot, functional, performance and power tests over the
community kernel git trees. Some diligent hackers (Hi Paul!) can
occasionally trigger our regression reports. We believe it could
potentially be a tool for more developers to evaluate performance/power
of their wip patches, in a more direct and manageable way.

So we are excited to share LKP test cases with the community in GPLv2:

  git clone git://git.kernel.org/pub/scm/linux/kernel/git/wfg/lkp-tests

It's still missing the documents part -- when ready, I'll make a
public announce in LKML. Basically it enables a kernel developer to
run LKP tests in his own test box and generate/compare test results
like this:

        https://lists.01.org/pipermail/lkp/2014-July/000324.html

The proc-vmstat, perf-profile, cpuidle, turbostat etc. "monitors" are
inspired by Mel Gorman's mmtests suite and they are really helpful in
catching&analyzing the subtle impacts a patch might bring to the system.

> And the regressions Chris mentions
> are quite common, depending what and where you're looking at. Just
> consider proprietary tools and benchmarks (ie: Oracle -- and no, I'm not
> talking about pgbench only). Or just about anything that's not synthetic
> and easy to setup (ie: Hadoop). Subtle architecture specific changes
> (ie: non x86) are also beyond this scope and can trigger major
> performance regressions. And even common benchmarks and systems such as
> aim7 (which I know Fengguang runs) and x86 can bypass the automated
> checks, just look at https://lkml.org/lkml/2014/3/17/587.
> There are just too many variables to control.

Yes, there are often the need to test combinations of parameters.
In LKP, we make it convenient to define "matrix" test jobs like:

fio:
  rw:
  - randwrite
  - randrw
  ioengine:
  - sync
  - mmap
  bs:
  - 4k
  - 64k

Which will be split into 2*2*2 unit jobs for execution.  For example,
the first unit job is:

fio:
  rw: randwrite
  ioengine: sync
  bs: 4k

> That said, I do agree that we could do better, and yeah, adding more
> workloads to Fengguang's scripts are always a good thing -- perhaps even
> adding stuff from perf-bench.

You are very welcome to add new cases, monitors or setup scripts!
Depending on their nature and resource requirement, we may choose
the adequate policy to run them in our LKP test infrastructure --
which works 7x24 on the fresh new code in 400+ kernel git trees. By
feeding it more test cases, we may reasonably safeguard more kernel
code and use scenarios from _silent_ regressions in future.

Thanks,
Fengguang
