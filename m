Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4BB0C8CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 00:46:17 +0000 (UTC)
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2B7F41EF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 00:46:16 +0000 (UTC)
Received: by mail-pf0-f194.google.com with SMTP id y134so4357286pfg.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 17:46:16 -0700 (PDT)
Date: Thu, 21 Jul 2016 09:46:16 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160721004616.GA505@swordfish>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<20160719064902.GA1314@x>
	<02f7282d-954a-8491-6110-fe6ce704d0c5@suse.com>
	<20160720225457.GA1167@x>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160720225457.GA1167@x>
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

Hello,

On (07/20/16 15:54), Josh Triplett wrote:
[..]
> > That's what I've tried to infer by the above statement; KERN_EMERG could
> > easily used for that sort of thing.
> 
> I don't mean using just the priority level of the printk call.  I mean
> using the current kernel loglevel, as in what level it displays to the
> console, as set on the kernel command line with the loglevel= parameter.
> printk could quickly check the priority level of the call versus the
> current kernel loglevel to determine if the message would go to the
> console or not, and use that to decide whether to handle it
> synchronously or asynchronously.

between loglevel check in printk() and actual printing console loglevel
may change. thus printk() does not make this (severity level filtering)
decision. console_unlock() does, on per-log record basis:

console_unlock()
{
	for (;;) {
		spin_lock(logbuf_lock)

skip:
		msg = log_from_idx(console_idx);
		if (msg->level >= console_loglevel)
			goto skip;

		spin_unlock(logbuf_lock)

		call_console_drivers(text)
	}
}

and by the time we call console_unlock() we better already be
either in async mode, or sync mode. unless we want to rewrite
console_unlock().

	-ss
