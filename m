Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 93200950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 13:55:32 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F401610E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 13:55:31 +0000 (UTC)
Date: Tue, 19 Jul 2016 15:55:29 +0200
From: Jan Kara <jack@suse.cz>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Message-ID: <20160719135529.GH6782@quack2.suse.cz>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578DDAED.1070504@de.ibm.com> <578DDC5D.4070709@de.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <578DDC5D.4070709@de.ibm.com>
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

On Tue 19-07-16 09:53:01, Christian Borntraeger wrote:
> On 07/19/2016 09:46 AM, Christian Borntraeger wrote:
> > On 07/19/2016 08:17 AM, Hannes Reinecke wrote:
> >> On 07/19/2016 05:47 AM, Sergey Senozhatsky wrote:
> >>> Hello,
> >>>
> >>> Wondering if anyone will be interested in printk-related topics
> >>> (or we can handle it in the mailing list).
> >>>
> >>> What I have on my list is:
> >>>
> >>>
> >>> - synchronous printk()
> >>>
> >>> printk() prints messages from kernel printk buffer until the buffer
> >>> is empty. When serial console is attached, printing is slow and thus
> >>> other CPUs in the system have plenty of time to append new messages to
> >>> the buffer while one CPU is printing. Thus the CPU can spend unbounded
> >>> amount of time doing printing in console_unlock().  This is especially
> >>> serious problem if the printk() calling console_unlock() was called with
> >>> interrupts disabled, or from IRQ, or from spin_lock protected section
> >>> (if the spinlock is contended), etc. etc. IOW, printk() is quite dangerous
> >>> function to call in some cases, it can cause different types of lockups
> >>> (soft, hard, spinlock), stalls and so on.
> >>>
> >>> we have some progress on this side. printk() can offload printing from
> >>> sensitive and unsafe contexts to a schedulable printk_kthread context (a
> >>> special purpose printing kthread).
> >>> but "The whole idea remains worrisome", per Andrew :)
> >>>
> >> Yes. The main problem stems from the fact that printk has two different
> >> and conflicting use-cases:
> >> - Really urgent, 'I am about to die' messages. Which obviously need to
> >>   be printed out as fast as possible.
> >> - Rather largish, information/logging 'what I always wanted to tell you'
> >>   type of messages. These messages tend to be very large, but at the end
> >>   it doesn't really matter _when_ they'll be printed as they are
> >>   time-stamped anyway.
> > 
> > I think you brought up this topic last year in a lightning talk, correct?
> > Didn't Linus say "fix the console then"?
> 
> Which does not make the problem go away, though, so yes - a session to
> discuss this is probably a good idea - it really depends on how strong
> Linus opinion on this topic is ;-)

Well, he backed up from that statement later a bit. So when I was
discussing this problem with him at last KS he agreed that making printk
async is the way to go and he specifically dismissed attempts to print
synchronously for a while and fall back to async only later. He just wanted
some way to get things to console synchronously once things go bad (oops,
panic,...) which is discussed elsewhere in this thread.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
