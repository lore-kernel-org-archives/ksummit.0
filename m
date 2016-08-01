Return-Path: <hannes@cmpxchg.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0650E959
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 18:19:36 +0000 (UTC)
Received: from gum.cmpxchg.org (gum.cmpxchg.org [85.214.110.215])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 48DBA14E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 18:19:34 +0000 (UTC)
Date: Mon, 1 Aug 2016 14:19:24 -0400
From: Johannes Weiner <hannes@cmpxchg.org>
To: Dave Hansen <dave@sr71.net>
Message-ID: <20160801181924.GA9408@cmpxchg.org>
References: <20160725171142.GA26006@cmpxchg.org>
	<20160728185523.GA16390@cmpxchg.org>
	<1469742103.2324.9.camel@HansenPartnership.com>
	<20160801154639.GD7603@cmpxchg.org>
	<1470067585.18751.24.camel@HansenPartnership.com>
	<579F74B4.1060302@sr71.net> <20160801170846.GA8584@cmpxchg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160801170846.GA8584@cmpxchg.org>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>, "Kleen,
	Andi" <andi.kleen@intel.com>, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Memory thrashing,
 was Re: Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 01, 2016 at 01:08:46PM -0400, Johannes Weiner wrote:
> On Mon, Aug 01, 2016 at 09:11:32AM -0700, Dave Hansen wrote:
> > On 08/01/2016 09:06 AM, James Bottomley wrote:
> > >>  With persistent memory devices you might actually run out of CPU 
> > >> > capacity while performing basic page aging before you saturate the 
> > >> > storage device (which is why Andi Kleen has been suggesting to 
> > >> > replace LRU reclaim with random replacement for these devices). So 
> > >> > storage device saturation might not be the final answer to this
> > >> > problem.
> > > We really wouldn't want this.  All cloud jobs seem to have memory they
> > > allocate but rarely use, so we want the properties of the LRU list to
> > > get this on swap so we can re-use the memory pages for something else. 
> > >  A random replacement algorithm would play havoc with that.
> > 
> > I don't want to put words in Andi's mouth, but what we want isn't
> > necessarily something that is random, but it's something that uses less
> > CPU to swap out a given page.
> 
> Random eviction doesn't mean random outcome of what stabilizes in
> memory and swap. The idea is to apply pressure on all pages equally
> but in no particular order, and then the in-memory set forms based on
> reference frequencies and refaults/swapins.

Anyway, this is getting a little off-topic.

I only brought up CPU cost to make the point that, while sustained
swap-in rate might be a good signal to unload a machine or reschedule
a job elsewhere, it might not be a generic answer to the question of
how much a system's overall progress is actually impeded due to
somebody swapping; or whether the system is actually in a livelock
state that requires intervention by the OOM killer.
