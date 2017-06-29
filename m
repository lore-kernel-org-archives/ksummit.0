Return-Path: <SRS0=0g6V=6C=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 34E07898
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 23:55:41 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8384317C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 23:55:40 +0000 (UTC)
Date: Thu, 29 Jun 2017 19:55:37 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Message-ID: <20170629195537.534445e7@gandalf.local.home>
In-Reply-To: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
References: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Peter Zijlstra <peterz@infradead.org>,
	Julien Desfossez <jdesfossez@efficios.com>,
	daolivei <daolivei@redhat.com>, bristot <bristot@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Pulling away from the tracing
	ABI quicksands
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 29 Jun 2017 21:20:54 +0000 (UTC)
Mathieu Desnoyers <mathieu.desnoyers@efficios.com> wrote:

> Our attempts at extending the Linux scheduler Tracepoints [1,2,3] to cover sched
> rt and deadline policies went fairly well until we reached the point where
> we had to extend the tracing ABI exposed to user-space by Ftrace through the
> DebugFS tracing sub-directory. We aim to expose more accurate and complete
> scheduler information (based on the scheduling class), and eventually deprecate
> implementation-specific fields that should never have been exposed to user-space
> in the first place.
> 
> Example of problems we are facing:
> 
>   * Humans on the receiving end of a kernel ABI
> 
>     Should we limit the design of kernel ABIs based on their direct
>     use by humans through echo and redirections, or can we aim design
>     of those interfaces at scripts and user-space programs/libraries ?

Well, that human is mainly Peter ;-)

But we also can't break tools that user the sched_switch tracepoint,
namely trace-cmd and perf, as well as powertop.

> 
>     A simple and extensible kernel ABI is rarely an easy to use end-user
>     interface.
> 
>   * How can we deprecate, remove, or re-purpose a field in an
>     event ? For instance, the "prio" field in the scheduler
>     instrumentation is an internal implementation detail.

One way is to fix all tools that use it and make sure they get out to
the distros before making the change.

> 
> Perhaps it would be good to use the opportunity to meet at the
> Kernel Summit and discuss this issue.

Agreed. In this topic, I would like to focus more on extending, or
implementations on overlaying tracepoints where one tracepoint exists
in the code, but there's multiple ways to display it.

-- Steve


> 
> Thanks,
> 
> Mathieu and Julien
> 
> 
> [1] [RFC PATCH 5/6] tracing: extend scheduling tracepoints
>     http://lkml.kernel.org/r/1474060148-13171-5-git-send-email-jdesfossez@efficios.com
> [2] [RFC PATCH v2 0/5] Additional scheduling information in tracepoints
>     http://lkml.kernel.org/r/1474649375-28056-1-git-send-email-jdesfossez@efficios.com
> [3] [RFC PATCH v3 0/2] Extend scheduling tracepoints
>     http://lkml.kernel.org/r/1484327993-5036-1-git-send-email-jdesfossez@efficios.com
> 
