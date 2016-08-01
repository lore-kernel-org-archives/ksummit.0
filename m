Return-Path: <dave@sr71.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3C181899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 19:51:46 +0000 (UTC)
Received: from blackbird.sr71.net (www.sr71.net [198.145.64.142])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D5E8F251
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 19:51:45 +0000 (UTC)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Johannes Weiner <hannes@cmpxchg.org>
References: <20160725171142.GA26006@cmpxchg.org>
	<20160728185523.GA16390@cmpxchg.org>
	<1469742103.2324.9.camel@HansenPartnership.com>
	<20160801154639.GD7603@cmpxchg.org>
	<1470067585.18751.24.camel@HansenPartnership.com>
	<579F74B4.1060302@sr71.net>
	<1470069183.18751.35.camel@HansenPartnership.com>
From: Dave Hansen <dave@sr71.net>
Message-ID: <579FA850.3020703@sr71.net>
Date: Mon, 1 Aug 2016 12:51:44 -0700
MIME-Version: 1.0
In-Reply-To: <1470069183.18751.35.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8
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

On 08/01/2016 09:33 AM, James Bottomley wrote:
>> All the LRU scanning is expensive and doesn't scale particularly
>> well, and there are some situations where we should be willing to
>> give up some of the precision of the current LRU in order to increase
>> the throughput of reclaim in general.
> 
> Would some type of hinting mechanism work (say via madvise)? 
>  MADV_DONTNEED may be good enough, but we could really do with
> MADV_SWAP_OUT_NOW to indicate objects we really don't want.  I suppose
> I can lose all my credibility by saying this would be the JVM: it knows
> roughly the expected lifetime and access patterns and is well qualified
> to mark objects as infrequently enough accessed to reside on swap.

I don't think MADV_DONTNEED is a good fit because it is destructive.  It
does seem like we are missing a true companion to MADV_WILLNEED which
would give memory a push in the direction of being swapped out.

But I don't think it's too crazy to expect apps to participate.  They
certainly have the potential to know more about their data than the
kernel does, and things like GPUs are already pretty actively optimizing
by moving memory around.

> I suppose another question is do we still want all of this to be page
> based?  We moved to extents in filesystems a while ago, wouldn't some
> extent based LRU mechanism be cheaper ... unfortunately it means
> something has to try to come up with an idea of what an extent means (I
> suspect it would be a bunch of virtually contiguous pages which have
> the same expected LRU properties, but I'm thinking from the application
> centric viewpoint).

One part of this (certainly not the _only_ one) is expanding where
transparent huge pages can be used.  That's one extent definition that's
relatively easy to agree on.

Past that, there are lots of things we can try (including something like
you've suggested), but I don't think anybody knows what will work yet.
There is no shortage of ideas.
