Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B29BA9B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 19:17:37 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id EDA0018A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 19:17:36 +0000 (UTC)
Message-ID: <1444850255.2220.60.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Christoph Lameter <cl@linux.com>
Date: Wed, 14 Oct 2015 12:17:35 -0700
In-Reply-To: <alpine.DEB.2.20.1510141345540.13663@east.gentwo.org>
References: <20151013124230.1a082d28@gandalf.local.home>
	<alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
	<20151014092041.282117ac@gandalf.local.home>
	<alpine.DEB.2.20.1510140944380.11727@east.gentwo.org>
	<20151014112225.26771952@gandalf.local.home>
	<alpine.DEB.2.20.1510141303540.13301@east.gentwo.org>
	<20151014143244.19c2512a@gandalf.local.home>
	<alpine.DEB.2.20.1510141345540.13663@east.gentwo.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
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

On Wed, 2015-10-14 at 13:56 -0500, Christoph Lameter wrote:
> On Wed, 14 Oct 2015, Steven Rostedt wrote:
> 
> > If PREEMPT_RT is not the way to go, then why did several companies just
> > invest into getting it mainlined?
> 
> I guess they want "realtime" support. Better talk to them what they mean
> by realtime. I have never seen a real use case for PREEMPT_RT. Instead a
> lot of high level "realtime" talk and disappointment when they found out
> what the real constraints and limitations are.
> 
> > Again, real-time does not mean real-fast. How do you handle priority
> > inversion? How do you handle outliers? Which the Linux kernel has many
> > huge outliers if things are not handled correctly, which PREEMPT_RT
> > solve (making it, by the way, a hard real time design).  If you can
> > accept a single outlier, then that's soft real-time, and you are
> > talking about something completely different.
> 
> You could put the processing for the stuff that creates outliers on a
> different cpu? Layout the processing in such a way to guarantee no
> outliers on the "realtime" processors?
> 
> > Hard real-time is about worse case latency, not the average latency.
> > That's called "soft real-time"
> 
> Of course. Thats why I suggested combining it with the NOHZ appraoch. Put
> the pieces that can create outliers on cpus not used for "realtime"
> threads. Ensure that what is running on a hard realtime cpu can complete
> in a defined timed interval.
> 
> Realtime is about guarantees of a response in a certain time period. That
> is why "soft realtime" is not making much sense. There is no guarantee
> anymore. Just more overhead. OS processing slows down due to the
> sprinkling of preempt code but the timing guarantees that one seeks can be
> violated. Increasing the processing overhead may increase the number of
> failures to process a given task in a time period that one wants
> guaranteed. So better run without preempt in order to have a higher chance
> to finish in time? That is at least what my industry has decided to do.
> 
> But we really wish we had a hard realtime capability if we must respond in
> a certain time period. Sadly there is no solution in sight right now.

Yes, there is: PREEMPT_RT is (or can be if configured correctly) hard
real time.  The point, as Steve told you several times, is to sacrifice
performance for determinism.  As long as the general system deadlines
still fit, then the solution works ... well as it happens: this covers
many use cases because we sacrifice microseconds for millisecond
deadlines (or things even further apart in timescales); there's a huge
number of industrial use cases in this range.

What you're saying is that sacrificing performance is unacceptable for
your deadlines, so you're not able to use this solution: fair enough, it
doesn't cover all possible use cases, just a majority.  However trying
to imply that it's not a solution because it doesn't solve your problem
is really not going to motivate people involved to want to help you.

James
