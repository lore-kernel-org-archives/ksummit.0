Return-Path: <prvs=60101c977b=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A6F5C6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 16:04:56 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com
	[67.231.145.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 13D77E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 16:04:55 +0000 (UTC)
From: Chris Mason <clm@fb.com>
To: Jan Kara <jack@suse.cz>
References: <578F36B9.802@huawei.com> <20160721100014.GB7901@quack2.suse.cz>
	<577236a8-2921-842a-2243-b8ecfe467381@fb.com>
	<20160721154532.GC14146@quack2.suse.cz>
Message-ID: <788eb231-1701-9602-c5dc-36b8f82db21b@fb.com>
Date: Thu, 21 Jul 2016 12:03:34 -0400
MIME-Version: 1.0
In-Reply-To: <20160721154532.GC14146@quack2.suse.cz>
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
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



On 07/21/2016 11:45 AM, Jan Kara wrote:
> On Thu 21-07-16 09:54:53, Chris Mason wrote:
>> On 07/21/2016 06:00 AM, Jan Kara wrote:
>>>
>>> So I think improvements in performance analysis are always welcome but
>>> current proposal seems to be somewhat handwavy so I'm not sure what outcome
>>> you'd like to get from the discussion... If you have a more concrete
>>> proposal how you'd like to achieve what you need, then it may be worth
>>> discussion.
>>>
>>> As a side note I know that Google (and maybe Facebook, not sure here) have
>>> out-of-tree patches which provide really neat performance analysis
>>> capabilities. I have heard they are not really upstreamable because they
>>> are horrible hacks but maybe they can be a good inspiration for this work.
>>> If we could get someone from these companies to explain what capabilities
>>> they have and how they achieve this (regardless how hacky the
>>> implementation may be), that may be an interesting topic.
>>
>> At least for facebook, we're moving most things to bpf.  The most
>> interesting part of our analysis isn't so much from the tool used to record
>> it, it's from being able to aggregate over the fleet and making comparisons
>> at scale.
>>
>> For example, Josef setup the off-cpu flame graphs such that we can record
>> stack traces for a latency higher than N, and then sum up the most expensive
>> stack traces over a large number of machines.  It makes it much easier to
>> find those happens-once-a-day problems.
>
> By latency higher than N, do you mean that e.g. a syscall took more than N,
> or just that a process is sleeping for more than N in some place?

Single sleep longer than N.  It would be a little more involved to track 
all the sleeps in a single syscall, but we haven't needed to (yet).

-chris
