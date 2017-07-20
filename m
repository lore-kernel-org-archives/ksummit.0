Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1ABE18D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jul 2017 07:53:38 +0000 (UTC)
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C078AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jul 2017 07:53:37 +0000 (UTC)
Received: by mail-pf0-f172.google.com with SMTP id s70so9463955pfs.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Jul 2017 00:53:37 -0700 (PDT)
Date: Thu, 20 Jul 2017 16:53:47 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20170720075347.GA356@jagdpanzerIV.localdomain>
References: <ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<20170619152055.GM3786@lunn.ch>
	<01a7d603-c0a2-7aae-8c8d-587063da5e61@suse.com>
	<20170619162317.4nxx6jsvuzvdtasz@sirena.org.uk>
	<20170620155825.GC409@tigerII.localdomain>
	<3908561D78D1C84285E8C5FCA982C28F612DAC67@ORSMSX114.amr.corp.intel.com>
	<20170620171134.GA444@tigerII.localdomain>
	<20170620172738.zh4maxtfmlwhyrnt@sirena.org.uk>
	<1500449720.19151.7.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1500449720.19151.7.camel@infradead.org>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
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

Hello,

On (07/19/17 09:35), David Woodhouse wrote:
[..]
> > At some point we start reinventing ftrace...  there's issues with
> > joining the two up but there should at least be lessons we can learn.
> > 
> 
> The other way of looking at this is "why are you abusing printk for
> stuff that should have been done via ftrace or other means instead".
>
> I confess I haven't got my curmudgeonly brain out of that mode at all,
> ever since realising that printk had been made asynchronous and
> unreliable (how long ago was that?) and that you could no longer see
> the dying gasp of a crashing kernel on its serial console.
> 
> Rather than morphing printk into something more capable of bulk
> transport, I'd rather see it go back to its roots of
> debugging/diagnostics.
> 
> The original complaint of "all this printk output makes things too
> slow" was better addressed by printing less or at lower severity (or
> adjusting the console loglevel), IMO.
> 
> As things stand, the requirements for the various printk (ab)use cases
> seem to be contradictory — if we're going to have a redesign then I
> think it would be good to take a holistic view and decide what it's
> actually *supposed* to be used for. And, perhaps more to the point,
> what it isn't supposed to be used for.

just some thoughts,

at glance printk has 3 major issues

- it has to do offloading, no doubt.

- printk() can deadlock, easily. (that's the whole reason there is
  printk_deferred())

- printk from NMI is not completely reliable. this area has been
  improved recently; but there are still cases when we can lose
  NMI-printk messages


... but there are more problems. and those issues are not completely
printk fault.

what I mean (and I'm not criticizing anyone),

so we can split printk: defer printing of debug messages and have
direct printing of important messages. and that's where the redesign
hits the first obstacle: direct printing is unreliable. when we do
call_console_drivers() we pass control to the outside world, and we
never know where we will end up at. consoles can invoke timekeeping,
networking, MM, and so on. so I think printk redesign better start
from this part - make call to console drivers more reliable.
if possible.


what I'm talking about, by just one example:

bug report
https://marc.info/?l=dri-devel&m=149938825811219

root cause
https://marc.info/?l=linux-mm&m=149939515214223&w=2


so printk live-locked, and there was no way to see any kernel logs
until Tetsuo sysrq-c'ed the system. and the root cause was all those
complex and difficult dependencies between completely different
subsystems that printk depend on and that, in turn, depend on printk.


> hm, this allocation, per se, looks ok to me. can't really blame it.
> what you had is a combination of factors
>
>        CPU0                    CPU1                            CPU2
>                                                                console_callback()
>                                                                 console_lock()
>                                                                 ^^^^^^^^^^^^^
>        vprintk_emit()          mutex_lock(&par->bo_mutex)
>                                 kzalloc(GFP_KERNEL)
>         console_trylock()        kmem_cache_alloc()              mutex_lock(&par->bo_mutex)
>         ^^^^^^^^^^^^^^^^          io_schedule_timeout


there are more examples.

more closer to the point,
to the best of my knowledge, we don't have that much problems with the
printk logbuf now. we made some progress there over the last year. yes,
NMI printk is not completely awesome.
where we do have problems, I think:

a) we probably need to make more progress towards "and now we print it to the console"
b) print out offloading
c) printk deadlock and the need of printk_deferred()



and it's not always crazy printk abuse to justify the existence of
printk offloading.

example: https://marc.info/?l=linux-mm&m=149977866327662

> you will find that calling cond_resched() (from console_unlock() from printk())
> can cause a delay of nearly one minute, and it can cause a delay of nearly 5 minutes
> to complete one out_of_memory() call. 

example: https://marc.info/?l=linux-kernel&m=149509270422321


printk, to me, is a debugging/diagnostics tool. and we can't fully rely on
it, even we do reasonable things, like OOM print out. moreover, I think, to
some extent, due to printk imperfections, the more debugging options we
enable (CONFIG_DEBUG_PREEMPT, CONFIG_DEBUG_SPINLOCK, etc.) the less stable
the kernel, potentially, gets. because those options use printk() to report
the problems. so might_sleep() or spin_dump() called from "a wrong place"
can eventually deadlock printk() and the system.

example: https://marc.info/?l=linux-kernel&m=149007148320611


well, just my thoughts.

	-ss
