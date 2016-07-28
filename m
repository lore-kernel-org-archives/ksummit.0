Return-Path: <rostedt@goodmis.org>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E30D591A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 14:17:41 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0107.hostedemail.com
	[216.40.44.107])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id B20FC1DB34
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 14:17:40 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 132CB184799
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 13:02:11 +0000 (UTC)
Date: Thu, 28 Jul 2016 09:02:03 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Message-ID: <20160728090203.18a305d2@gandalf.local.home>
In-Reply-To: <20160728041251.GA577@swordfish>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578DDAED.1070504@de.ibm.com> <578DDC5D.4070709@de.ibm.com>
	<20160719135529.GH6782@quack2.suse.cz>
	<20160727225945.50b29c20@grimm.local.home>
	<20160728041251.GA577@swordfish>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Thu, 28 Jul 2016 13:12:51 +0900
Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:

> Hello Steven,
> 
> On (07/27/16 22:59), Steven Rostedt wrote:
> > > Well, he backed up from that statement later a bit. So when I was
> > > discussing this problem with him at last KS he agreed that making printk
> > > async is the way to go and he specifically dismissed attempts to print
> > > synchronously for a while and fall back to async only later. He just wanted
> > > some way to get things to console synchronously once things go bad (oops,
> > > panic,...) which is discussed elsewhere in this thread.  
> > 
> > Note, my selftests require synchronous printing, so I hope this feature
> > still allows locations to force that without being in oops mode. The
> > tracing selftests can cause triple faults, and seeing where it happened
> > is a must. I already had issues once when printk changed (temporarily)
> > to only dump out lines when a \n was seen. That caused me to think the
> > wrong test was rebooting the box.  
> 
> if you run the tests from user space, then there is a way to change
> printk behavior at will. if from kernel, then... there is no really
> nice way, as of yet.

The tests are run by the kernel at boot up.

> 
> you can do something like (ugly)
> 
> 	console_lock();
> 	test();
> 	console_unlock();
> 
> or change console_loglevel to CONSOLE_LOGLEVEL_MOTORMOUTH temporarily

A temporary force also works.

-- Steve

> 
> 	console_verbose();
> 	test();
> 
> or boot with async printk (if needed) then change to sync mode from
> user space and then start the test...
> 
> by default printk is in sync (old) mode; we don't want to enforce printk
> changes on the systems that have never seen any issues with printk. so unless
> you pass aync printk boot param or change printk to async from user space,
> it must work just as before.
