Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5D5999C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 10:00:19 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4840E14D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 10:00:17 +0000 (UTC)
Date: Thu, 21 Jul 2016 12:00:14 +0200
From: Jan Kara <jack@suse.cz>
To: "Wangnan (F)" <wangnan0@huawei.com>
Message-ID: <20160721100014.GB7901@quack2.suse.cz>
References: <578F36B9.802@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <578F36B9.802@huawei.com>
Cc: Peter Zijlstra <peterz@infradead.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel tracing and end-to-end
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

On Wed 20-07-16 16:30:49, Wangnan (F) wrote:
> This is unrealistic, but we don't need to be extreme. Showing the
> bottleneck of a software to point out the right direction is enough to
> make people happy.  However, even if we have the full kernel source code,
> finding bottleneck from an unfamiliarity subsystem is still challenging
> since we don't know how to start.

Well, you'll always need quite some knowledge to be able to meaningfully
analyze and fix performance issues. Otherwise it is just stabbing in the
dark. But I do agree and in some cases trying to find out where the time is
actually spent requires fairly tedious analysis. There are nice tools like
Brendan Gregg's flame graphs or even off-cpu flame graphs which help quite
a bit but connecting the dots isn't always easy.

> There are two type of performance metrics: throughput and latency. Both
> of them related to the concept of 'process': time between event 'A' and
> event 'B'.  Throughput measures how many processes complete in fixed
> time, latency measures how long a process take. Given a performance
> result, a nature idea is to find the two ends 'A' and 'B' of the process
> it concerns, and break down the time from 'A->B' to find the critical
> phase. We call it 'end-to-end performance breakdown'.
> 
> A lot of facilities have already in kernel to support end-to-end
> performance breakdown. For example, u/kprobes allows us to trace event
> 'A' and 'B', there are many tracepoitns have already been deployed among
> many subsystems, BPF allows us to connect events belong to a specific
> request, and we have perf to drive all of them. We even have subsystem
> specific tools like blktrace for it.  However, I find it still hard to do
> the breakdown from user's view. For example, consider a file writing
> process, we want to break down the performance from 'write' system call
> to the device. Getting a closer look, we can see vfs, filesystem, driver
> and device layers, each layers has queues and buffers, they break larger
> requests and merge small requests, finally we find it is even hard to
> define a proper 'process'.
> 
> Compare with CPU side, Intel has release its TopDown model, allows us to
> break instruction execution into 4 stages, and further break each stage
> to smaller stages. I also heard from hisilicon that in ARM64 processor we
> have similar model. TopDown model is simple: monitoring at some PMU and
> doing simple computation. Why can't we do this in software?
> 
> The problem is the lacking of a proper performance model. In my point of
> view, it is linux kernel's responsibility to guide us to do the
> breakdown.  Subsystem designers should expose the principle processes to
> connect tracepoints together.  Kernel should link models from different
> subsystems. Model should be expressed in a uniformed language, so a tool
> like perf can do the right thing automatically.

So I'm not sure I understand what do you mean. Let's take you write(2)
example - if you'd like to just get a break out where do we spend time
during the syscall (including various sleeps), then off-cpu flame graphs
[1] already provide quite a reasonable overview. If you really look for
more targetted analysis (e.g. one in a million write has too large
latency), then you need something different. Do I understand right that
you'd like to have some way to associate trace events with some "object"
(being it IO, syscall, or whatever) so that you can more easily perform
targetted analysis for cases like this? 

> I suggest to discuss following topics in this year's kernel summit:
> 
>  1. Is end-to-end performance breakdown really matter?
> 
>  2. Should we design a framework to help kernel developers to express and
>  expose performance model to help people do the end-to-end performance
>  breakdown?
> 
>  3. What external tools we need to do the end-to-end performance breakdown?

So I think improvements in performance analysis are always welcome but
current proposal seems to be somewhat handwavy so I'm not sure what outcome
you'd like to get from the discussion... If you have a more concrete
proposal how you'd like to achieve what you need, then it may be worth
discussion.

As a side note I know that Google (and maybe Facebook, not sure here) have
out-of-tree patches which provide really neat performance analysis
capabilities. I have heard they are not really upstreamable because they
are horrible hacks but maybe they can be a good inspiration for this work.
If we could get someone from these companies to explain what capabilities
they have and how they achieve this (regardless how hacky the
implementation may be), that may be an interesting topic.

								Honza

[1] http://www.brendangregg.com/blog/2016-01-20/ebpf-offcpu-flame-graph.html
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
