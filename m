Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 17218954
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 16:33:07 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 90C9A13B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 16:33:06 +0000 (UTC)
Message-ID: <1470069183.18751.35.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Dave Hansen <dave@sr71.net>, Johannes Weiner <hannes@cmpxchg.org>
Date: Mon, 01 Aug 2016 12:33:03 -0400
In-Reply-To: <579F74B4.1060302@sr71.net>
References: <20160725171142.GA26006@cmpxchg.org>
	<20160728185523.GA16390@cmpxchg.org>
	<1469742103.2324.9.camel@HansenPartnership.com>
	<20160801154639.GD7603@cmpxchg.org>
	<1470067585.18751.24.camel@HansenPartnership.com>
	<579F74B4.1060302@sr71.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "Kleen, Andi" <andi.kleen@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Mon, 2016-08-01 at 09:11 -0700, Dave Hansen wrote:
> On 08/01/2016 09:06 AM, James Bottomley wrote:
> > >  With persistent memory devices you might actually run out of CPU
> > > > capacity while performing basic page aging before you saturate
> > > > the 
> > > > storage device (which is why Andi Kleen has been suggesting to 
> > > > replace LRU reclaim with random replacement for these devices).
> > > > So 
> > > > storage device saturation might not be the final answer to this
> > > > problem.
> > We really wouldn't want this.  All cloud jobs seem to have memory 
> > they allocate but rarely use, so we want the properties of the LRU 
> > list to get this on swap so we can re-use the memory pages for 
> > something else.  A random replacement algorithm would play havoc
> > with that.
> 
> I don't want to put words in Andi's mouth, but what we want isn't
> necessarily something that is random, but it's something that uses 
> less CPU to swap out a given page.

OK, if it's more deterministic, I'll wait to see the proposal.

> All the LRU scanning is expensive and doesn't scale particularly
> well, and there are some situations where we should be willing to
> give up some of the precision of the current LRU in order to increase
> the throughput of reclaim in general.

Would some type of hinting mechanism work (say via madvise)? 
 MADV_DONTNEED may be good enough, but we could really do with
MADV_SWAP_OUT_NOW to indicate objects we really don't want.  I suppose
I can lose all my credibility by saying this would be the JVM: it knows
roughly the expected lifetime and access patterns and is well qualified
to mark objects as infrequently enough accessed to reside on swap.

I suppose another question is do we still want all of this to be page
based?  We moved to extents in filesystems a while ago, wouldn't some
extent based LRU mechanism be cheaper ... unfortunately it means
something has to try to come up with an idea of what an extent means (I
suspect it would be a bunch of virtually contiguous pages which have
the same expected LRU properties, but I'm thinking from the application
centric viewpoint).

James
