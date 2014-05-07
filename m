Return-Path: <davidlohr@hp.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B871DB1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 18:40:14 +0000 (UTC)
Received: from g2t1383g.austin.hp.com (g2t1383g.austin.hp.com [15.217.136.92])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 45DE52026C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 18:40:14 +0000 (UTC)
Received: from g6t1524.atlanta.hp.com (g6t1524.atlanta.hp.com [15.193.200.67])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hp.com (Postfix) with ESMTPS id 36FE68AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 18:21:00 +0000 (UTC)
Message-ID: <1399488009.4567.20.camel@buesod1.americas.hpqcorp.net>
From: Davidlohr Bueso <davidlohr@hp.com>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Date: Wed, 07 May 2014 11:40:09 -0700
In-Reply-To: <5369EE59.9040805@hitachi.com>
References: <53662254.9060100@huawei.com> <53699F27.9040403@hitachi.com>
	<1399431538.2581.30.camel@buesod1.americas.hpqcorp.net>
	<5369EE59.9040805@hitachi.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2014-05-07 at 17:27 +0900, Masami Hiramatsu wrote:
> (2014/05/07 11:58), Davidlohr Bueso wrote:
> > On Wed, 2014-05-07 at 11:49 +0900, Masami Hiramatsu wrote:
> >> (2014/05/04 20:19), Li Zefan wrote:
> >>> - Testing stable kernels
> >>>
> >>> The testing of stable kernels when a new version is under review seems
> >>> quite limited. We have Dave's Trinity and Fengguang's 0day, but they
> >>> are run on mainline/for-next only. Would be useful to also have them
> >>> run on stable kernels?
> >>
> >> This might be a kind of off-topic, but I'm interested in the testing
> >> on the linux kernel, especially standard framework of unit-tests
> >> for each feature.
> > 
> > I tend to think of LTP as a nice way of doing unit-tests for the uapi.
> > Fengguang's scripts do include it, iirc, but I'm referring more to unit
> > level tests. It serves well for changes in ipc, and should also for
> > other subsystems.
> 
> Hm, yes, uapi tests can be done in LTP. However, I have some considerations;
> - What uapi means? syscall, ioctl are OK, but what about procfs, sysfs, kernfs,
>   etc?

Yeah, I'm mostly referring to syscalls and ioctls here. I believe LTP
also covers procfs in some cases, but it's not the norm.

> - There could be some non-uapi features/bugfixes, in kernel. e.g. kmodule
>   interface. How LTP handles it?

That's kind of beyond the idea of LTP, afaik.

> - I'm not sure how LTP synchronize the version of test cases with target
>   kernel version. 

Well, again this is uapi, which doesn't/shouldn't change from version to
version. That's the whole point, make sure we don't break userspace.

> Is that possible to update the test cases as patch-level?
>   And also, for stable trees, we'll need different test-sets (branches) for
>   each tree.
> 
> IOW, would the test cases be better to be out-of-tree or in-tree? If it is
> out-of-tree(like LTP), how can we maintain both test-cases and upstream kernels?

Out of tree projects have their place, such as LTP, which has proven
itself in the past.

> Those are my interests :)

In general I'm very interested in this topic and would like to
participate in the discussion. In addition, there are areas within
futexes that could use some serious unit testing... perhaps in
selftests, dunno, would have to think about that. Right now we've got
some tests in perf-bench, but that's more performance than correctness.
The rest relies on Darren's out of tree futextests suite. However, this,
unfortunately, isn't at a unit granularity.

Thanks,
Davidlohr
