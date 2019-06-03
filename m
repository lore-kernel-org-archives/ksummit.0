Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4574FBDC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 17:25:54 +0000 (UTC)
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CB3AAA3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 17:25:53 +0000 (UTC)
Received: by mail-it1-f174.google.com with SMTP id s16so27873123ita.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Jun 2019 10:25:53 -0700 (PDT)
To: Sasha Levin <sashal@kernel.org>, Laura Abbott <labbott@redhat.com>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
Date: Mon, 3 Jun 2019 11:25:51 -0600
MIME-Version: 1.0
In-Reply-To: <20190602180913.GR12898@sasha-vm>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 6/2/19 12:09 PM, Sasha Levin wrote:
> On Fri, May 31, 2019 at 08:01:15AM -0400, Laura Abbott wrote:
>> On 5/30/19 7:30 PM, Shuah Khan wrote:
>>> I would like to propose a topic to discuss ideas to keep up with Syzbot
>>> bugs on an ongoing basis. Good news is, as of this writing, we have 1276
>>> fixed, 86 in moderation, and 62 fix pending. However, there are 523 open
>>> bugs. A good number of them have been open for longer than 300 days.
>>>
>>> The oldest one has been open for 537 days. I plan to take a closer at
>>> the open bugs to identify areas that might need more help.
>>>
>>> I have been sending fixes to some of them as I find time like many other
>>> developers. In addition, I included syzbot bug analysis as a required
>>> contribution in the Linux Kernel Mentorship Program application process.
>>> This is for learning debugging skills as well as getting help towards
>>> fixing bugs. It has been successful in getting a few fixes in. My goal
>>> is  to make these efforts a bit more structured to focus on areas that
>>> need help.
>>>
>>> There are some challenges, the obvious ones being finding time to
>>> analyze, reproduce, and fix. Reproducers are available in many cases,
>>> and these bugs can be reproduced. Identifying the right fix and fixing
>>> is the overwhelming part with the number of outstanding problems.
>>>
>>> My objective for this topic is to explore and identify areas that might
>>> need help in analyzing and fixing bugs in general and especially the
>>> ones that have been open for a while. It would help me channel and focus
>>> the Mentorship Program efforts and my efforts to help the areas in need.
>>>
>>> thanks,
>>> -- Shuah
>>
>> I'm interested in this topic for not just syzbot but other bug trackers
>> as well. Fedora gets a steady flow of bugs filed and the three official
>> maintainers do their best to review but sometimes things slip through,
>> especially if we hit a time when several of us are out or traveling.
>> The kernel.org bugzilla also gets a number of bug reports that sometimes
>> get lost. I'd love to see if there's a process that could work for syzbot
>> and other high volume kernel trackers.
> 
> Maybe the solution here is to standardize bug reporting bots? A
> bugs@kernel.org mailing list which our various bots could report to with
> a standard format that'll allow users/maintainers to easily filter it to
> get only bugs they care about?
> 

Easy to filter and manage is important for usability. I mentioned in my
response Kees that I am finding it hard to update syzbot bug status to
mark them as duplicate and/or fixed. The email interface is nice for
individual bugs, but not very easy when it comes to other actions.

> I'd also love to get a concrete solution we could actually go ahead and
> try for a year. It doesn't have to be pretty or perfect, but just
> something we could experiment with and possibly build upon later? We
> keep kicking this can down the road for way too long.
> 

I am hoping we will come up something concrete.

thanks,
-- Shuah
