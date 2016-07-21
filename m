Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1C968892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 01:12:47 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AA34F10A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 01:12:46 +0000 (UTC)
Date: Wed, 20 Jul 2016 18:12:40 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Message-ID: <20160721011239.GA3067@x>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<20160719064902.GA1314@x>
	<02f7282d-954a-8491-6110-fe6ce704d0c5@suse.com>
	<20160720225457.GA1167@x> <20160721004616.GA505@swordfish>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160721004616.GA505@swordfish>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 21, 2016 at 09:46:16AM +0900, Sergey Senozhatsky wrote:
> Hello,
> 
> On (07/20/16 15:54), Josh Triplett wrote:
> [..]
> > > That's what I've tried to infer by the above statement; KERN_EMERG could
> > > easily used for that sort of thing.
> > 
> > I don't mean using just the priority level of the printk call.  I mean
> > using the current kernel loglevel, as in what level it displays to the
> > console, as set on the kernel command line with the loglevel= parameter.
> > printk could quickly check the priority level of the call versus the
> > current kernel loglevel to determine if the message would go to the
> > console or not, and use that to decide whether to handle it
> > synchronously or asynchronously.
> 
> between loglevel check in printk() and actual printing console loglevel
> may change. thus printk() does not make this (severity level filtering)
> decision. console_unlock() does, on per-log record basis:
[...]
> and by the time we call console_unlock() we better already be
> either in async mode, or sync mode. unless we want to rewrite
> console_unlock().

That's exactly why I was suggesting this filter.  Yes, loglevel can
change at any time, but I don't think it's worth worrying about whether
messages that happen to race with the change to loglevel get handled
synchronously or asynchronously.
