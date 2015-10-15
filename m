Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A021E267
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 20:22:00 +0000 (UTC)
Date: Thu, 15 Oct 2015 22:21:20 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Christoph Lameter <cl@linux.com>
In-Reply-To: <alpine.DEB.2.20.1510150903480.20958@east.gentwo.org>
Message-ID: <alpine.DEB.2.11.1510152122050.3960@nanos>
References: <20151013124230.1a082d28@gandalf.local.home>
	<alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
	<20151014092041.282117ac@gandalf.local.home>
	<alpine.DEB.2.20.1510140944380.11727@east.gentwo.org>
	<20151014112225.26771952@gandalf.local.home>
	<alpine.DEB.2.20.1510141303540.13301@east.gentwo.org>
	<20151014143244.19c2512a@gandalf.local.home>
	<alpine.DEB.2.20.1510141345540.13663@east.gentwo.org>
	<alpine.DEB.2.11.1510142203350.3960@nanos>
	<alpine.DEB.2.20.1510150903480.20958@east.gentwo.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Mainlining PREEMPT_RT
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 15 Oct 2015, Christoph Lameter wrote:
> On Wed, 14 Oct 2015, Thomas Gleixner wrote:
> 
> > Sure, you just add another server to it and be done. That's not what
> > people in the embedded space can do.
> 
> Why not? Seems that even small devices have multiple cores? I just got a
> quad core cheapo phone for $50. Even the Intel Edison platform is dual
> core. So it may be possible to have deterministic hard real time on one
> core.

That fits into all current use cases of Preempt-RT how?

Please come up with a functional concept for applications like PLCs
(Programmable Logic Controllers) where the end customer defines the
application and therefor the number of involved thread and their
particular deadline requirements. That would for a change start a
useful discussion instead of your 'spend a CPU' mantra.

> > They need to run highly multi threaded applications on a small system
> > and still need the guarantee that they meet their dead lines. They
> > cannot afford the waste of a CPU busy spinning in order to process the
> > next event. Neither they have the number of cores which would be
> > needed nor they can afford the energy wasted by it.
> 
> There could be deterministic wake up logic for real time cpus? If you can
> push off most of the effort on another cpu its likely possible to make the
> behavior much more deterministic for a cpu that does real time processing.
> Why does spinning come up here?

Because that is what you and others do to solve your particular
problem, but it does not work for a application like Motion Control,
where you have a hierarchical control mechanism running in different
threads with different priorities, different code execution times and
different deadline requirements.

> > Once again: The definition of Real-Time is determinism, not speed.
> 
> Yes then please do deterministic latencies. No exceptions. No soft
> realtime.

Preempt-RT is not about soft realtime. It gives you hard guarantees
versus your defined deadlines, but only when the deadline fits into
the limitations of the hardware and the OS.

Realtime is not about as fast as possible, it's about as fast as
specified. And that specified can be anything from nanoseconds to
seconds or even hours.

The point is, if you miss your deadline, no matter how big or small
that deadline is, it's going to be a violation of the guarantee.

So if your deadline requirements are in a range which cannot be
satisfied by PREEMPT-RT, then you need a different solution. Bare
metal busy looping or whatever.

> > You're design goal is completely different. Your design goal is
> > sacrifying a single CPU in order to have FAST response on an event and
> > high throughput at the same time. That has nothing to do with real
> > time. Go and read on OS theory to figure out why.
> 
> ???. Please stay on topic. Maybe you would have benefited from the
> clases on OS design that I taught. But maybe reading comprehension would
> be much more urgent.

Lets start to talk about the terms used.

Deadline: The maximum time between an event which triggers a
	  computation and the time when the computation has completed.

Latency:  There are two types of latency:

	  1) The delta between the desired time of starting a computation
	     and the actual start of the computation.

	  2) The delta between the theoretical execution time of a
	     computation and the actual execution time

So the mathematical definition of a real-time system is:

   Te:  Trigger time of the computation
   Td:  The relative from from Te to completion of the computation,
        aka deadline
   Tsl:	The delta between Te and actual start of the computation
   Trt:	The theoretical (optimal) runtime of the computation
   Trl:	The delta between Trt and the actual runtime of the computation

   Ergo:

   Te + Td < Te + Tsl + Trt + Trl

   Any OS which can guarantee that under all circumstances qualifies
   as a hard real time OS.
 
The hardware and the OS define the maximum values of

   Trt is defined by the optimal performance of the hardware when the
   computation runs completely undisturbed.

   Tsl and Trl are influenced by both hardware and OS. So we get
   maximum values for Tsl and Trl: Tsl_max and Trl_max.

So for a given computation you can compute the deadline guarantee of a
given system:

   Td < Tsl_max + Trt + Trl_max

The application specifies Td, i.e. the deadline. If your applications
deadline requirements do not fit into the deadline guarantee of the
given hardware/OS combination, then you need to look after a different
solution.

Preempt-RT has its limitations how small Tsl_max and Trl_max can
become. But within these limitations it gives you the guarantee that
you meet your deadline.

So for applications, and those are real world applications which use
Preempt-RT today, which can tolerate the slightly larger latencies,
but at the same time require the functionality of a full blown OS
including load balancing and scheduling of non-RT background work on
multicore systems, Preempt-RT is the appropriate choice.

For other applications, which aim for way lower Tsl_max and Trl_max,
NOHZ_FULL might be the solution if they can spend a core for a
particular computation.

There are certainly applications out there which need both. Preempt-RT
on one set of cores to handle the tasks with less demanding deadline
requirements and NOHZ_FULL for tasks which aim for extreme low Tsl_max
and Trl_max values.

There are other applications, which will need a microcontroller or a
FPGA assisting because neither Preempt-RT nor NOHZ_FULL nor any other
OS nor bare metal can meet their requirements due to the hardware
immanent latencies.

There is no one fits it all solution in the variety of use
cases.

Preempt-RT covers a large range of use cases throughout the industry,
but I'm happy to switch to a different approach if that approach can
handle the requirements which are handled by Preempt-RT today. To my
knowledge neither NOHZ_FULL nor Xenomai nor bare metal fits, but I'm
happy to be educated on that.

Thanks,

	tglx
