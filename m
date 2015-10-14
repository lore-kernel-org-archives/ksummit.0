Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7FB32273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 11:45:33 +0000 (UTC)
Received: from resqmta-ch2-08v.sys.comcast.net
	(resqmta-ch2-08v.sys.comcast.net [69.252.207.40])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 35F1D16B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 11:45:33 +0000 (UTC)
Date: Wed, 14 Oct 2015 06:45:31 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: Steven Rostedt <rostedt@goodmis.org>
In-Reply-To: <20151013124230.1a082d28@gandalf.local.home>
Message-ID: <alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
References: <20151013124230.1a082d28@gandalf.local.home>
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

On Tue, 13 Oct 2015, Steven Rostedt wrote:

>  preempt_disable and local_irq_disable annotations

Hrm... Would there be a way to do Realtime without PREEMPT / PREEMPT_RT
and such things? Doing this performance degradation is pretty significant
and as far as I know makes this unacceptable for many uses. CONFIG_PREEMPT
is already a problem.

Or change CONFIG_PREEMPT first to be less intrusive? Have defined points
where preemption can occur like CONFIG_PREEMPT_VOLUNTARY? Could we have
realtime based on that? If we can keep the time between voluntary
preemption short enough then this should do this as well. Plus we can
likely reduce kernel complexity because code can rely on  not being
rescheduled unless an explicit call was done.
