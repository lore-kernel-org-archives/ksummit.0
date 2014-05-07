Return-Path: <waiman.long@hp.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 77C7B4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 22:29:32 +0000 (UTC)
Received: from g4t3426.houston.hp.com (g4t3426.houston.hp.com [15.201.208.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EA9522026F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 22:29:31 +0000 (UTC)
Message-ID: <536AB3B6.6050204@hp.com>
Date: Wed, 07 May 2014 18:29:10 -0400
From: Waiman Long <waiman.long@hp.com>
MIME-Version: 1.0
To: Peter Zijlstra <peterz@infradead.org>
References: <20140507182916.GG3694@arm.com> <536AA2FC.6070006@hp.com>
	<20140507212626.GD2844@laptop.programming.kicks-ass.net>
In-Reply-To: <20140507212626.GD2844@laptop.programming.kicks-ass.net>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asm-generic implementations of
 low-level synchronisation constructs
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/07/2014 05:26 PM, Peter Zijlstra wrote:
> On Wed, May 07, 2014 at 05:17:48PM -0400, Waiman Long wrote:
>> On 05/07/2014 02:29 PM, Will Deacon wrote:
>>> Hi all,
>>>
>>> Traditionally, low-level synchronisation and atomic constructs have been
>>> buried away in arch-specific code, with new arch maintainers having to
>>> wrestle with Documentation/{memory-barriers,atomic_ops}.txt to ensure
>>> they provide the (somewhat arbitrary) semantics expected by the kernel.
>>>
>>> However, over the past year, there have been some notable events in this
>>> area:
>>>
>>>    (1) The addition of smp_load_acquire/smp_store_release across all
>>>        architectures (including asm-generic)
>>>        https://lwn.net/Articles/576486/
>>>
>>>    (2) Merging of generic MCS spinlocks into kernel/locking, built using
>>>        the macros introduced by (1). There are other similar patches for
>>>        queued spinlocks and rwlocks, but they're not completely generic
>>>        afaict.
>>>        http://lwn.net/Articles/590243/
>> It is true that the current qspinlock patch is not completely generic.
>> However, I think it can still be used by most architectures with the
>> exception of, perhaps just, the pre-EV56 alpha.
> Its going to be a massive pain on virt archs like PPC and s390. So while
> those archs don't suffer the same problem Alpha does, they have problem
> with fair locks.

The qspinlock patch does support unfair lock. What an architecture needs 
to do is to define PARAVIRT_UNFAIR_LOCKS and map 
paravirt_unfairlocks_enabled to true.

-Longman
