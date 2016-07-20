Return-Path: <wangnan0@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8FBBA955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 08:31:22 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [58.251.152.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6334511A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 08:31:21 +0000 (UTC)
To: <ksummit-discuss@lists.linuxfoundation.org>
From: "Wangnan (F)" <wangnan0@huawei.com>
Message-ID: <578F36B9.802@huawei.com>
Date: Wed, 20 Jul 2016 16:30:49 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Peter Zijlstra <peterz@infradead.org>, Alexei Starovoitov <ast@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@kernel.org>
Subject: [Ksummit-discuss] [TECH TOPIC] Kernel tracing and end-to-end
	performance breakdown
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

I'd like to discuss kernel proformance and tracing.

Sometimes people ask us to make their business faster. They show us 
result from
benchmark (iobench), monitor (top, sar) and profiling (perf, oprofile), 
some of
them give brief introduction on their software. Base on these 
information, they
hope us to give magical advise like:

  Echo 1 to /proc/sys/kernel/xxx then the throughput will raise to 10 
times higher.
  Bind thread XX to core X then the latency will reduce from X s to X ns.
  ...

This is unrealistic, but we don't need to be extreme. Showing the 
bottleneck of
a software to point out the right direction is enough to make people happy.
However, even if we have the full kernel source code, finding bottleneck 
from an
unfamiliarity subsystem is still challenging since we don't know how to 
start.

There are two type of performance metrics: throughput and latency. Both 
of them
related to the concept of 'process': time between event 'A' and event 'B'.
Throughput measures how many processes complete in fixed time, latency 
measures
how long a process take. Given a performance result, a nature idea is to 
find
the two ends 'A' and 'B' of the process it concerns, and break down the time
from 'A->B' to find the critical phase. We call it 'end-to-end performance
breakdown'.

A lot of facilities have already in kernel to support end-to-end performance
breakdown. For example, u/kprobes allows us to trace event 'A' and 'B', 
there
are many tracepoitns have already been deployed among many subsystems, BPF
allows us to connect events belong to a specific request, and we have 
perf to
drive all of them. We even have subsystem specific tools like blktrace 
for it.
However, I find it still hard to do the breakdown from user's view. For 
example,
consider a file writing process, we want to break down the performance from
'write' system call to the device. Getting a closer look, we can see vfs,
filesystem, driver and device layers, each layers has queues and 
buffers, they
break larger requests and merge small requests, finally we find it is 
even hard
to define a proper 'process'.

Compare with CPU side, Intel has release its TopDown model, allows us to 
break
instruction execution into 4 stages, and further break each stage to smaller
stages. I also heard from hisilicon that in ARM64 processor we have similar
model. TopDown model is simple: monitoring at some PMU and doing simple
computation. Why can't we do this in software?

The problem is the lacking of a proper performance model. In my point of 
view,
it is linux kernel's responsibility to guide us to do the breakdown. 
Subsystem
designers should expose the principle processes to connect tracepoints 
together.
Kernel should link models from different subsystems. Model should be 
expressed
in a uniformed language, so a tool like perf can do the right thing
automatically.

I suggest to discuss following topics in this year's kernel summit:

  1. Is end-to-end performance breakdown really matter?

  2. Should we design a framework to help kernel developers to express 
and expose
     performance model to help people do the end-to-end performance 
breakdown?

  3. What external tools we need to do the end-to-end performance breakdown?

The list of potential attendees

Alexei Starovoitov
Arnaldo Carvalho de Melo
Ingo Molnar
Li Zefan
Peter Zijlstra
Steven Rostedt
