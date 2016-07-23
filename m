Return-Path: <alexei.starovoitov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 195BC323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Jul 2016 18:16:05 +0000 (UTC)
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3D8BA1AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Jul 2016 18:16:04 +0000 (UTC)
Received: by mail-lf0-f66.google.com with SMTP id l89so9144473lfi.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Jul 2016 11:16:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160723175915.GA22313@ast-mbp>
References: <578F36B9.802@huawei.com> <20160721100014.GB7901@quack2.suse.cz>
	<5791949E.9010006@huawei.com> <20160723175915.GA22313@ast-mbp>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Sat, 23 Jul 2016 11:15:42 -0700
Message-ID: <CAADnVQJomfd4pbapPLOPXNPg-vTb8D7b5o4z9pdm9z3VnCJmBw@mail.gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset=UTF-8
Subject: [Ksummit-discuss] Fwd: [TECH TOPIC] Kernel tracing and end-to-end
 performance breakdown
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 22, 2016 at 11:35:58AM +0800, Wangnan (F) wrote:
>
>
> On 2016/7/21 18:00, Jan Kara wrote:
> >Hello,
> >
> >On Wed 20-07-16 16:30:49, Wangnan (F) wrote:
> >
> [SNIP]
> >>
> >>The problem is the lacking of a proper performance model. In my point of
> >>view, it is linux kernel's responsibility to guide us to do the
> >>breakdown.  Subsystem designers should expose the principle processes to
> >>connect tracepoints together.  Kernel should link models from different
> >>subsystems. Model should be expressed in a uniformed language, so a tool
> >>like perf can do the right thing automatically.
> >So I'm not sure I understand what do you mean. Let's take you write(2)
> >example - if you'd like to just get a break out where do we spend time
> >during the syscall (including various sleeps), then off-cpu flame graphs
> >[1] already provide quite a reasonable overview. If you really look for
> >more targetted analysis (e.g. one in a million write has too large
> >latency), then you need something different. Do I understand right that
> >you'd like to have some way to associate trace events with some "object"
> >(being it IO, syscall, or whatever) so that you can more easily perform
> >targetted analysis for cases like this?
>
> Yes.
>
> Both cpu and off-cpu flame graphs provide kernel side view, but
> people want to know something like "how long it takes for a piece
> of memory be written to disk and where is the bottleneck". To answer
> this question, I have to explain the model of file writting, including
> vfs, page cache, file system and device driver, but most of time they
> still can't understand why it is hard to answer such a simple question.
>
> I think kernel lacks a tool like top-down [1][2]. In top-down method,
> CPU guys provide a model to break down time for instruction execution,
> and provide formula to do the computation from PMU counters. Although
> the real CPU microarchitecture is complex (similar to kernel,
> asynchronization is common) and top-down result is statistical, result
> from top-down shows the right direction for tuning.
>
> I suggest kernel find a way to tell user how to break down a process
> and where to trace. For example, tell user the performance of writting
> can be decoupled into cache, filesystem, blockio and device, filesystem
> performance cabe further breaks down into metadata writing, jounal
> flushing and XYZ, then which tracepoints can be used to do the
> performance breakdown.
>
> There are two types of performance breakdown:
>
>  1. breaks a specific process. For example, one in a million write has too
> large latency
>  2. generical performance break down, like what topdown does.

If I understand the proposal correctly it really meant to say
'request' (instead of 'process') that was issued by user space
process at time A into the kernel and was received back
into the user space at time B. And the goal is to trace this
'request' from the beginning till the end.
The proposal calls it 'end-to-end', but that typically means
networking principle whereas here it's single host latency of
the request.
I'm not sure how such tracing of something like write syscall
will be done. It's certainly an interesting discussion, but wouldn't
it be more appropriate for tracing microconf in plumbers [1] ?
There is also a danger of modeling such request tracing with
google's dapper tracing or intel's 'top-down'.
dapper is designed for tracing rpc calls in a large distributed
system whereas intel stuff is imo a generalization of
complex cpu pipeline into front/back-end and sub-blocks.

[1] http://www.linuxplumbersconf.org/2016/ocw/events/LPC2016/tracks/573
