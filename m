Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A4F0282
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 18:12:08 +0000 (UTC)
Received: from resqmta-ch2-11v.sys.comcast.net
	(resqmta-ch2-11v.sys.comcast.net [69.252.207.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 179081AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 18:12:07 +0000 (UTC)
Date: Wed, 14 Oct 2015 13:12:06 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: Steven Rostedt <rostedt@goodmis.org>
In-Reply-To: <20151014112225.26771952@gandalf.local.home>
Message-ID: <alpine.DEB.2.20.1510141303540.13301@east.gentwo.org>
References: <20151013124230.1a082d28@gandalf.local.home>
	<alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
	<20151014092041.282117ac@gandalf.local.home>
	<alpine.DEB.2.20.1510140944380.11727@east.gentwo.org>
	<20151014112225.26771952@gandalf.local.home>
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

On Wed, 14 Oct 2015, Steven Rostedt wrote:

> Your use case is for large servers doing high frequency trading.

The use case is for regular servers wanting to use the processor
without OS interference in order to guarantee as much as possible a fast
"realtime" response (that term is used in this context by numerous users
of NOHZ. May be questionable I know but people use it that way).

> PREEMPT_RT works for that too, but for when the applications actually
> use the kernel. PREEMPT_RT is also used for embedded, where your use
> case does not fit.

The work on NOHZ was started and is still pushed by Chris Metcalf who is
working on embedded systems.

> Christoph, there's other use cases than what you want. This proposal is
> about PREEMPT_RT and there's a lot of use cases for that. Just because
> it's not what you need doesn't negate its usefulness.

Not seen it yet. Just references to customers that I have never worked
with. I keep heareing that RT is not useful because its soft realtime and
not guaranteed to keep its time constraints. Lets implement a real "hard"
realtime facility. Its possible if the processor is free of the OS.

> Christoph, feel free to ignore this thread and this topic. It's not for
> you. But there's others out there that don't use 1000 CPUs and find
> what we are doing quite useful.

Have been working with regular business class servers with two socket for
the last 8 years. The 1000s of cpus was a decade ago when I worked for
SGI.

This is regarding a common use case and AFAICT preempt and preempt_rt miss
the mark by increasing kernel code complexity significantly and thus
slowing things (cache footprint!!!) down instead of doing the obvious
which would be an enhanced NOHZ approach where a cpu can dedicate its full
power to a realtime load that may have to be fast and deterministic as the
hardware allows.
