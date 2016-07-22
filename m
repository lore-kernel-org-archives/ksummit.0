Return-Path: <wangnan0@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0945E9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 03:36:39 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [58.251.152.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CF1A3242
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 03:36:36 +0000 (UTC)
To: Jan Kara <jack@suse.cz>
References: <578F36B9.802@huawei.com> <20160721100014.GB7901@quack2.suse.cz>
From: "Wangnan (F)" <wangnan0@huawei.com>
Message-ID: <5791949E.9010006@huawei.com>
Date: Fri, 22 Jul 2016 11:35:58 +0800
MIME-Version: 1.0
In-Reply-To: <20160721100014.GB7901@quack2.suse.cz>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Peter Zijlstra <peterz@infradead.org>, Arnaldo
	Carvalho de Melo <acme@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
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



On 2016/7/21 18:00, Jan Kara wrote:
> Hello,
>
> On Wed 20-07-16 16:30:49, Wangnan (F) wrote:
>
[SNIP]
>>
>> The problem is the lacking of a proper performance model. In my point of
>> view, it is linux kernel's responsibility to guide us to do the
>> breakdown.  Subsystem designers should expose the principle processes to
>> connect tracepoints together.  Kernel should link models from different
>> subsystems. Model should be expressed in a uniformed language, so a tool
>> like perf can do the right thing automatically.
> So I'm not sure I understand what do you mean. Let's take you write(2)
> example - if you'd like to just get a break out where do we spend time
> during the syscall (including various sleeps), then off-cpu flame graphs
> [1] already provide quite a reasonable overview. If you really look for
> more targetted analysis (e.g. one in a million write has too large
> latency), then you need something different. Do I understand right that
> you'd like to have some way to associate trace events with some "object"
> (being it IO, syscall, or whatever) so that you can more easily perform
> targetted analysis for cases like this?

Yes.

Both cpu and off-cpu flame graphs provide kernel side view, but
people want to know something like "how long it takes for a piece
of memory be written to disk and where is the bottleneck". To answer
this question, I have to explain the model of file writting, including
vfs, page cache, file system and device driver, but most of time they
still can't understand why it is hard to answer such a simple question.

I think kernel lacks a tool like top-down [1][2]. In top-down method,
CPU guys provide a model to break down time for instruction execution,
and provide formula to do the computation from PMU counters. Although
the real CPU microarchitecture is complex (similar to kernel,
asynchronization is common) and top-down result is statistical, result
from top-down shows the right direction for tuning.

I suggest kernel find a way to tell user how to break down a process
and where to trace. For example, tell user the performance of writting
can be decoupled into cache, filesystem, blockio and device, filesystem
performance cabe further breaks down into metadata writing, jounal
flushing and XYZ, then which tracepoints can be used to do the
performance breakdown.

There are two types of performance breakdown:

  1. breaks a specific process. For example, one in a million write has 
too large latency
  2. generical performance break down, like what topdown does.

Thank you.

[1] http://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=6844459
[2] 
https://moodle.technion.ac.il/pluginfile.php/560599/mod_resource/content/1/Vtune%20%20-%20Top%20Down%20Performance%20Analysis%20%2C%20by%20Ahmad%20Yasin.pdf
