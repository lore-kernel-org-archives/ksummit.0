Return-Path: <davidlohr@hp.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 52294ACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 15:05:43 +0000 (UTC)
Received: from g2t1383g.austin.hp.com (g2t1383g.austin.hp.com [15.217.136.92])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4958D20266
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 15:05:42 +0000 (UTC)
Received: from g6t1525.atlanta.hp.com (g6t1525.atlanta.hp.com [15.193.200.68])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hp.com (Postfix) with ESMTPS id 6FD562F44
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 14:46:27 +0000 (UTC)
Message-ID: <1399907137.2648.18.camel@buesod1.americas.hpqcorp.net>
From: Davidlohr Bueso <davidlohr@hp.com>
To: Chris Mason <clm@fb.com>
Date: Mon, 12 May 2014 08:05:37 -0700
In-Reply-To: <5370DB7B.2040706@fb.com>
References: <5370DB7B.2040706@fb.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Application performance: regressions,
 controlling preemption
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2014-05-12 at 10:32 -0400, Chris Mason wrote:
> Hi everyone,
> 
> We're in the middle of upgrading the tiers here from older kernels 
> (2.6.38, 3.2) into 3.10 and higher.
> 
> I've been doing this upgrade game for a number of years now, with 
> different business cards taped to my forehead and with different target 
> workloads.
> 
> The result is always the same...if I'm really lucky the system isn't 
> slower, but usually I'm left with a steaming pile of 10-30% regressions.

Please consider me for this discussion. At HP we've been working on
different performance issues in the kernel, including a lot of locking
improvements and optimizations, which have boosted performance for a
wide variety of workloads. There are plenty of really interesting
results and I'd be happy to share some of them and other findings.

Furthermore, I'm always on the lookout for new performance issues so I'd
be interested in knowing some of the seen regressions and if they are
still present today (lots of changes since 3.10).

> The KS dates should put us right at the end of our regression hunt, I 
> can talk through the main problems we hit, how (if) we fixed them and 
> hopefully offer tests to keep them from coming back.
> 
> We've split the tiers up between Josef Bacik, Jens Axboe, myself and a 
> few others.  I'd nominate Josef and Jens to come share their findings as 
> well.

I'd also like to include PeterZ and Ingo.

> Another topic here is controlling preemption from userland without 
> needing to go full real time.  CPU intensive in-memory databases are 
> leaving a ton of performance on the floor in context switches.  I'm 
> hoping to experiment with better preemption controls and the userland 
> RCU project to improve things.

Hmm specifically for this, it would also be good to have Khalid Aziz in
the discussion. He's been trying to add userspace controlled preemption
for a while now.

Thanks,
Davidlohr
