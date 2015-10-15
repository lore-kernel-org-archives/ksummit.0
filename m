Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA2569C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 14:23:01 +0000 (UTC)
Received: from resqmta-ch2-03v.sys.comcast.net
	(resqmta-ch2-03v.sys.comcast.net [69.252.207.35])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BDA331BC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 14:23:00 +0000 (UTC)
Date: Thu, 15 Oct 2015 09:22:58 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: Thomas Gleixner <tglx@linutronix.de>
In-Reply-To: <alpine.DEB.2.11.1510142203350.3960@nanos>
Message-ID: <alpine.DEB.2.20.1510150903480.20958@east.gentwo.org>
References: <20151013124230.1a082d28@gandalf.local.home>
	<alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
	<20151014092041.282117ac@gandalf.local.home>
	<alpine.DEB.2.20.1510140944380.11727@east.gentwo.org>
	<20151014112225.26771952@gandalf.local.home>
	<alpine.DEB.2.20.1510141303540.13301@east.gentwo.org>
	<20151014143244.19c2512a@gandalf.local.home>
	<alpine.DEB.2.20.1510141345540.13663@east.gentwo.org>
	<alpine.DEB.2.11.1510142203350.3960@nanos>
Content-Type: text/plain; charset=US-ASCII
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

On Wed, 14 Oct 2015, Thomas Gleixner wrote:

> Sure, you just add another server to it and be done. That's not what
> people in the embedded space can do.

Why not? Seems that even small devices have multiple cores? I just got a
quad core cheapo phone for $50. Even the Intel Edison platform is dual
core. So it may be possible to have deterministic hard real time on one
core.

> They need to run highly multi threaded applications on a small system
> and still need the guarantee that they meet their dead lines. They
> cannot afford the waste of a CPU busy spinning in order to process the
> next event. Neither they have the number of cores which would be
> needed nor they can afford the energy wasted by it.

There could be deterministic wake up logic for real time cpus? If you can
push off most of the effort on another cpu its likely possible to make the
behavior much more deterministic for a cpu that does real time processing.
Why does spinning come up here?

> > violated. Increasing the processing overhead may increase the number of
> > failures to process a given task in a time period that one wants
> > guaranteed. So better run without preempt in order to have a higher chance
> > to finish in time? That is at least what my industry has decided to do.
>
> Your industry is a total different application space. Please stop to
> project your narrow view of the application space onto everybody.

This is actually what I heard from the Dronecode people and what I
mentioned to you before in Dublin. Stop trying to make silly arguments
that the cases I discuss are just special. These attempts to kill the
discussion make it questionable if we can actually discuss this at all.
The dronecode people went to a special RTOS on a special processor because
the "realtime" offered by preempt_rt was not really realtime. They needed
hard realtime.

> The key of an RTOS is the deterministic guarantee for the time it
> takes to enqueue a given task up to the completion of the task. The
> design goal is not high throughput. The design goal is to achieve
> latency guarantees. An RTOS sacrifices performance and throughput to
> achieve that guarantees.

Indeed please lets do that. That means hard real time. And lets limit the
sacrifices as much as possible.

> Once again: The definition of Real-Time is determinism, not speed.

Yes then please do deterministic latencies. No exceptions. No soft
realtime.

> You're design goal is completely different. Your design goal is
> sacrifying a single CPU in order to have FAST response on an event and
> high throughput at the same time. That has nothing to do with real
> time. Go and read on OS theory to figure out why.

???. Please stay on topic. Maybe you would have benefited from the
clases on OS design that I taught. But maybe reading comprehension would
be much more urgent.

> I'm well aware that your use case exists. It was one of the reasons
> why I started the NOHZ FULL effort in the first place. Please, fix
> your NOHZ FULL isolation problem and stop imposing your completely
> domain specific blinkerdness on everybody else.

I have no particular use case for my company in mind here. This is what I
hear when talking to various companies in a number of different areas of
computing that have tried preempt_rt.
