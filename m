Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CF7F8308
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 18:14:52 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0235.hostedemail.com
	[216.40.44.235])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6990FAF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 18:14:52 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id C05F13636
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Oct 2015 18:09:24 +0000 (UTC)
Date: Thu, 15 Oct 2015 14:09:17 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <20151015140917.26eb3306@gandalf.local.home>
In-Reply-To: <20151015172139.GA14167@quack.suse.cz>
References: <alpine.DEB.2.20.1510140639020.9093@east.gentwo.org>
	<20151014092041.282117ac@gandalf.local.home>
	<alpine.DEB.2.20.1510140944380.11727@east.gentwo.org>
	<20151014112225.26771952@gandalf.local.home>
	<alpine.DEB.2.20.1510141303540.13301@east.gentwo.org>
	<20151014143244.19c2512a@gandalf.local.home>
	<alpine.DEB.2.20.1510141345540.13663@east.gentwo.org>
	<alpine.DEB.2.11.1510142203350.3960@nanos>
	<alpine.DEB.2.20.1510150903480.20958@east.gentwo.org>
	<20151015111310.01903df1@gandalf.local.home>
	<20151015172139.GA14167@quack.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Christoph Lameter <cl@linux.com>, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Mainlining PREEMPT_RT
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 15 Oct 2015 19:21:39 +0200
Jan Kara <jack@suse.cz> wrote:

> I know close to nothing about RT so maybe a stupid question: Do I
> understand correctly that PREEMP_RT is there for use cases where processes
> have latency requirements but also need to do syscalls as a part of their
> work? Or is it that we cannot afford to isolate kernel on some CPUs because
> it's too hard to estimate how much work it will need to do, it wastes too
> much etc.? Or both?

Yes, it's for processes that do syscalls, and also might share
resources with non-rt threads. Isolating RT tasks on their own CPUs
help, but what happens when you have more RT threads than CPUs?

The deadline scheduler is also useful here, as it can guarantee that
tasks get a specified amount of cpu time per period. PREEMPT_RT removes
priority inversion, and lets tasks preempt pretty much anywhere in the
kernel. Yes, if you have a single RT task with nothing else running on
a CPU, it doesn't care about preemption, because it has nothing that it
needs to preempt.

If you can afford to place all your RT tasks on their own CPUs, then
running either PREEMPT_NONE or PREEMPT_VOLUNTARY, and NO_HZ_FULL, is
probably all that you need, as long as you don't have your RT tasks
grabbing any mutex that could be held by a non RT task, or an RT task
that shares the CPU with other RT tasks.

-- Steve
