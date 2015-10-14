Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1D6FC282
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 20:25:52 +0000 (UTC)
Date: Wed, 14 Oct 2015 22:24:45 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Christoph Lameter <cl@linux.com>
In-Reply-To: <alpine.DEB.2.20.1510141345540.13663@east.gentwo.org>
Message-ID: <alpine.DEB.2.11.1510142203350.3960@nanos>
References: <20151013124230.1a082d28@gandalf.local.home>
	<alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
	<20151014092041.282117ac@gandalf.local.home>
	<alpine.DEB.2.20.1510140944380.11727@east.gentwo.org>
	<20151014112225.26771952@gandalf.local.home>
	<alpine.DEB.2.20.1510141303540.13301@east.gentwo.org>
	<20151014143244.19c2512a@gandalf.local.home>
	<alpine.DEB.2.20.1510141345540.13663@east.gentwo.org>
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

Christoph,

On Wed, 14 Oct 2015, Christoph Lameter wrote:

> On Wed, 14 Oct 2015, Steven Rostedt wrote:
> 
> > If PREEMPT_RT is not the way to go, then why did several companies just
> > invest into getting it mainlined?
> 
> I guess they want "realtime" support. Better talk to them what they mean
> by realtime. I have never seen a real use case for PREEMPT_RT. Instead a
> lot of high level "realtime" talk and disappointment when they found out
> what the real constraints and limitations are.

Just because you did not see any real use does not mean, there is no
real use. There are whole application classes out there, which use it
today. Look at the OSADL member roaster and figure out what those
companies are doing.

> You could put the processing for the stuff that creates outliers on a
> different cpu? Layout the processing in such a way to guarantee no
> outliers on the "realtime" processors?

Sure, you just add another server to it and be done. That's not what
people in the embedded space can do.

They need to run highly multi threaded applications on a small system
and still need the guarantee that they meet their dead lines. They
cannot afford the waste of a CPU busy spinning in order to process the
next event. Neither they have the number of cores which would be
needed nor they can afford the energy wasted by it.

> Realtime is about guarantees of a response in a certain time period. That
> is why "soft realtime" is not making much sense. There is no guarantee
> anymore. Just more overhead. OS processing slows down due to the
> sprinkling of preempt code but the timing guarantees that one seeks can be
> violated. Increasing the processing overhead may increase the number of
> failures to process a given task in a time period that one wants
> guaranteed. So better run without preempt in order to have a higher chance
> to finish in time? That is at least what my industry has decided to do.

Your industry is a total different application space. Please stop to
project your narrow view of the application space onto everybody.

And your interpretation of real time is just silly. 

The key of an RTOS is the deterministic guarantee for the time it
takes to enqueue a given task up to the completion of the task. The
design goal is not high throughput. The design goal is to achieve
latency guarantees. An RTOS sacrifices performance and throughput to
achieve that guarantees.

Once again: The definition of Real-Time is determinism, not speed.

> But we really wish we had a hard realtime capability if we must respond in
> a certain time period. Sadly there is no solution in sight right now.

You're design goal is completely different. Your design goal is
sacrifying a single CPU in order to have FAST response on an event and
high throughput at the same time. That has nothing to do with real
time. Go and read on OS theory to figure out why.

I'm really tired of your obnoxious claims, that the only way of doing
RT is what you think it might be.

I'm well aware that your use case exists. It was one of the reasons
why I started the NOHZ FULL effort in the first place. Please, fix
your NOHZ FULL isolation problem and stop imposing your completely
domain specific blinkerdness on everybody else.

Thanks,

	tglx
