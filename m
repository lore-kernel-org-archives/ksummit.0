Return-Path: <borntraeger@de.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5D9506C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 07:53:07 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F066515A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 07:53:06 +0000 (UTC)
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6J7nLEJ019049 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 03:53:06 -0400
Received: from e06smtp10.uk.ibm.com (e06smtp10.uk.ibm.com [195.75.94.106])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2495r7rreq-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 03:53:06 -0400
Received: from localhost
	by e06smtp10.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<borntraeger@de.ibm.com>; Tue, 19 Jul 2016 08:53:04 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com
	(d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
	by d06dlp02.portsmouth.uk.ibm.com (Postfix) with ESMTP id 855FE219004D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 08:52:29 +0100 (BST)
Received: from d06av03.portsmouth.uk.ibm.com (d06av03.portsmouth.uk.ibm.com
	[9.149.37.213])
	by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id u6J7r1rR8061358
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 07:53:01 GMT
Received: from d06av03.portsmouth.uk.ibm.com (localhost [127.0.0.1])
	by d06av03.portsmouth.uk.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with
	ESMTP id u6J7r1q7025086
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 01:53:01 -0600
To: Hannes Reinecke <hare@suse.com>, ksummit-discuss@lists.linuxfoundation.org
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578DDAED.1070504@de.ibm.com>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Date: Tue, 19 Jul 2016 09:53:01 +0200
MIME-Version: 1.0
In-Reply-To: <578DDAED.1070504@de.ibm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Message-Id: <578DDC5D.4070709@de.ibm.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/19/2016 09:46 AM, Christian Borntraeger wrote:
> On 07/19/2016 08:17 AM, Hannes Reinecke wrote:
>> On 07/19/2016 05:47 AM, Sergey Senozhatsky wrote:
>>> Hello,
>>>
>>> Wondering if anyone will be interested in printk-related topics
>>> (or we can handle it in the mailing list).
>>>
>>> What I have on my list is:
>>>
>>>
>>> - synchronous printk()
>>>
>>> printk() prints messages from kernel printk buffer until the buffer
>>> is empty. When serial console is attached, printing is slow and thus
>>> other CPUs in the system have plenty of time to append new messages to
>>> the buffer while one CPU is printing. Thus the CPU can spend unbounded
>>> amount of time doing printing in console_unlock().  This is especially
>>> serious problem if the printk() calling console_unlock() was called with
>>> interrupts disabled, or from IRQ, or from spin_lock protected section
>>> (if the spinlock is contended), etc. etc. IOW, printk() is quite dangerous
>>> function to call in some cases, it can cause different types of lockups
>>> (soft, hard, spinlock), stalls and so on.
>>>
>>> we have some progress on this side. printk() can offload printing from
>>> sensitive and unsafe contexts to a schedulable printk_kthread context (a
>>> special purpose printing kthread).
>>> but "The whole idea remains worrisome", per Andrew :)
>>>
>> Yes. The main problem stems from the fact that printk has two different
>> and conflicting use-cases:
>> - Really urgent, 'I am about to die' messages. Which obviously need to
>>   be printed out as fast as possible.
>> - Rather largish, information/logging 'what I always wanted to tell you'
>>   type of messages. These messages tend to be very large, but at the end
>>   it doesn't really matter _when_ they'll be printed as they are
>>   time-stamped anyway.
> 
> I think you brought up this topic last year in a lightning talk, correct?
> Didn't Linus say "fix the console then"?

Which does not make the problem go away, though, so yes - a session to
discuss this is probably a good idea - it really depends on how strong
Linus opinion on this topic is ;-)

On s390 we have for LPAR the relatively slow operating system messages console,
which goes out to the service element.
In 
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit?id=25b41a7b67ee4f4d12cee8a4b8b5929e36c27e29
we provided a console specific fix^Whack to allow to tune the buffer size
and to allow to drop messages. Better solutions are certainly welcome.

Christian
