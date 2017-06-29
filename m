Return-Path: <compudj@efficios.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AFC79A82
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 21:20:28 +0000 (UTC)
Received: from mail.efficios.com (mail.efficios.com [167.114.142.141])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A511D19B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 21:20:27 +0000 (UTC)
Date: Thu, 29 Jun 2017 21:20:54 +0000 (UTC)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <152520246.5707.1498771254819.JavaMail.zimbra@efficios.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: Peter Zijlstra <peterz@infradead.org>,
	Julien Desfossez <jdesfossez@efficios.com>,
	daolivei <daolivei@redhat.com>, bristot <bristot@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: [Ksummit-discuss] [TECH TOPIC] Pulling away from the tracing ABI
	quicksands
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Our attempts at extending the Linux scheduler Tracepoints [1,2,3] to cover sched
rt and deadline policies went fairly well until we reached the point where
we had to extend the tracing ABI exposed to user-space by Ftrace through the
DebugFS tracing sub-directory. We aim to expose more accurate and complete
scheduler information (based on the scheduling class), and eventually deprecate
implementation-specific fields that should never have been exposed to user-space
in the first place.

Example of problems we are facing:

  * Humans on the receiving end of a kernel ABI

    Should we limit the design of kernel ABIs based on their direct
    use by humans through echo and redirections, or can we aim design
    of those interfaces at scripts and user-space programs/libraries ?

    A simple and extensible kernel ABI is rarely an easy to use end-user
    interface.

  * How can we deprecate, remove, or re-purpose a field in an
    event ? For instance, the "prio" field in the scheduler
    instrumentation is an internal implementation detail.

Perhaps it would be good to use the opportunity to meet at the
Kernel Summit and discuss this issue.

Thanks,

Mathieu and Julien


[1] [RFC PATCH 5/6] tracing: extend scheduling tracepoints
    http://lkml.kernel.org/r/1474060148-13171-5-git-send-email-jdesfossez@efficios.com
[2] [RFC PATCH v2 0/5] Additional scheduling information in tracepoints
    http://lkml.kernel.org/r/1474649375-28056-1-git-send-email-jdesfossez@efficios.com
[3] [RFC PATCH v3 0/2] Extend scheduling tracepoints
    http://lkml.kernel.org/r/1484327993-5036-1-git-send-email-jdesfossez@efficios.com

-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com
