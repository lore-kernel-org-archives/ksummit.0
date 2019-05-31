Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16D40166E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 May 2019 15:56:35 +0000 (UTC)
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ADB33823
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 May 2019 15:56:34 +0000 (UTC)
Received: by mail-it1-f193.google.com with SMTP id s16so16042043ita.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 May 2019 08:56:34 -0700 (PDT)
To: Laura Abbott <labbott@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <be1ee3c0-b40d-ca95-6fca-949e06e62f4e@linuxfoundation.org>
Date: Fri, 31 May 2019 09:56:32 -0600
MIME-Version: 1.0
In-Reply-To: <1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 5/31/19 6:01 AM, Laura Abbott wrote:
> On 5/30/19 7:30 PM, Shuah Khan wrote:
>> I would like to propose a topic to discuss ideas to keep up with Syzbot
>> bugs on an ongoing basis. Good news is, as of this writing, we have 1276
>> fixed, 86 in moderation, and 62 fix pending. However, there are 523 open
>> bugs. A good number of them have been open for longer than 300 days.
>>
>> The oldest one has been open for 537 days. I plan to take a closer at
>> the open bugs to identify areas that might need more help.
>>
>> I have been sending fixes to some of them as I find time like many other
>> developers. In addition, I included syzbot bug analysis as a required
>> contribution in the Linux Kernel Mentorship Program application process.
>> This is for learning debugging skills as well as getting help towards
>> fixing bugs. It has been successful in getting a few fixes in. My goal
>> is  to make these efforts a bit more structured to focus on areas that
>> need help.
>>
>> There are some challenges, the obvious ones being finding time to
>> analyze, reproduce, and fix. Reproducers are available in many cases,
>> and these bugs can be reproduced. Identifying the right fix and fixing
>> is the overwhelming part with the number of outstanding problems.
>>
>> My objective for this topic is to explore and identify areas that might
>> need help in analyzing and fixing bugs in general and especially the
>> ones that have been open for a while. It would help me channel and focus
>> the Mentorship Program efforts and my efforts to help the areas in need.
>>
>> thanks,
>> -- Shuah
> 
> I'm interested in this topic for not just syzbot but other bug trackers
> as well. Fedora gets a steady flow of bugs filed and the three official
> maintainers do their best to review but sometimes things slip through,
> especially if we hit a time when several of us are out or traveling.
> The kernel.org bugzilla also gets a number of bug reports that sometimes
> get lost. I'd love to see if there's a process that could work for syzbot
> and other high volume kernel trackers.
> 

I am hoping we can look at all bugs as well. Syzbot happens to be just a
good starting for me to start this discussion.

thanks,
-- Shuah
