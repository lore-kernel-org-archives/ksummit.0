Return-Path: <dave@stgolabs.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 78166268
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 21:22:32 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 667D3E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 21:22:31 +0000 (UTC)
Message-ID: <1437168144.7345.9.camel@stgolabs.net>
From: Davidlohr Bueso <dave@stgolabs.net>
To: Chris Mason <clm@fb.com>
Date: Fri, 17 Jul 2015 14:22:24 -0700
In-Reply-To: <20150715153725.GA12601@ret.masoncoding.com>
References: <20150715153725.GA12601@ret.masoncoding.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] benchmarking and performance
 trends
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2015-07-15 at 11:37 -0400, Chris Mason wrote:
> We're starting to push 4.0 into prod (122 hosts almost counts), and I'm
> sure we'll backport some wins from 4.2+.  I'm hoping to make this a
> collection point for other benchmarking war stories.  Our biggest gains
> right now are coming from scsi-mq, and early benchmarks show 4.2 has a
> boost that I'm hoping are from the futex locking improvements.

At least for 4.2 you might also want to keep an eye out for the new
qspinlock stuff. Which could be another source of the performance boost
you are seeing. Of course I have no idea what your workload does other
than suffer from futexes.
