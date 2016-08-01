Return-Path: <hannes@cmpxchg.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7429F932
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 15:46:46 +0000 (UTC)
Received: from gum.cmpxchg.org (gum.cmpxchg.org [85.214.110.215])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5BACA2D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 15:46:45 +0000 (UTC)
Date: Mon, 1 Aug 2016 11:46:39 -0400
From: Johannes Weiner <hannes@cmpxchg.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160801154639.GD7603@cmpxchg.org>
References: <20160725171142.GA26006@cmpxchg.org>
	<20160728185523.GA16390@cmpxchg.org>
	<1469742103.2324.9.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1469742103.2324.9.camel@HansenPartnership.com>
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

On Thu, Jul 28, 2016 at 05:41:43PM -0400, James Bottomley wrote:
> On Thu, 2016-07-28 at 14:55 -0400, Johannes Weiner wrote:
> > On Mon, Jul 25, 2016 at 01:11:42PM -0400, Johannes Weiner wrote:
> > > Most recently I have been working on reviving swap for SSDs and
> > > persistent memory devices (https://lwn.net/Articles/690079/) as
> > > part
> > > of a bigger anti-thrashing effort to make the VM recover swiftly
> > > and
> > > predictably from load spikes.
> > 
> > A bit of context, in case we want to discuss this at KS:
> > 
> > We frequently have machines hang and stop responding indefinitely
> > after they experience memory load spikes. On closer look, we find 
> > most tasks either in page reclaim or majorfaulting parts of an 
> > executable or library. It's a typical thrashing pattern, where 
> > everybody cannibalizes everybody else. The problem is that with fast 
> > storage the cache reloads can be fast enough that there are never 
> > enough in-flight pages at a time to cause page reclaim to fail and 
> > trigger the OOM killer. The livelock persists until external
> > remediation reboots the
> > box or we get lucky and non-cache allocations eventually suck up the
> > remaining page cache and trigger the OOM killer.
> > 
> > To avoid hitting this situation, we currently have to keep a generous
> > memory reserve for occasional spikes, which sucks for utilization the
> > rest of the time. Swap would be useful here, but the swapout code is
> > basically only triggering when memory pressure rises - which again
> > doesn't happen - so I've been working on the swap code to balance
> > cache reclaim vs. swap based on relative thrashing between the two.
> > 
> > There is usually some cold/unused anonymous memory lying around that
> > can be unloaded into swap during workload spikes, so that allows us 
> > to drive up the average memory utilization without increasing the 
> > risk at least. But if we screw up and there are not enough unused 
> > anon pages, we are back to thrashing - only now it involves swapping
> > too.
> > 
> > So how do we address this?
> > 
> > A pathological thrashing situation is very obvious to any user, but
> > it's not quite clear how to quantify it inside the kernel and have it
> > trigger the OOM killer. It might be useful to talk about metrics. 
> > Could we quantify application progress? Could we quantify the amount 
> > of time a task or the system spends thrashing, and somehow express it 
> > as a percentage of overall execution time? Maybe something comparable 
> > to IO wait time, except tracking the time spent performing reclaim
> > and waiting on IO that is refetching recently evicted pages?
> > 
> > This question seems to go beyond the memory subsystem and potentially
> > involve the scheduler and the block layer, so it might be a good tech
> > topic for KS.
> 
> Actually, I'd be interested in this.  We're starting to generate use
> cases in the container cloud for swap (I can't believe I'm saying this
> since we hitherto regarded swap as wholly evil).  The issue is that we
> want to load the system up into its overcommit region (it means two
> things: either we're re-using under used resources or, more correctly,
> we're reselling resources we sold to one customer, but they're not
> using, so we can sell them to another).  From some research done within
> IBM, it turns out there's a region where swapping is beneficial.  We
> define it as the region where the B/W to swap doesn't exceed the B/W
> capacity of the disk (is this the metric you're looking for?).

That's an interesting take, I haven't thought about that. But note
that the CPU cost of evicting and refetching pages is not negligible:
even on fairly beefy machines we've seen significant CPU load when the
IO device hits saturation. With persistent memory devices you might
actually run out of CPU capacity while performing basic page aging
before you saturate the storage device (which is why Andi Kleen has
been suggesting to replace LRU reclaim with random replacement for
these devices). So storage device saturation might not be the final
answer to this problem.

> Our definition of progress is a bit different from yours above because
> the interactive jobs must respond as if they were near bare metal, so
> we penalise the soak jobs.  However, we find that the soak jobs also
> make reasonable progress according to your measure above (reasonable
> enough means the customer is happy to pay for the time they've used).

We actually are in the same boat, where most of our services are doing
work within the context of interactive user sessions. So in terms of
quantifying progress, both throughput and latency percentiles would be
necessary to form a full picture of whether we are beyond capacity.
