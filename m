Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5482B6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 07:33:46 +0000 (UTC)
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0A48E89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 07:33:46 +0000 (UTC)
Received: by mail-pf0-f194.google.com with SMTP id i6so868084pfe.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 00:33:45 -0700 (PDT)
Date: Tue, 19 Jul 2016 16:33:46 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20160719073346.GB24189@swordfish>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
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

On (07/19/16 08:17), Hannes Reinecke wrote:
[..]
> Yes. The main problem stems from the fact that printk has two different
> and conflicting use-cases:
> - Really urgent, 'I am about to die' messages. Which obviously need to
>   be printed out as fast as possible.
> - Rather largish, information/logging 'what I always wanted to tell you'
>   type of messages. These messages tend to be very large, but at the end
>   it doesn't really matter _when_ they'll be printed as they are
>   time-stamped anyway.
> 
> For the first use-case you absolutely need a synchronous printk, but
> this is a complete killer for the second case.
> And OTOH having a separate thread is really the way to go for the second
> case, but an absolute no-go for the first.
> 
> So I really wonder if it does make sense to lump both use-cases into one
> call, or whether it wouldn't be better to have two distinct calls
> for that (or, for the sake of argument, use KERN_EMERG to trigger
> synchronous printks).

yes, panic() must be in sync printk mode. but we do it a
bit differently: console_verbose() forces printk to switch
to sync mode.

so panic() goes like this:

	panic()
	{
		console_verbose(); # switch to sync printk. forever.
		bust_spinlocks();
		pr_emerg("Kernel panic - not syncing...");

		....
		debug_locks_off();
		console_flush_on_panic();  # flushes kernel log_bug in
					   # sync mode

		// the rest of panic()

	}

	-ss
