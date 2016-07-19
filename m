Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1F2482C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 08:23:21 +0000 (UTC)
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BF5C08D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 08:23:20 +0000 (UTC)
Received: by mail-pa0-f65.google.com with SMTP id ez1so904801pab.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 01:23:20 -0700 (PDT)
Date: Tue, 19 Jul 2016 17:23:20 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20160719082320.GD24189@swordfish>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<20160719073346.GB24189@swordfish>
	<9794ced1-3c45-c548-9520-15d1b66aef31@suse.com>
	<20160719074631.GC24189@swordfish>
	<a38a0bc9-12c9-6234-9645-5d3ad4f83023@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a38a0bc9-12c9-6234-9645-5d3ad4f83023@suse.com>
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

On (07/19/16 10:02), Hannes Reinecke wrote:
[..]
> > so why would the system die before we console_unlock()?
> > 
> Errm.
> Because it doesn't have any other chance?
> Like, hard lockup?
> Power down?
> Hardware dead?

ah, ok. so mostly for the reasons outside of printk/panic code.
hard lockup, case. hm, I think nmi_panic() is still going to
call panic() at some point. so we have chances to flush log_buf
messages.

power down or h/w failure, however, can't be fixed up neither
by sync nor by async printk. well, we can't help here.


the thing that really can stop us from flushing the messages
is the fact that console driver may be in some unknown state.
for example, have some internal locks owned by non-panic CPU,
which we IPI_STOP-ed before console_flush_on_panic(). console
drivers are normally unaware of the fact that the system is in
panic now. so some sort of console->write_on_panic(), or
console->reset() would probably be helpful, but that's a bit
different topic.

	-ss
