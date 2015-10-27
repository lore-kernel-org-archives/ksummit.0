Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1DBBE25A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Oct 2015 23:52:58 +0000 (UTC)
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B1F0390
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Oct 2015 23:52:57 +0000 (UTC)
Received: by padhk11 with SMTP id hk11so236986457pad.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Oct 2015 16:52:57 -0700 (PDT)
Date: Wed, 28 Oct 2015 08:53:51 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20151027235351.GA4885@swordfish>
References: <562E37D7.9080105@suse.com>
	<alpine.LNX.2.00.1510262348190.8998@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1510262348190.8998@pobox.suse.cz>
Cc: theodore.tso@gmail.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Late KS topics
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On (10/26/15 23:51), Jiri Kosina wrote:
> On Mon, 26 Oct 2015, Hannes Reinecke wrote:
> 
> >   The talk/proposal should be used to come to a consensus about
> >   restricting printk() to high-priority, small volume messages,
> >   and implement a different call (like log_printk()) for the
> >   low-priority, high-volume traffic.
> 
> The printk() troubles are not only about the "high volume" vs. "very 
> important", but also about the context of the caller.

sometimes "high volume" and 'unlucky' printk_deferred() dynamic duo
can do dramatic things. printk_deferred() queues a irq work -
wake_up_klogd_work(), which does

wake_up_klogd_work_func():
	..
	console_trylock()
		console_unlock()


so we eventually end up in

	for (;;) {
		..
		call_console_drivers()
		..
	}

	-ss

> The optimistic comment above printk() says that it can be called from any 
> context, but that's not true for quite some time already.
> So if printk() is going to be redesigned to be more lightweight, this 
> aspect definitely needs to be taken into consideration as well.
