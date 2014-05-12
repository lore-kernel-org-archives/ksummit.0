Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 50A4A95A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 09:34:15 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [119.145.14.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C6D901FB50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 09:34:12 +0000 (UTC)
Message-ID: <53709571.9020204@huawei.com>
Date: Mon, 12 May 2014 17:33:37 +0800
From: Li Zefan <lizefan@huawei.com>
MIME-Version: 1.0
To: Catalin Marinas <catalin.marinas@arm.com>
References: <C03F79D0-8FF8-43B9-B77A-3648640380E2@arm.com>
In-Reply-To: <C03F79D0-8FF8-43B9-B77A-3648640380E2@arm.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Run-time kernel checking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2014/5/10 18:04, Catalin Marinas wrote:
> There is already a topic proposed on static checking (sparse, coverity)
> but I would like to propose a complementary one: run-time checking.
> 
> Linux has several run-time checking tools to spot potential problems
> before actually causing a kernel crash: lockdep, spinlock debugging, RCU
> debugging, memory poisoning, kmemcheck, kmemleak etc. Some of these are
> simpler (e.g. poisoning), others are more complex and have significant
> run-time overhead.
> 
> What I would like to get out of such discussion:
> 
> 1. Which tools do people use on a regular basis? How useful are they?
> 2. Use-cases and feedback on how they can be improved (e.g. better
>    reporting, more information, lower overhead)
> 3. What else do we miss? Can we borrow ideas from other tools? How
>    feasible would it be (e.g. helgrind-like tool in the kernel)?
> 
> People for this topic: at least the maintainers of the existing run-time
> checkers (and I’m sure I missed many others):
> 
> Peter Zijlstra (lockdep)
> Ingo Molnar (lockdep)
> Paul E. McKenney (RCU)
> Dipankar Sarma (RCU)
> Vegard Nossum (kmemcheck)
> Pekka Enberg (kmemcheck)
> Catalin Marinas (kmemleak)
> 
> However, rather than a discussion between the above maintainers, the aim
> is to get feedback from users of these tools and ideas for new tools
> (hence the core topic tag).
> 

I'm interested in this topic.

I saw some modified run-time checking tools in Huawei. For example a simplified
lockdep feature, they said they did some benchmarks and decided they can bear
the overhead in product environment.

Another one is supporting re-enablement of kmemleak, which you already saw the
patch and expressed your NACK.

https://lkml.org/lkml/2014/1/17/102

We also wanted kmemcheck smp support, because in that product the system can't
work in UP.
