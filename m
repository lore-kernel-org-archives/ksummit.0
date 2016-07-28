Return-Path: <will.deacon@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0CEFF956
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 10:41:31 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B7A0417D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 10:41:30 +0000 (UTC)
Date: Thu, 28 Jul 2016 11:41:33 +0100
From: Will Deacon <will.deacon@arm.com>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20160728104132.GB1085@arm.com>
References: <15500.1469183675@warthog.procyon.org.uk>
	<1469545881.120686.335.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1469545881.120686.335.camel@infradead.org>
Cc: jakub@redhat.com, peterz@infradead.org,
	ksummit-discuss@lists.linuxfoundation.org, ramana.radhakrishnan@arm.com
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

On Tue, Jul 26, 2016 at 04:11:21PM +0100, David Woodhouse wrote:
> On Fri, 2016-07-22 at 11:34 +0100, David Howells wrote:
> > Further, Paul McKenney and others are assembling a memory model description.
> > Do we want to consider loosening up the kernel memory model?
> 
> It's not clear that 'loosening up' is what we're after.
> 
> In Seoul last year, weren't we looking at things like readl_relaxed()
> and lamenting the fact that they do actually still have strong enough
> requirements that they can't *really* be very relaxed on Power and
> ARM64 at all, because they're basically being used with the assumption
> of Intel-like semantics.
> 
> The cheap answer is "well, it sucks to be on POWER or ARM64 because
> then readl_relaxed() has to be as slow as readl() is".

I wasn't in Seoul, but I think some people got the wrong end of the stick
about the relaxed accessors and I'd be interested in trying to address
some of that, at least from the arm64 point-of-view. Paul has been busy
writing something up a summary for lwn, but I don't think it's quite ready
yet.

Having said that, the memory model work that I'm aware of focusses
completely on SMP synchronisation and I don't think it's particularly
helpful to throw I/O into the mix just yet.

Will
