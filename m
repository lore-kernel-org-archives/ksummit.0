Return-Path: <wangnan0@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C508F4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 01:56:34 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [119.145.14.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C59C1128
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 01:56:30 +0000 (UTC)
To: Andy Lutomirski <luto@amacapital.net>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578EF192.3050808@huawei.com>
	<CALCETrUbuQjEAettvDStqEophng+1TNGDpueWDJ4QWLqiyaQ2w@mail.gmail.com>
From: "Wangnan (F)" <wangnan0@huawei.com>
Message-ID: <57902AD8.3080304@huawei.com>
Date: Thu, 21 Jul 2016 09:52:24 +0800
MIME-Version: 1.0
In-Reply-To: <CALCETrUbuQjEAettvDStqEophng+1TNGDpueWDJ4QWLqiyaQ2w@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 2016/7/21 9:16, Andy Lutomirski wrote:
> On Tue, Jul 19, 2016 at 8:35 PM, Wangnan (F) <wangnan0@huawei.com> wrote:
>>
>> On 2016/7/19 14:17, Hannes Reinecke wrote:
>>> On 07/19/2016 05:47 AM, Sergey Senozhatsky wrote:
>>>> Hello,
>>>>
>>>> Wondering if anyone will be interested in printk-related topics
>>>> (or we can handle it in the mailing list).
>>>>
>>>> What I have on my list is:
>>>>
>>>>
>>>> - synchronous printk()
>>>>
>>>> printk() prints messages from kernel printk buffer until the buffer
>>>> is empty. When serial console is attached, printing is slow and thus
>>>> other CPUs in the system have plenty of time to append new messages to
>>>> the buffer while one CPU is printing. Thus the CPU can spend unbounded
>>>> amount of time doing printing in console_unlock().  This is especially
>>>> serious problem if the printk() calling console_unlock() was called with
>>>> interrupts disabled, or from IRQ, or from spin_lock protected section
>>>> (if the spinlock is contended), etc. etc. IOW, printk() is quite
>>>> dangerous
>>>> function to call in some cases, it can cause different types of lockups
>>>> (soft, hard, spinlock), stalls and so on.
>>>>
>>>> we have some progress on this side. printk() can offload printing from
>>>> sensitive and unsafe contexts to a schedulable printk_kthread context (a
>>>> special purpose printing kthread).
>>>> but "The whole idea remains worrisome", per Andrew :)
>>>>
>>> Yes. The main problem stems from the fact that printk has two different
>>> and conflicting use-cases:
>>> - Really urgent, 'I am about to die' messages. Which obviously need to
>>>     be printed out as fast as possible.
>>> - Rather largish, information/logging 'what I always wanted to tell you'
>>>     type of messages. These messages tend to be very large, but at the end
>>>     it doesn't really matter _when_ they'll be printed as they are
>>>     time-stamped anyway.
>>>
>> Actually, there are 3 types of messages:
>>
>>   1. Urgent: I'm going to die.
>>   2. information/logging.
>>   3. Trace.
>>
> If we do all this stuff, can we also try to clean up earlyprintk a
> bit?  The whole earlyconsole mechanism is a mess, and switching over
> to the non-early console is only somewhat functional.  I'd love to see
> this all simplified: before there's any console at all available, just
> buffer messages.  Then, when a console shows up, write the buffer out.
> Then earlyprintk can work just like regular printk.

I think kernel need earlyprintk because at very early stage kernel
can't use memory so can't buffer messages?

Thank you.
