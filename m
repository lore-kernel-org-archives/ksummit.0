Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D1636952
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 04:12:50 +0000 (UTC)
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7CB0E237
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 04:12:50 +0000 (UTC)
Received: by mail-pf0-f195.google.com with SMTP id h186so2921564pfg.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 21:12:50 -0700 (PDT)
Date: Thu, 28 Jul 2016 13:12:51 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160728041251.GA577@swordfish>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578DDAED.1070504@de.ibm.com> <578DDC5D.4070709@de.ibm.com>
	<20160719135529.GH6782@quack2.suse.cz>
	<20160727225945.50b29c20@grimm.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160727225945.50b29c20@grimm.local.home>
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

Hello Steven,

On (07/27/16 22:59), Steven Rostedt wrote:
> > Well, he backed up from that statement later a bit. So when I was
> > discussing this problem with him at last KS he agreed that making printk
> > async is the way to go and he specifically dismissed attempts to print
> > synchronously for a while and fall back to async only later. He just wanted
> > some way to get things to console synchronously once things go bad (oops,
> > panic,...) which is discussed elsewhere in this thread.
> 
> Note, my selftests require synchronous printing, so I hope this feature
> still allows locations to force that without being in oops mode. The
> tracing selftests can cause triple faults, and seeing where it happened
> is a must. I already had issues once when printk changed (temporarily)
> to only dump out lines when a \n was seen. That caused me to think the
> wrong test was rebooting the box.

if you run the tests from user space, then there is a way to change
printk behavior at will. if from kernel, then... there is no really
nice way, as of yet.

you can do something like (ugly)

	console_lock();
	test();
	console_unlock();

or change console_loglevel to CONSOLE_LOGLEVEL_MOTORMOUTH temporarily

	console_verbose();
	test();

or boot with async printk (if needed) then change to sync mode from
user space and then start the test...

by default printk is in sync (old) mode; we don't want to enforce printk
changes on the systems that have never seen any issues with printk. so unless
you pass aync printk boot param or change printk to async from user space,
it must work just as before.

	-ss
