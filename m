Return-Path: <mgorman@techsingularity.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4B08094F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 11:13:30 +0000 (UTC)
Received: from outbound-smtp05.blacknight.com (outbound-smtp05.blacknight.com
	[81.17.249.38])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B895C18A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 11:13:28 +0000 (UTC)
Received: from mail.blacknight.com (pemlinmail03.blacknight.ie [81.17.254.16])
	by outbound-smtp05.blacknight.com (Postfix) with ESMTPS id 6060898B34
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 11:07:26 +0000 (UTC)
Date: Fri, 29 Jul 2016 12:07:24 +0100
From: Mel Gorman <mgorman@techsingularity.net>
To: Johannes Weiner <hannes@cmpxchg.org>
Message-ID: <20160729110724.GD2799@techsingularity.net>
References: <20160725171142.GA26006@cmpxchg.org>
	<20160728185523.GA16390@cmpxchg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
In-Reply-To: <20160728185523.GA16390@cmpxchg.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Memory thrashing,
 was Re:  Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 28, 2016 at 02:55:23PM -0400, Johannes Weiner wrote:
> On Mon, Jul 25, 2016 at 01:11:42PM -0400, Johannes Weiner wrote:
> > Most recently I have been working on reviving swap for SSDs and
> > persistent memory devices (https://lwn.net/Articles/690079/) as part
> > of a bigger anti-thrashing effort to make the VM recover swiftly and
> > predictably from load spikes.
> 
> A bit of context, in case we want to discuss this at KS:
> 

Even if it's not a dedicated topic, I'm interested in talking about
this.

> We frequently have machines hang and stop responding indefinitely
> after they experience memory load spikes. On closer look, we find most
> tasks either in page reclaim or majorfaulting parts of an executable
> or library. It's a typical thrashing pattern, where everybody
> cannibalizes everybody else. The problem is that with fast storage the
> cache reloads can be fast enough that there are never enough in-flight
> pages at a time to cause page reclaim to fail and trigger the OOM
> killer. The livelock persists until external remediation reboots the
> box or we get lucky and non-cache allocations eventually suck up the
> remaining page cache and trigger the OOM killer.
> 

This is fundamental to how we current track (or not track) pressure.
Unreclaimable is defined as excessive scanning without a page being
reclaimed which is useless with fast storage. This triggers when there is
so many dirty/writeback pages that reclaim is impossible which indirectly
depends on storage being slow.

Sure, it can still happen if every page is being activated before reaching
the end of the inactive list but that is close to impossible with large
memory sizes.

> To avoid hitting this situation, we currently have to keep a generous
> memory reserve for occasional spikes, which sucks for utilization the
> rest of the time. Swap would be useful here, but the swapout code is
> basically only triggering when memory pressure rises - which again
> doesn't happen - so I've been working on the swap code to balance
> cache reclaim vs. swap based on relative thrashing between the two.
> 

While we have active and inactive lists, they have no concept of time.
Inactive may be "has not been used in hours" or "deactivated recently due to
memory pressure". If we continually aged pages at a very slow rate (e.g. 1%
of a node per minute) in the absense of memory pressure we could create a
"unused" list without reclaiming it in the absense of pressure. We'd
also have to scan 1% part of the unused list at the same time and
reactivate pages if necessary.

Minimally, we'd have a very rough estimate of the true WSS as a bonus.
If we could forcible pageout/swap the unused list, potentially ignoring
swappiness for anon pages. With monitoring, an admin would be able to
estimate how large a spike a system can handle without impact. A crucial
aspect would be knowing the average age of the unused list though and I've
no good idea right now how to calculate that.

We could side-step the time issue slightly by only adding pages to the
unused list during the "continual background aging" scan and never when
reclaiming. Continual background aging should also not happen if any process
is reclaiming. If we tagged the time the unused list gets its first page
and the time of the most recently added page, that would at least give
us a *very* approximate age of the list. That is flawed unfortunately if
the first page added gets reactivated but there a few different ways we
could approximate the age (e.g. unused 1 minute, unused 5 minutes, unused
30 minutes lists).

> There is usually some cold/unused anonymous memory lying around that
> can be unloaded into swap during workload spikes, so that allows us to
> drive up the average memory utilization without increasing the risk at
> least. But if we screw up and there are not enough unused anon pages,
> we are back to thrashing - only now it involves swapping too.
> 
> So how do we address this?
> 
> A pathological thrashing situation is very obvious to any user, but
> it's not quite clear how to quantify it inside the kernel and have it
> trigger the OOM killer.

The OOM killer is at the extreme end of the spectrum. One unloved piece of
code is vmpressure.c which we never put that much effort into.  Ideally, that
would at least be able to notify user space that the system is under pressure
but I have anecdotal evidence that it gives bad advice on large systems.

Essentially, we have four bits of information related to memory pressure --
allocations, scans, steals and refaults. A 1:1:1 ratio of allocations, scans
and steals could just be a streaming workload. The refaults distinguish
between streaming and thrashing workloads but we don't use this for
vmpressure calculations or OOM detection.

> It might be useful to talk about
> metrics. Could we quantify application progress?

We can at least calculate if it's stalling on reclaim or refaults. High
amounts of both would indicate that the application is struggling.

> Could we quantify the
> amount of time a task or the system spends thrashing, and somehow
> express it as a percentage of overall execution time?

Potentially if time spent refaulting or direct reclaiming was accounted
for. What complicates this significantly is kswapd.

> Maybe something
> comparable to IO wait time, except tracking the time spent performing
> reclaim and waiting on IO that is refetching recently evicted pages?
> 

Ideally, yes.

> This question seems to go beyond the memory subsystem and potentially
> involve the scheduler and the block layer, so it might be a good tech
> topic for KS.
> 

I'm on board anyway.

-- 
Mel Gorman
SUSE Labs
