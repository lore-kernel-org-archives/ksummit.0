Return-Path: <hannes@cmpxchg.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AA8AE92B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 16:55:45 +0000 (UTC)
Received: from gum.cmpxchg.org (gum.cmpxchg.org [85.214.110.215])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F8922C5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 16:55:44 +0000 (UTC)
Date: Mon, 1 Aug 2016 12:55:38 -0400
From: Johannes Weiner <hannes@cmpxchg.org>
To: Mel Gorman <mgorman@techsingularity.net>
Message-ID: <20160801165538.GE7603@cmpxchg.org>
References: <20160725171142.GA26006@cmpxchg.org>
	<20160728185523.GA16390@cmpxchg.org>
	<20160729110724.GD2799@techsingularity.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160729110724.GD2799@techsingularity.net>
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

On Fri, Jul 29, 2016 at 12:07:24PM +0100, Mel Gorman wrote:
> On Thu, Jul 28, 2016 at 02:55:23PM -0400, Johannes Weiner wrote:
> > To avoid hitting this situation, we currently have to keep a generous
> > memory reserve for occasional spikes, which sucks for utilization the
> > rest of the time. Swap would be useful here, but the swapout code is
> > basically only triggering when memory pressure rises - which again
> > doesn't happen - so I've been working on the swap code to balance
> > cache reclaim vs. swap based on relative thrashing between the two.
> 
> While we have active and inactive lists, they have no concept of time.
> Inactive may be "has not been used in hours" or "deactivated recently due to
> memory pressure". If we continually aged pages at a very slow rate (e.g. 1%
> of a node per minute) in the absense of memory pressure we could create a
> "unused" list without reclaiming it in the absense of pressure. We'd
> also have to scan 1% part of the unused list at the same time and
> reactivate pages if necessary.
>
> Minimally, we'd have a very rough estimate of the true WSS as a bonus.

I fear that something like this would get into the "hardcoded"
territory that Rik mentioned. 1% per minute might be plenty to
distinguish hot and cold for some workloads, and too coarse for
others.

For WSS estimates to be meaningful, they need to be based on a
sampling interval that is connected to the time it takes to evict a
page and the time it takes to refetch it. Because if the access
frequencies of a workload are fairly spread out, kicking out the
colder pages and refetching them later to make room for hotter pages
in the meantime might be a good trade-off to make - especially when
stacking multiple (containerized) workloads onto a single machine.

The WSS of a workload over its lifetime might be several times the
available memory, but what you really care about is how much time you
are actually losing due to memory being underprovisioned for that
workload. If the frequency spectrum is compressed, you might be making
almost no progress at all. If it's spread out, the available memory
might still be mostly underutilized.

We don't have a concept of time in page aging right now, but AFAICS
introducing one would be the central part in making WSS estimation and
subsequent resource allocation work without costly trial and error.

> > There is usually some cold/unused anonymous memory lying around that
> > can be unloaded into swap during workload spikes, so that allows us to
> > drive up the average memory utilization without increasing the risk at
> > least. But if we screw up and there are not enough unused anon pages,
> > we are back to thrashing - only now it involves swapping too.
> > 
> > So how do we address this?
> > 
> > A pathological thrashing situation is very obvious to any user, but
> > it's not quite clear how to quantify it inside the kernel and have it
> > trigger the OOM killer.
> 
> The OOM killer is at the extreme end of the spectrum. One unloved piece of
> code is vmpressure.c which we never put that much effort into.  Ideally, that
> would at least be able to notify user space that the system is under pressure
> but I have anecdotal evidence that it gives bad advice on large systems.

Bringing in the OOM killer doesn't preclude advance notification. But
severe thrashing *is* an OOM situation that can only be handled by
reducing the number of concurrent page references going on. If the
user can help out, that's great, but the OOM killer should still be
the last line of defense to bring the system back into a stable state.

> Essentially, we have four bits of information related to memory pressure --
> allocations, scans, steals and refaults. A 1:1:1 ratio of allocations, scans
> and steals could just be a streaming workload. The refaults distinguish
> between streaming and thrashing workloads but we don't use this for
> vmpressure calculations or OOM detection.

The information we have right now can tell us whether the workingset
is stable or not, and thus whether we should challenge the currently
protected pages or not. What we can't do is tell whether the thrashing
is an acceptable transition between too workingsets or a sustained
instability. The answer to that lies on a subjective spectrum.

Consider a workload that is accessing two datasets alternatingly, like
a database user that is switching back and forth between two tables to
process their data. If evicting one table and loading the other from
storage takes up 1% of the task's time, and processing the data the
other 99%, then we can likely provision memory such that it can hold
one table at a time. If evicting and reloading takes up 10% of the
time, it might still be fine; they might only care about latency while
the active table is loaded, or they might prioritize another job over
this one. If evicting and refetching consumes 95% of the task's time,
we might want to look into giving it more RAM.

So yes, with mm/workingset.c we finally have all the information to
unambiguously identify which VM events are due to memory being
underprovisioned. But we need a concept of time to put the impact of
these events into perspective. And I'm arguing that that perspective
is overall execution time of the tasks in the system (or container),
to calculate the percentage of time lost due to underprovisioning.

> > It might be useful to talk about
> > metrics. Could we quantify application progress?
> 
> We can at least calculate if it's stalling on reclaim or refaults. High
> amounts of both would indicate that the application is struggling.

Again: or transitioning.

> > Could we quantify the
> > amount of time a task or the system spends thrashing, and somehow
> > express it as a percentage of overall execution time?
> 
> Potentially if time spent refaulting or direct reclaiming was accounted
> for. What complicates this significantly is kswapd.

Kswapd is a shared resource, but memory is as well. Whatever concept
of time we can come up with that works for memory should be on the
same scope as kswapd. E.g. potentially available time slices in the
system (or container).

> > This question seems to go beyond the memory subsystem and potentially
> > involve the scheduler and the block layer, so it might be a good tech
> > topic for KS.
> 
> I'm on board anyway.

Great!
