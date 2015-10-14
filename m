Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BFAC3323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 13:20:46 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0152.hostedemail.com
	[216.40.44.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 59065192
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 13:20:46 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave06.hostedemail.com (Postfix) with ESMTP id B2A39172C12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Oct 2015 13:20:45 +0000 (UTC)
Date: Wed, 14 Oct 2015 09:20:41 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Christoph Lameter <cl@linux.com>
Message-ID: <20151014092041.282117ac@gandalf.local.home>
In-Reply-To: <alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
References: <20151013124230.1a082d28@gandalf.local.home>
	<alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
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

On Wed, 14 Oct 2015 06:45:31 -0500 (CDT)
Christoph Lameter <cl@linux.com> wrote:

> On Tue, 13 Oct 2015, Steven Rostedt wrote:
> 
> >  preempt_disable and local_irq_disable annotations
> 
> Hrm... Would there be a way to do Realtime without PREEMPT / PREEMPT_RT
> and such things? Doing this performance degradation is pretty significant
> and as far as I know makes this unacceptable for many uses. CONFIG_PREEMPT
> is already a problem.

The only RT that this would be good for is for CPU isolation and running
tasks that don't ever interact with the kernel. This is a completely
different use case than what PREEMPT_RT is about, although, NO_HZ_FULL
would be beneficial to both scenarios.

> 
> Or change CONFIG_PREEMPT first to be less intrusive? Have defined points
> where preemption can occur like CONFIG_PREEMPT_VOLUNTARY? Could we have
> realtime based on that? If we can keep the time between voluntary
> preemption short enough then this should do this as well. Plus we can
> likely reduce kernel complexity because code can rely on  not being
> rescheduled unless an explicit call was done.

Again, what you want has nothing to do with PREEMPT_RT, and not what
I'm proposing here for a tech topic.

-- Steve
