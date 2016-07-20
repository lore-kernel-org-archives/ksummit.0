Return-Path: <wangnan0@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3266299A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 03:36:17 +0000 (UTC)
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [58.251.152.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D43E31F9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 03:36:15 +0000 (UTC)
To: Hannes Reinecke <hare@suse.com>,
	<ksummit-discuss@lists.linuxfoundation.org>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
From: "Wangnan (F)" <wangnan0@huawei.com>
Message-ID: <578EF192.3050808@huawei.com>
Date: Wed, 20 Jul 2016 11:35:46 +0800
MIME-Version: 1.0
In-Reply-To: <535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 2016/7/19 14:17, Hannes Reinecke wrote:
> On 07/19/2016 05:47 AM, Sergey Senozhatsky wrote:
>> Hello,
>>
>> Wondering if anyone will be interested in printk-related topics
>> (or we can handle it in the mailing list).
>>
>> What I have on my list is:
>>
>>
>> - synchronous printk()
>>
>> printk() prints messages from kernel printk buffer until the buffer
>> is empty. When serial console is attached, printing is slow and thus
>> other CPUs in the system have plenty of time to append new messages to
>> the buffer while one CPU is printing. Thus the CPU can spend unbounded
>> amount of time doing printing in console_unlock().  This is especially
>> serious problem if the printk() calling console_unlock() was called with
>> interrupts disabled, or from IRQ, or from spin_lock protected section
>> (if the spinlock is contended), etc. etc. IOW, printk() is quite dangerous
>> function to call in some cases, it can cause different types of lockups
>> (soft, hard, spinlock), stalls and so on.
>>
>> we have some progress on this side. printk() can offload printing from
>> sensitive and unsafe contexts to a schedulable printk_kthread context (a
>> special purpose printing kthread).
>> but "The whole idea remains worrisome", per Andrew :)
>>
> Yes. The main problem stems from the fact that printk has two different
> and conflicting use-cases:
> - Really urgent, 'I am about to die' messages. Which obviously need to
>    be printed out as fast as possible.
> - Rather largish, information/logging 'what I always wanted to tell you'
>    type of messages. These messages tend to be very large, but at the end
>    it doesn't really matter _when_ they'll be printed as they are
>    time-stamped anyway.
>

Actually, there are 3 types of messages:

  1. Urgent: I'm going to die.
  2. information/logging.
  3. Trace.

If you look at some customized kernel you can find lots of trace from
kernel. Most of the time they are really meaningless, but if kernel is
buggy or crash they become key information. When debugging, it is really
frustrating to see something is missed in kmsg, so developer tend to output
maything from printk. However, in production system they have to turns those
trace off, so debugging production systems is really painful.

I have an idea on those trace level printk. Since they are meaningless most
of the time, let it output to another ring buffer, unconditionally overwrite
old message without outputing to console or log file. When kernel detect 
something
happen or before kernel die, dump the ring buffer to the console. Then we
can put as many as tracing information through printk without console 
problem.

Since we already have tracepoints and overwritable perf ring buffer, we can
encapsulate trace level printk using tracepoints, and let it output to perf
ring buffer.

Make sence?

Thanks.
