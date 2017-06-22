Return-Path: <SRS0=sOnO=53=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D5157504
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 14:06:45 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B8E1AD3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 14:06:44 +0000 (UTC)
Date: Thu, 22 Jun 2017 10:06:41 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Message-ID: <20170622100641.1dae4e3c@gandalf.local.home>
In-Reply-To: <20170621111210.GA7502@jagdpanzerIV.localdomain>
References: <ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
	<20170619162317.4nxx6jsvuzvdtasz@sirena.org.uk>
	<20170620155825.GC409@tigerII.localdomain>
	<3908561D78D1C84285E8C5FCA982C28F612DAC67@ORSMSX114.amr.corp.intel.com>
	<20170620171134.GA444@tigerII.localdomain>
	<20170620172738.zh4maxtfmlwhyrnt@sirena.org.uk>
	<20170620192858.142a43ff@gandalf.local.home>
	<20170621111210.GA7502@jagdpanzerIV.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Peter Zijlstra <peterz@infradead.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 21 Jun 2017 20:12:10 +0900
Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:


> I thought about it, and the question is:
> would lockless per-CPU logbuffers buy us anything? we used to have

Well, I'm not 100% happy with the current NMI approach. There is still
no "print everything" from NMI. That is, prints from NMI must be placed
in a buffer before going out, and that limits how much can be printed.
And an ftrace_dump_on_oops can be huge.

> problems with the logbuf_lock, but not any more (to the best of my
> knowledge). we deal with logbuf_lock deadlocks using printk_nmi and
> printk_safe. so I'd say that logbuf_lock probably doesn't bother us
> anymore, it's all those locks that printk can't control that bother
> us (semaphore, scheduler, timekeeping, serial consoles, etc. etc.).
> 
> so would per-CPU logbufs be better? we would need to do N-way merge
> (N per-CPU logbufs) when we print the kernel messages log, correct?

Yes.

> 
> > 2) have two types of console interfaces. A normal and a critical.
> > 
> > 3) have a thread that is woken whenever there is data in any of the
> > buffers, and reads the buffers, again lockless. But to do this in a
> > reasonable manner, unless you break the printks up in sub buffers like
> > ftrace, if the consumer isn't fast enough, newer messages are dropped.  
> 
> yes, so I definitely want to have printing offloading. but, per my
> experience, it's not all so simple when it comes to offloading. if
> we would compare offloading with the direct printing then offloading
> does change printk behaviour and I saw a number of dropped messages
> bug reports because of offloading. the existing direct printing can
> throttle the CPU that printks a lot.
> 
> direct printing
> 
> 	CPU1
> 
> 	printk
> 	call_console_drivers
> 	printk
> 	call_console_drivers
> 	...
> 	printk
> 	call_console_drivers
> 
> 
> so new logbuf entries do not appear in the logbuf until the previous
> ones are printed to the serial console. while with the offloading
> it's different:
> 
> offloading
> 
> 	CPU1				CPU2
> 	printk
> 	printk				call_console_drivers
> 	printk
> 	printk				call_console_drivers
> 	printk
> 					call_console_drivers
> 
> new logbuf entries now appear uncontrollably.
> 
> well, nothing new here. we already can have hit scenario, we just need
> one CPU spinning in console_unlock() and one or several CPUs doing
> printk. but with offloading we potentially break a trivial case - a
> single CPU that calls printk.

We could come up with another way to throttle the CPU that does all the
printks.

> 
> 
> so may be additionally to offloading we also would need some sort of
> throttling mechanism in printk.

Yes.


-- Steve
