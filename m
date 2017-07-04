Return-Path: <peterz@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7FD04A82
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jul 2017 14:51:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E4D6C1B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Jul 2017 14:51:30 +0000 (UTC)
Date: Tue, 4 Jul 2017 16:51:10 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20170704145110.GD7287@worktop>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
	<20170629203224.6bf7f29a@gandalf.local.home>
	<20170629205218.5b9a7923@gandalf.local.home>
	<CA+55aFyQE_T7Rp7ay_EbAZNDqLE6ffJ-6xkL6B_961oZ0+aSpA@mail.gmail.com>
	<20170629211641.5aeb3af7@gandalf.local.home>
	<20170629212750.5c3542ee@gandalf.local.home>
	<CA+55aFzzCPMUDt72hckauYu+fj=Q2MWjx+XiR06KpMLAr1EBAA@mail.gmail.com>
	<20170629221245.489760b1@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170629221245.489760b1@gandalf.local.home>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Julien Desfossez <jdesfossez@efficios.com>,
	daolivei <daolivei@redhat.com>, bristot <bristot@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Pulling away from the tracing
 ABI quicksands
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


Yay, tracing fight!! :/

On Thu, Jun 29, 2017 at 10:12:45PM -0400, Steven Rostedt wrote:
> On Thu, 29 Jun 2017 18:51:14 -0700
> Linus Torvalds <torvalds@linux-foundation.org> wrote:

> > But yes, I was talking about something very similar to what I think
> > Peter is talking about - the ability to attach a ebpf script to
> > kprobes and extract data dynamically. We've supported ebpf tracepoints
> > for years afaik, what is actually missing from using that for whatever
> > particular extension people want to use?
> 
> Well, I don't want to put words in his mouth, but as he's probably
> currently putting mush in a baby's mouth, so I'll do it anyway. ;-) We
> were talking about making the static tracepoints more "dynamic". I'm not
> sure he's ever used eBPF with tracing.

So my concerns/objections are two-fold:

 - I want only a single static tracepoint in the code.

 - I want only a single 'event' associated with this in userspace.

   (in particular I only see confusion happening when we have:
    sched_switch_fair, sched_switch_rt, sched_switch_deadline events for
    the exact same event; people will forget to enable one or more and
    wonder WTF they have holes in their traces)

These are not strange constraints / demands in my book. Just turns out
its 'difficult' to pull off or something.  I'm in fact fine with simply
adding bits to the one tracepoint we have; although others (that'd be
you Steve) are not because expensive.

Further complications seem to stem from the fact that I use the tracefs
interface exclusively. I don't know how to use perf or trace-cmd or any
of that new fangled stuff to do tracing -- nor do I really care, it
works for me (same why I'm happy with sysvinit, I don't _want_ to have
to relearn my 20+ year old sysadmin skillz, there's better things in live
to spend time on, that baby you mentioned for example).

So on that same vein, I'd be entirely helpless using eBPF to do tracing,
that's even more complicated. That said, I don't typically need this
crud anyway, I just change my kernel and rebuild, reboot and am happy,
that's far easier than trying to figure out how eBPF works.


In any case, baby vomit is more fun that this subject :-)
