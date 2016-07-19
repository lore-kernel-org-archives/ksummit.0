Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 304179C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 06:17:23 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 08643CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 06:17:21 +0000 (UTC)
To: ksummit-discuss@lists.linuxfoundation.org
References: <20160719034717.GA24189@swordfish>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
Date: Tue, 19 Jul 2016 08:17:19 +0200
MIME-Version: 1.0
In-Reply-To: <20160719034717.GA24189@swordfish>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/19/2016 05:47 AM, Sergey Senozhatsky wrote:
> Hello,
> 
> Wondering if anyone will be interested in printk-related topics
> (or we can handle it in the mailing list).
> 
> What I have on my list is:
> 
> 
> - synchronous printk()
> 
> printk() prints messages from kernel printk buffer until the buffer
> is empty. When serial console is attached, printing is slow and thus
> other CPUs in the system have plenty of time to append new messages to
> the buffer while one CPU is printing. Thus the CPU can spend unbounded
> amount of time doing printing in console_unlock().  This is especially
> serious problem if the printk() calling console_unlock() was called with
> interrupts disabled, or from IRQ, or from spin_lock protected section
> (if the spinlock is contended), etc. etc. IOW, printk() is quite dangerous
> function to call in some cases, it can cause different types of lockups
> (soft, hard, spinlock), stalls and so on.
> 
> we have some progress on this side. printk() can offload printing from
> sensitive and unsafe contexts to a schedulable printk_kthread context (a
> special purpose printing kthread).
> but "The whole idea remains worrisome", per Andrew :)
> 
Yes. The main problem stems from the fact that printk has two different
and conflicting use-cases:
- Really urgent, 'I am about to die' messages. Which obviously need to
  be printed out as fast as possible.
- Rather largish, information/logging 'what I always wanted to tell you'
  type of messages. These messages tend to be very large, but at the end
  it doesn't really matter _when_ they'll be printed as they are
  time-stamped anyway.

For the first use-case you absolutely need a synchronous printk, but
this is a complete killer for the second case.
And OTOH having a separate thread is really the way to go for the second
case, but an absolute no-go for the first.

So I really wonder if it does make sense to lump both use-cases into one
call, or whether it wouldn't be better to have two distinct calls
for that (or, for the sake of argument, use KERN_EMERG to trigger
synchronous printks).

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
