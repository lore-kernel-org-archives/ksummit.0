Return-Path: <peterz@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 07A35919
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 13:42:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF210E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 13:42:26 +0000 (UTC)
Date: Tue, 2 Aug 2016 15:42:23 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20160802134223.GK6862@twins.programming.kicks-ass.net>
References: <15500.1469183675@warthog.procyon.org.uk>
	<1469545881.120686.335.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1469545881.120686.335.camel@infradead.org>
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

On Tue, Jul 26, 2016 at 04:11:21PM +0100, David Woodhouse wrote:
> On Fri, 2016-07-22 at 11:34 +0100, David Howells wrote:
> > Further, Paul McKenney and others are assembling a memory model description.
> > Do we want to consider loosening up the kernel memory model?
> 
> It's not clear that 'loosening up' is what we're after.

Linus (who should also very much be present for this) always argues
against relaxing ordering.
