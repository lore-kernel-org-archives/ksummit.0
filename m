Return-Path: <SRS0=aia5=6D=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 46D685A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 00:32:28 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 775C3E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 00:32:27 +0000 (UTC)
Date: Thu, 29 Jun 2017 20:32:24 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170629203224.6bf7f29a@gandalf.local.home>
In-Reply-To: <CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
	<20170629195537.534445e7@gandalf.local.home>
	<CA+55aFxW_vhYWRoWFwy4zQgG7iPJg3V4u0-XkjZiGJJfZtZ=ng@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
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

On Thu, 29 Jun 2017 17:03:05 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> On Thu, Jun 29, 2017 at 4:55 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> >>
> >>   * How can we deprecate, remove, or re-purpose a field in an
> >>     event ? For instance, the "prio" field in the scheduler
> >>     instrumentation is an internal implementation detail.  
> >
> > One way is to fix all tools that use it and make sure they get out to
> > the distros before making the change.  
> 
> OR DO THE THING THAT PEOPLE HAVE BEEN TOLD TO DO AT LEAST THREE KERNEL
> SUMMITS NOW: LEAVE THE DAMN FIELD ALONE, AND FILL IT WITH ZERO. OR
> ONE. OR BRAN MUFFINS. I DON'T CARE. BUT DON'T REMOVE IT, AND STOP
> USING IT AS AN EXCUSE FOR WHY NOTHING CAN EVER BE DONE.

Well, we actually were able to in the past remove a field after getting
the one user up to date (powertop) remember? I fixed powertop, waited a
few years until the fix was in Debian stable, and then removed the
field. Nobody noticed.  I thought that was the point. If user space
breaks, and nobody is around to complain about it, did it really break?

The reason that was important to remove, is that it was a field in
*every* tracepoint. It was only 4 bytes, but when you have 4 million
tracepoints in the buffers, that's 4 megs of memory wasted (a normal
tracepoint is about 24 bytes, which makes 4 bytes a big percentage).
It's similar to wasted fields in the page struct. It bloats up fast.

> 
> Really. I don't want to have this stupid tracing discussion one more
> time. We've had it. Several times. This exact issue has come up.
> Several times.

This is actually something quite different, and new. It sounds similar,
but its not.

I should have been the one to post the topic, because what Mathieu
wrote, makes it sound very much like what we've discussed to death in
the past.

What we use to talk about at ksummit was about stable ABIs and such.
How to get new tracepoints into the kernel subsystems like the file
system and not worry that these tracepoints will cause harm later to
development. THAT IS NOT WHAT WE ARE TALKING ABOUT NOW. (just to get
your attention ;-)

> 
> So stop wasting everybodys time one more year.  I'm going to walk out
> if people start discussing this thing again.

Here's what the new issue is. We have a single tracepoint in the
scheduler that denotes sched switch. It currently looks like this:

name: sched_switch
ID: 287
format:
	field:unsigned short common_type;	offset:0;	size:2;	signed:0;
	field:unsigned char common_flags;	offset:2;	size:1;	signed:0;
	field:unsigned char common_preempt_count;	offset:3;	size:1;	signed:0;
	field:int common_pid;	offset:4;	size:4;	signed:1;

	field:char prev_comm[16];	offset:8;	size:16;	signed:1;
	field:pid_t prev_pid;	offset:24;	size:4;	signed:1;
	field:int prev_prio;	offset:28;	size:4;	signed:1;
	field:long prev_state;	offset:32;	size:8;	signed:1;
	field:char next_comm[16];	offset:40;	size:16;	signed:1;
	field:pid_t next_pid;	offset:56;	size:4;	signed:1;
	field:int next_prio;	offset:60;	size:4;	signed:1;

The issue is that we now have a new scheduling class called
SCHED_DEADLINE, were prio is completely useless. We would like to add
the dynamic fields of "remaining runtime", "next deadline", "next
period".

Now sched_switch is also one of the most commonly used tracepoints, as
it lets a user see what preempts their process, what system services
are running and for how long, etc etc. The thing is, we don't want to
bloat that tracepoint. Adding fields for a scheduling class that is
used by a very small niche class, is a waste for everyone else.

One of the ideas I've had is to allow for "overlays". That is, we don't
want to add another trace_sched_switch() in the scheduler, as that will
add a little more overhead to the normal non tracing case. Thus, since
we already have that hook (the trace_sched_switch) it would be good to
tap into it, and have another way to extract more data from the
tracepoint. That is, the overlay.

The problem we have is how to implement it?

We could make one tracepoint hook location have several different
"tracepoints" in the tracefs directory letting the user choose how much
information they want to trace. Have different tracepoints that can be
enabled for a single location, where it may show extended fields.

I know people would like to have a way to cut down some fields, as
real-estate in the ring buffer is of high value, and the smaller the
events are, the more data one can collect. People who use tracing
really do care about any wasted space (which is why we like to avoid
writing zeros in fields no longer valued, it makes it harder to get the
data you are after).

In summary, this is not another beat the dead horse how to do stable
tracepoints. The focus is, how to make tracepoints more user
customizable for their use cases.

-- Steve
