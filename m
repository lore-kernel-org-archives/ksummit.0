Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A1658273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 18:38:06 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1835D1BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 18:38:06 +0000 (UTC)
Message-ID: <1439404681.2825.67.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Christoph Hellwig <hch@infradead.org>
Date: Wed, 12 Aug 2015 11:38:01 -0700
In-Reply-To: <20150812182103.GA20106@infradead.org>
References: <20150812111552.0f7e5fe7@urahara>
	<20150812182103.GA20106@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] userspace infrastructure services
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2015-08-12 at 11:21 -0700, Christoph Hellwig wrote:
> On Wed, Aug 12, 2015 at 11:15:52AM -0700, Stephen Hemminger wrote:
> > I expected someone else to bring this topic up...
> > 
> > One thing that is happening is that there is lots of activity in moving core features
> > of the kernel into userspace (networking, storage, security). I don't want to get into
> > an argument over whether that is good or bad;
> 
> Which I think is the most important question of them all.  From all
> the pain caused and the little gains I'm a believer it's mostly bad,
> especially for cases like:
> 
> > The area I am most familiar with is the DPDK which has to have its own UIO drivers
> > to work in all environments (get device into userspace). And then has to have its
> > own drivers to simulate network device (put device back into kernel).  This leads
> > to unmanageable ABI and development technical debt.
> 
> Which interacts on both sides.  In that case "let them suffer for their
> stupidity" is the only valid answer.
> 
> For a case where it's more reasonable there might be a different answer.

What about something like CRIU:

http://www.criu.org/Main_Page

?

in-kernel checkpoint/restore had been proposed many times before and
always rejected as being hugely complex (most publicly at the Kernel
Summit in Cambridge, where Oren Laadan proposed it).  CRIU took a
completely different approach where we broke the problem down into
sections and extended kernel interfaces to export state where it wasn't
available.  The net result is that we now have checkpoint/restore (and
thus process migration) for Linux at a significant reduction in the
complexity over the original code and realistically not a huge technical
debt.

What I like to think CRIU shows us is that if we look hard enough, there
is a way to separate the problem up so that a userspace becomes workable
without a massive increase in the kernel ABI surface.

The big problem is finding the way to do the split.  You can tell if you
get it wrong because the userspace component has a huge amount of state
shared with the kernel and the ABI balloons to cope with this (cough,
DPDK, cough)... however, what's not clear is how to get it right in the
first place.

Perhaps we should look first at how CRIU got it right and then discuss
how we might use those same principles to fix other projects, like DPDK.

James
