Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2F00CA1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 22:15:37 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0057.hostedemail.com
	[216.40.44.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BF343148
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 22:15:36 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave06.hostedemail.com (Postfix) with ESMTP id CE3261724E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 Sep 2016 22:15:35 +0000 (UTC)
Date: Tue, 6 Sep 2016 18:15:32 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Alexey Dobriyan <adobriyan@gmail.com>
Message-ID: <20160906181532.75bed9db@gandalf.local.home>
In-Reply-To: <20160906220213.GA16979@p183.telecom.by>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
	<20160906220213.GA16979@p183.telecom.by>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
 stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 7 Sep 2016 01:02:13 +0300
Alexey Dobriyan <adobriyan@gmail.com> wrote:

> On Wed, Sep 07, 2016 at 12:36:44AM +0300, Alexey Dobriyan wrote:
> > P.S.: techically every kernel release almost certainly breaks crash(1)
> > program, program many people on this list should be familiar with.
> > It is unclear why rules should be different for tracepoints.  
> 
> Concrete example:
> 
> 	TRACE_EVENT(sched_switch,
>         TP_STRUCT__entry(
>                 __array(        char,   prev_comm,      TASK_COMM_LEN   )
>                 __field(        pid_t,  prev_pid                        )
>                 __field(        int,    prev_prio                       )
>                 __field(        long,   prev_state
> 		^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> 
> struct task_struct::state is long but it looks like a historical
> artifact, it can be just int. In this case it is easy to extend value and
> preserve compatibility.

Oh, tracepoints can change, and they do all the time. It's only if that
change breaks existing tools.

The sched_wake_up has a "success" field that tools use to know if the
wake up was successful or not. That's because the old code where the
tracepoint was located was hit even if the task was already awake and
nothing happened. Today the tracepoint is only called when a wake up
actually happens. That is, "success" is always true. But we need to
keep that there, because existing tools depend on it.

-- Steve
