Return-Path: <compudj@efficios.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 042032B13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 21:06:51 +0000 (UTC)
Received: from mail.efficios.com (mail.efficios.com [167.114.142.138])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 012F4826
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 21:06:48 +0000 (UTC)
Received: from localhost (ip6-localhost [IPv6:::1])
	by mail.efficios.com (Postfix) with ESMTP id 076572A2E2E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:06:48 -0400 (EDT)
Received: from mail.efficios.com ([IPv6:::1])
	by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10032)
	with ESMTP id 4aJU2fE6QXQG
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:06:47 -0400 (EDT)
Received: from localhost (ip6-localhost [IPv6:::1])
	by mail.efficios.com (Postfix) with ESMTP id 73ED12A2E27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:06:47 -0400 (EDT)
Received: from mail.efficios.com ([IPv6:::1])
	by localhost (mail02.efficios.com [IPv6:::1]) (amavisd-new, port 10026)
	with ESMTP id jlvOMqZEiUQb
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:06:47 -0400 (EDT)
Received: from mail02.efficios.com (mail02.efficios.com [167.114.142.138])
	by mail.efficios.com (Postfix) with ESMTP id 629592A2E1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:06:47 -0400 (EDT)
Date: Mon, 8 Jul 2019 17:06:47 -0400 (EDT)
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <1763198136.14021.1562620007328.JavaMail.zimbra@efficios.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [TECH TOPIC] Beyond per-CPU atomics and rseq
 syscall: thoroughly abusing mm with the do_on_cpu syscall
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

The Restartable Sequences system call [1,2,3,4] introduced in Linux 4.18
has limitations which can be solved by introducing a bytecode
interpreter running in inter-processor interrupt context which accesses
user-space data.

However, there are a handful of reasons why accessing user-space
data from an IPI handler concurrently with user-space execution
is a bad idea, starting with page fault handling. This discussion
aims at gathering feedback from the mm community on the do_on_cpu
system call aiming to solve this gracefully.

[1] "PerCpu Atomics" http://www.linuxplumbersconf.org/2013/ocw/system/presentations/1695/original/LPC%20-%20PerCpu%20Atomics.pdf
[2] "Restartable sequences" https://lwn.net/Articles/650333/
[3] "Restartable sequences restarted" https://lwn.net/Articles/697979/
[4] "Restartable sequences and ops vectors" https://lwn.net/Articles/737662/

Thanks,

Mathieu

-- 
Mathieu Desnoyers
EfficiOS Inc.
http://www.efficios.com
