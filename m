Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DB4F826C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 19:48:34 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0004.hostedemail.com
	[216.40.44.4])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 60350196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 19:48:34 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 54D0C28F80A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 18:32:48 +0000 (UTC)
Date: Wed, 14 Oct 2015 14:32:44 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Christoph Lameter <cl@linux.com>
Message-ID: <20151014143244.19c2512a@gandalf.local.home>
In-Reply-To: <alpine.DEB.2.20.1510141303540.13301@east.gentwo.org>
References: <20151013124230.1a082d28@gandalf.local.home>
	<alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
	<20151014092041.282117ac@gandalf.local.home>
	<alpine.DEB.2.20.1510140944380.11727@east.gentwo.org>
	<20151014112225.26771952@gandalf.local.home>
	<alpine.DEB.2.20.1510141303540.13301@east.gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Wed, 14 Oct 2015 13:12:06 -0500 (CDT)
Christoph Lameter <cl@linux.com> wrote:

> On Wed, 14 Oct 2015, Steven Rostedt wrote:
> 
> > Your use case is for large servers doing high frequency trading.
> 
> The use case is for regular servers wanting to use the processor
> without OS interference in order to guarantee as much as possible a fast
> "realtime" response (that term is used in this context by numerous users

real-time does not mean real-fast.

> of NOHZ. May be questionable I know but people use it that way).
> 
> > PREEMPT_RT works for that too, but for when the applications actually
> > use the kernel. PREEMPT_RT is also used for embedded, where your use
> > case does not fit.
> 
> The work on NOHZ was started and is still pushed by Chris Metcalf who is
> working on embedded systems.

I never said that NO_HZ_FULL was not appropriate for embedded. But it's
also not real-time.

> 
> > Christoph, there's other use cases than what you want. This proposal is
> > about PREEMPT_RT and there's a lot of use cases for that. Just because
> > it's not what you need doesn't negate its usefulness.
> 
> Not seen it yet. Just references to customers that I have never worked
> with. I keep heareing that RT is not useful because its soft realtime and
> not guaranteed to keep its time constraints. Lets implement a real "hard"
> realtime facility. Its possible if the processor is free of the OS.

If PREEMPT_RT is not the way to go, then why did several companies just
invest into getting it mainlined?

> 
> > Christoph, feel free to ignore this thread and this topic. It's not for
> > you. But there's others out there that don't use 1000 CPUs and find
> > what we are doing quite useful.
> 
> Have been working with regular business class servers with two socket for
> the last 8 years. The 1000s of cpus was a decade ago when I worked for
> SGI.
> 
> This is regarding a common use case and AFAICT preempt and preempt_rt miss
> the mark by increasing kernel code complexity significantly and thus
> slowing things (cache footprint!!!) down instead of doing the obvious
> which would be an enhanced NOHZ approach where a cpu can dedicate its full
> power to a realtime load that may have to be fast and deterministic as the
> hardware allows.

Again, real-time does not mean real-fast. How do you handle priority
inversion? How do you handle outliers? Which the Linux kernel has many
huge outliers if things are not handled correctly, which PREEMPT_RT
solve (making it, by the way, a hard real time design).  If you can
accept a single outlier, then that's soft real-time, and you are
talking about something completely different.

Hard real-time is about worse case latency, not the average latency.
That's called "soft real-time"

-- Steve
