Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DB1D46C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 08:02:09 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3975517F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 08:02:06 +0000 (UTC)
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<20160719073346.GB24189@swordfish>
	<9794ced1-3c45-c548-9520-15d1b66aef31@suse.com>
	<20160719074631.GC24189@swordfish>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <a38a0bc9-12c9-6234-9645-5d3ad4f83023@suse.com>
Date: Tue, 19 Jul 2016 10:02:03 +0200
MIME-Version: 1.0
In-Reply-To: <20160719074631.GC24189@swordfish>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
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

On 07/19/2016 09:46 AM, Sergey Senozhatsky wrote:
> On (07/19/16 09:38), Hannes Reinecke wrote:
> [..]
>>> yes, panic() must be in sync printk mode. but we do it a
>>> bit differently: console_verbose() forces printk to switch
>>> to sync mode.
>>>
>>> so panic() goes like this:
>>>
>>> 	panic()
>>> 	{
>>> 		console_verbose(); # switch to sync printk. forever.
>>> 		bust_spinlocks();
>>> 		pr_emerg("Kernel panic - not syncing...");
>>>
>>> 		....
>>> 		debug_locks_off();
>>> 		console_flush_on_panic();  # flushes kernel log_bug in
>>> 					   # sync mode
>>>
>>> 		// the rest of panic()
>>>
>>> 	}
>>>
>>> 	-ss
>>>
>> but this is precisely what I meant by priority inversion:
>> If there are lots of messages in the printk buffer we might not be
>> _able_ to print out everything as the machine died before the entire
>> printk buffer could be printed.
> 
> why would it die? the same CPU that panics the system flushes the
> log_buf in sync mode. console_flush_on_panic() is invoked after
> panic_smp_send_stop(), which is supposed to IPI_STOP other CPUs on the
> system, but before panic() reboots the system (if it must reboot it).
> and it does not really care whether console_sem is available, it goes
> to console_unlock() in any case
> 
> void console_flush_on_panic(void)
> {
> 	/*
> 	 * If someone else is holding the console lock, trylock will fail
> 	 * and may_schedule may be set.  Ignore and proceed to unlock so
> 	 * that messages are flushed out.  As this can be called from any
> 	 * context and we don't want to get preempted while flushing,
> 	 * ensure may_schedule is cleared.
> 	 */
> 	console_trylock();
> 	console_may_schedule = 0;
> 	console_unlock();
> }
> 
> so why would the system die before we console_unlock()?
> 
Errm.
Because it doesn't have any other chance?
Like, hard lockup?
Power down?
Hardware dead?

Slightly puzzled,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
