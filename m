Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2C3B9360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 14:49:35 +0000 (UTC)
Received: from resqmta-ch2-09v.sys.comcast.net
	(resqmta-ch2-09v.sys.comcast.net [69.252.207.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AE363B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 14:49:34 +0000 (UTC)
Date: Wed, 14 Oct 2015 09:49:33 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: Steven Rostedt <rostedt@goodmis.org>
In-Reply-To: <20151014092041.282117ac@gandalf.local.home>
Message-ID: <alpine.DEB.2.20.1510140944380.11727@east.gentwo.org>
References: <20151013124230.1a082d28@gandalf.local.home>
	<alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
	<20151014092041.282117ac@gandalf.local.home>
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

> > Hrm... Would there be a way to do Realtime without PREEMPT / PREEMPT_RT
> > and such things? Doing this performance degradation is pretty significant
> > and as far as I know makes this unacceptable for many uses. CONFIG_PREEMPT
> > is already a problem.
>
> The only RT that this would be good for is for CPU isolation and running
> tasks that don't ever interact with the kernel. This is a completely
> different use case than what PREEMPT_RT is about, although, NO_HZ_FULL
> would be beneficial to both scenarios.

Well I though that was the only feasable way to get to a good RT
implementation in the kernel. If you can free up the processor from OS
activities by shifting them around then there is less of a need to
sprinkle preempt calls all over the code.

> > Or change CONFIG_PREEMPT first to be less intrusive? Have defined points
> > where preemption can occur like CONFIG_PREEMPT_VOLUNTARY? Could we have
> > realtime based on that? If we can keep the time between voluntary
> > preemption short enough then this should do this as well. Plus we can
> > likely reduce kernel complexity because code can rely on  not being
> > rescheduled unless an explicit call was done.
>
> Again, what you want has nothing to do with PREEMPT_RT, and not what
> I'm proposing here for a tech topic.

PREEMPT is already a problem and it has acceptance problems. So why go
further down the rathole? Lets fix this so that it is good and can offer
the lowest latencies that the hardware supports.

PREEMPT_RT was developed at a time where we only had one or two hardware
threads. Now we we have lots and we can separate things out to allow
deterministic execution on a few cores. That will be much better than
forcing all the kernel code to be deterministric.
