Return-Path: <pmladek@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8E8B09E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 12:23:07 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 959D6D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 12:23:06 +0000 (UTC)
Date: Wed, 21 Jun 2017 14:23:04 +0200
From: Petr Mladek <pmladek@suse.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170621122304.GC1538@pathway.suse.cz>
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

On Tue 2017-06-20 19:28:58, Steven Rostedt wrote:
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

My problems with per-CPU buffers is that:

    + I am not sure how big per-CPU buffers we could afford.
      Any non-balanced usage increases the chance of loosing
      messages.

    + The information is scattered and extra tools are needed
      to locate the messages and sort them.

    + It suggests that the solution should be lockless. But
      lockless code is very complex in principle. The ring
      buffer used by ftrace is a good example and it is
      still limited to one reader.


> 2) have two types of console interfaces. A normal and a critical.
> 
> 3) have a thread that is woken whenever there is data in any of the
> buffers, and reads the buffers, again lockless. But to do this in a
> reasonable manner, unless you break the printks up in sub buffers like
> ftrace, if the consumer isn't fast enough, newer messages are dropped.
>
> 4) If a critical print is needed (and here's why we have two console
> interfaces), the normal console interface gets turned off, and the
> buffers stop being output through them. What ever called the critical
> print, will take over, and flush out all the contents of the current
> buffers. Then anything printed during the critical section will go out
> immediately (no buffering). The printk thread, will stop having access
> to the buffers, and shutdown till the critical section is complete.

IMHO, this is something that we are already trying to implement by
the printk_kthread.

To be honest, I am not sure if I have a good top view at the moment.
Especially I am not sure about all the existing problems and requirements.

I always hear the the printk code is too complex. Then people complain
about various limitations. Solution of the limitations usually make
the code even more complex.


IMHO, the two main fighting tasks are:

  1. store messages as fast as possible

  2. show the messages as reliably as possible


IMHO, we are relatively good in the storing part. The biggest
problems are on the showing side, especially when it comes to
slow and messy consoles.


I tried to look at it also in more details. The problems that come
to my mind are:

  1. hard lockups in NMI

  2. hard lockups caused by recursive calls, e.g. warnings
     triggered from printk() code

  3. soft lockups caused by console handling

  4. Lost messages when the is a flood of them

  5. Lost messages when the system hangs

  6. mixed part of continues lines or related lines, e.g. backtraces,
     WARN()

  7. Unreliable time stamps and sorting of messages.

  8. console code is a big mess and I am afraid that I am still not
     aware of many hidden traps there.


Let me to look closer at the problems:

Ad 1. hard lockups in NMI

   It is almost solved by the printk_safe buffer. One drawback
   is that the messages are temporary stored separately and
   the buffer is rather small.

   Lock-less ring buffer would help. The question is if is
   worth the cost. It still does not solve pushing to consoles
   that might have their own locks.


Ad 2. hard lockups by recursive calls

   The recursion printk() -> some_func() -> printk()
   is mostly solved by printk_safe. It has the same drawbacks
   as the NMI solution.

   The recursion some_func() -> printk() -> some_func() -> printk()
   is partly solved by printk_deferred(). It avoids the recursion
   from the console handling code. I actually do not know about
   better solution. Note that the deadlock usually happens in
   some_func() and _not_ in printk(). I do not see how printk()
   itself could detect and prevent this. We could try to detect
   this problems earlier using lockdep.


Ad 3. soft lockups caused by console handling

   We basically need some offloading for the console handling.
   The current problem is how to detect critical situation
   and switch to the sync mode.


Ad 4. Lost messages when the is a flood of them

   Separate buffers or reshuffling (dropping) less important
   messages would help.


Ad 5. Lost messages when the system hangs

   We already have troubles and the console offloading
   makes it worse.

   We should reduce the negative effects of offloading.
   We should make sure that someone is always handling
   console and reduce sleeps with console_lock. Also
   everyone should try to handle some messages when
   the console_lock is available to handle sudden death.

   It was never perfect. The patchset from Peter Zijlstra
   (early printk) looks like an interesting fallback to me.

   We should make more consoles lock less.

   We could also implement storing log into persistent memory.


Ad 6. Mixed parts of continues lines and related lines.

   We need to be careful here. The cont buffer handling
   made the printk code much more complex, introduced
   many regressions. We always have to consider
   the complexity and the gain.

   There are some proposals for an API that would allow
   to enter/exit a buffered mode. One question is if
   we could afford to disable preemption (use per-CPU
   buffers). Another question is the complexity
   and extra memory needs.

   IMPORTANT: Any buffering is dangerous for the reliability of
   the output. By other words, buffering delays output and
   we might never see such messages.


7. Unreliable time stamps and sorting messages

   The current extra buffers (cont, printk_safe, printk_safe_nmi)
   makes this worse. The timestamp is added later.

   We could surely improve this. But it is always with the cost
   of complexity. Also it might bring new problems when interacting
   with the timer code.


Did I miss some important problems?
Did I miss some possible solutions?


I have to admit that I did not have time to think about the last
proposals from Sergey about printk_kthread. So, some of the above
summary might be a bit out of date.

Anyway, I wanted to move the discussion from implementation
back to gathering requirements and the problems with the current
implementation. At least I am not able to judge other implementation
proposals without it. Also I wanted to summarize the current
know-how. I hope that it would help to move forward and avoid
discussion cycles.

I hope that I did not kill the brainstorming effect with this.

Best Regards,
Petr
