Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C1F9583D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 18:33:07 +0000 (UTC)
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 112A7FD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 18:33:07 +0000 (UTC)
Received: by lbnk3 with SMTP id k3so80007938lbn.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 09 Jul 2015 11:33:05 -0700 (PDT)
MIME-Version: 1.0
From: Andy Lutomirski <luto@amacapital.net>
Date: Thu, 9 Jul 2015 11:32:45 -0700
Message-ID: <CALCETrVPe7ijOHY5BXLPCG5VBxadeZoUDLOBMX+jEFnJynJ8FA@mail.gmail.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: Peter Zijlstra <peterz@infradead.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Subject: [Ksummit-discuss] [CORE TOPIC] lightweight per-cpu locks /
	restartable sequences
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Several people have suggested that Linux should provide users with a
lightweight mechanism that allows light-weight fancy per-cpu
operations.  This could be used to implement free lists or counters
without any barriers or atomic operations, for example.

There are at least three approaches floating around.  Paul Turner
proposed a single block of userspace code that aborts if it's
preempted -- within that block, percpu variables can be used safely.
Mathieu Desnoyers proposed a more complex variant.  I proposed a much
simpler approach of just offering percpu gs bases on x86, allowing
cmpxchg (as opposed to lock cmpxchg) to access percpu variables.

None of these should be hard to implement, but it would be nice to
hash out whether the kernel should support such a mechanism at all
and, if so, what it would look like.

Jon Corbet unsurprisingly has a nice writeup here:

http://lwn.net/SubscriberLink/650333/f23d07040a58cd46/

--Andy
