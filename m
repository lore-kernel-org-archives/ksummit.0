Return-Path: <will.deacon@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A5114899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 08:49:53 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3A88915B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 08:49:53 +0000 (UTC)
Date: Wed, 3 Aug 2016 09:49:57 +0100
From: Will Deacon <will.deacon@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <20160803084957.GB5166@arm.com>
References: <15500.1469183675@warthog.procyon.org.uk>
	<1469545881.120686.335.camel@infradead.org>
	<20160802134223.GK6862@twins.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160802134223.GK6862@twins.programming.kicks-ass.net>
Cc: jakub@redhat.com, ksummit-discuss@lists.linuxfoundation.org,
	ramana.radhakrishnan@arm.com
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Memory model,
 using ISO C++11 atomic ops
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 02, 2016 at 03:42:23PM +0200, Peter Zijlstra wrote:
> On Tue, Jul 26, 2016 at 04:11:21PM +0100, David Woodhouse wrote:
> > On Fri, 2016-07-22 at 11:34 +0100, David Howells wrote:
> > > Further, Paul McKenney and others are assembling a memory model description.
> > > Do we want to consider loosening up the kernel memory model?
> > 
> > It's not clear that 'loosening up' is what we're after.
> 
> Linus (who should also very much be present for this) always argues
> against relaxing ordering.

Even if he had an inexplicable change in heart, how on Earth do you go
about validating the existing codebase against a new memory model? It's
one thing to show that the relaxation is strictly a relaxation (and
therefore the existing backend implementations remain sound), but quite
another to show that locking implementations don't fall apart, or the
guarantees that no longer hold aren't relied upon someplace.

One might consider adding more atomic operations. For example, the
release/acquire stuff we grew recently is "weaker" than full fences but,
unlike the C11 atomics, the release/acquire primitives complement full
fences. Conversely, having two sets of fences (C11 and kernel) or two
sets of release/acquire, each with subtly different semantics sounds
like an awful maintainance burden and not somewhere we should be going.

That's why I'd be interested in building kernel-compatible operations
using C11 atomics (relaxed accesses and fences) for asm/generic, but not
more than that, at least outside of arch/*.

Will
