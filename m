Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2345E8E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 11:12:04 +0000 (UTC)
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A7E0DAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 11:12:03 +0000 (UTC)
Received: by mail-pf0-f194.google.com with SMTP id w12so29614338pfk.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 04:12:03 -0700 (PDT)
Date: Wed, 21 Jun 2017 20:12:10 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170621111210.GA7502@jagdpanzerIV.localdomain>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170620192858.142a43ff@gandalf.local.home>
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

On (06/20/17 19:28), Steven Rostedt wrote:
> > On Wed, Jun 21, 2017 at 02:11:34AM +0900, Sergey Senozhatsky wrote:
> > 
> > > another thing that I found useful is a CPU number of the processor
> > > that stored a particular line to the logbuf.  
> > 
> > At some point we start reinventing ftrace...  there's issues with
> > joining the two up but there should at least be lessons we can learn.
> 
> I've thought about this a little too.
> 
> I would like printk to have per-cpu buffers. Then we don't even need to
> store the CPU number, that would be explicit by which buffer the data
> is stored in.
> 
> The one thing that is needed, is the consumer. In ftrace, it's whatever
> reads the buffer, which is usually user space, but can be the kernel
> (see sysctl-z). But there's only one consumer at a time.
> 
> I was thinking about a new design for printk. Similar to ftrace, but
> different.
> 
> 1) have per cpu buffers, that are lockless. Writes happen immediately,
> but the output happens later.

I thought about it, and the question is:
would lockless per-CPU logbuffers buy us anything? we used to have
problems with the logbuf_lock, but not any more (to the best of my
knowledge). we deal with logbuf_lock deadlocks using printk_nmi and
printk_safe. so I'd say that logbuf_lock probably doesn't bother us
anymore, it's all those locks that printk can't control that bother
us (semaphore, scheduler, timekeeping, serial consoles, etc. etc.).

so would per-CPU logbufs be better? we would need to do N-way merge
(N per-CPU logbufs) when we print the kernel messages log, correct?

> 2) have two types of console interfaces. A normal and a critical.
> 
> 3) have a thread that is woken whenever there is data in any of the
> buffers, and reads the buffers, again lockless. But to do this in a
> reasonable manner, unless you break the printks up in sub buffers like
> ftrace, if the consumer isn't fast enough, newer messages are dropped.

yes, so I definitely want to have printing offloading. but, per my
experience, it's not all so simple when it comes to offloading. if
we would compare offloading with the direct printing then offloading
does change printk behaviour and I saw a number of dropped messages
bug reports because of offloading. the existing direct printing can
throttle the CPU that printks a lot.

direct printing

	CPU1

	printk
	call_console_drivers
	printk
	call_console_drivers
	...
	printk
	call_console_drivers


so new logbuf entries do not appear in the logbuf until the previous
ones are printed to the serial console. while with the offloading
it's different:

offloading

	CPU1				CPU2
	printk
	printk				call_console_drivers
	printk
	printk				call_console_drivers
	printk
					call_console_drivers

new logbuf entries now appear uncontrollably.

well, nothing new here. we already can have hit scenario, we just need
one CPU spinning in console_unlock() and one or several CPUs doing
printk. but with offloading we potentially break a trivial case - a
single CPU that calls printk.


so may be additionally to offloading we also would need some sort of
throttling mechanism in printk.


> 4) If a critical print is needed (and here's why we have two console
> interfaces), the normal console interface gets turned off, and the
> buffers stop being output through them. What ever called the critical
> print, will take over, and flush out all the contents of the current
> buffers. Then anything printed during the critical section will go out
> immediately (no buffering). The printk thread, will stop having access
> to the buffers, and shutdown till the critical section is complete.
> 
> This is just a rough idea. I think it is possible. The tricky part is
> going to be the switch over to the critical section. Also, have a
> command line parameter that has all printks be critical. Peter Zilstra
> has some patches that already does that with making printk turn into
> early printk.

	-ss
