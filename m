Return-Path: <davidlohr@hp.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C736FA89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 00:31:24 +0000 (UTC)
Received: from g2t2352.austin.hp.com (g2t2352.austin.hp.com [15.217.128.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 30A732031A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 00:31:24 +0000 (UTC)
Message-ID: <1399941081.2648.51.camel@buesod1.americas.hpqcorp.net>
From: Davidlohr Bueso <davidlohr@hp.com>
To: Josh Triplett <josh@joshtriplett.org>
Date: Mon, 12 May 2014 17:31:21 -0700
In-Reply-To: <20140512235430.GA16440@thin>
References: <5370DB7B.2040706@fb.com> <20140512235430.GA16440@thin>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Mon, 2014-05-12 at 16:54 -0700, Josh Triplett wrote:
> On Mon, May 12, 2014 at 10:32:27AM -0400, Chris Mason wrote:
> > Hi everyone,
> > 
> > We're in the middle of upgrading the tiers here from older kernels (2.6.38,
> > 3.2) into 3.10 and higher.
> > 
> > I've been doing this upgrade game for a number of years now, with different
> > business cards taped to my forehead and with different target workloads.
> > 
> > The result is always the same...if I'm really lucky the system isn't slower,
> > but usually I'm left with a steaming pile of 10-30% regressions.
> 
> How automated are your benchmark workloads, how long do they take, and
> how consistent are they from run to run (on a system running nothing
> else)?  What about getting them into Fengguang Wu's automated patch
> checker, or a similar system that checks every patch or pull rather than
> just full releases?  If we had feedback at the time of patch submission
> that a specific patch made the kernel x% slower for a specific
> well-defined workload, that would prove much easier to act on than just
> a comparison of 3.x and 3.y.

This sounds ideal, but reality is very very different.

Fengguang's scripts are quite nice and work for a number of scenarios,
but cannot possibly cover everything. And the regressions Chris mentions
are quite common, depending what and where you're looking at. Just
consider proprietary tools and benchmarks (ie: Oracle -- and no, I'm not
talking about pgbench only). Or just about anything that's not synthetic
and easy to setup (ie: Hadoop). Subtle architecture specific changes
(ie: non x86) are also beyond this scope and can trigger major
performance regressions. And even common benchmarks and systems such as
aim7 (which I know Fengguang runs) and x86 can bypass the automated
checks, just look at https://lkml.org/lkml/2014/3/17/587.
There are just too many variables to control.

That said, I do agree that we could do better, and yeah, adding more
workloads to Fengguang's scripts are always a good thing -- perhaps even
adding stuff from perf-bench.

Thanks,
Davidlohr
