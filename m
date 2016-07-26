Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DFE96323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 15:20:40 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 75F4221C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 15:20:40 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1469545881.120686.335.camel@infradead.org>
References: <1469545881.120686.335.camel@infradead.org>
	<15500.1469183675@warthog.procyon.org.uk>
To: David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <30816.1469546437.1@warthog.procyon.org.uk>
Date: Tue, 26 Jul 2016 16:20:37 +0100
Message-ID: <30817.1469546437@warthog.procyon.org.uk>
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

David Woodhouse <dwmw2@infradead.org> wrote:

> In Seoul last year, weren't we looking at things like readl_relaxed()
> and lamenting the fact that they do actually still have strong enough
> requirements that they can't *really* be very relaxed on Power and
> ARM64 at all, because they're basically being used with the assumption
> of Intel-like semantics.

I don't recall that.  Possibly that was a track I wasn't in.

> The cheap answer is "well, it sucks to be on POWER or ARM64 because
> then readl_relaxed() has to be as slow as readl() is".

Does the memory model for CPU/device interactions have to be the same as that
for CPU/CPU interactions?  I guess with respect to locks, it does so that two
processors who both want to access a device don't trample over each other.

> Is that what Paul is working on, that you mention above?

Paul is working on a general overall description.

David
