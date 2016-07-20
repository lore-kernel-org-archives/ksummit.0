Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6FD03950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 08:31:58 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C365D18A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 08:31:57 +0000 (UTC)
Date: Wed, 20 Jul 2016 08:09:55 +0200
From: Jan Kara <jack@suse.cz>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20160720060955.GE3918@quack2.suse.cz>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<20160719073346.GB24189@swordfish>
	<9794ced1-3c45-c548-9520-15d1b66aef31@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9794ced1-3c45-c548-9520-15d1b66aef31@suse.com>
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

On Tue 19-07-16 09:38:10, Hannes Reinecke wrote:
> On 07/19/2016 09:33 AM, Sergey Senozhatsky wrote:
> > On (07/19/16 08:17), Hannes Reinecke wrote:
> > [..]
> >> Yes. The main problem stems from the fact that printk has two different
> >> and conflicting use-cases:
> >> - Really urgent, 'I am about to die' messages. Which obviously need to
> >>   be printed out as fast as possible.
> >> - Rather largish, information/logging 'what I always wanted to tell you'
> >>   type of messages. These messages tend to be very large, but at the end
> >>   it doesn't really matter _when_ they'll be printed as they are
> >>   time-stamped anyway.
> >>
> >> For the first use-case you absolutely need a synchronous printk, but
> >> this is a complete killer for the second case.
> >> And OTOH having a separate thread is really the way to go for the second
> >> case, but an absolute no-go for the first.
> >>
> >> So I really wonder if it does make sense to lump both use-cases into one
> >> call, or whether it wouldn't be better to have two distinct calls
> >> for that (or, for the sake of argument, use KERN_EMERG to trigger
> >> synchronous printks).
> > 
> > yes, panic() must be in sync printk mode. but we do it a
> > bit differently: console_verbose() forces printk to switch
> > to sync mode.
> > 
> > so panic() goes like this:
> > 
> > 	panic()
> > 	{
> > 		console_verbose(); # switch to sync printk. forever.
> > 		bust_spinlocks();
> > 		pr_emerg("Kernel panic - not syncing...");
> > 
> > 		....
> > 		debug_locks_off();
> > 		console_flush_on_panic();  # flushes kernel log_bug in
> > 					   # sync mode
> > 
> > 		// the rest of panic()
> > 
> > 	}
> > 
> > 	-ss
> > 
> but this is precisely what I meant by priority inversion:
> If there are lots of messages in the printk buffer we might not be
> _able_ to print out everything as the machine died before the entire
> printk buffer could be printed.
> Which means we will never see the panic message, at which point we could
> as well drop the whole exercise.

I like Linus's suggestion how to fix this problem: skip part of buffered
messages and print just last 100 of them before the critical event. I have
a patch to do this but for now Sergey removed it from the patch set because
it is mostly independent and there were some technical issues with it.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
