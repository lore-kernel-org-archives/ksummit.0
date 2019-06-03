Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CF9E8B6D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 16:48:19 +0000 (UTC)
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4BEBBA3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 16:48:19 +0000 (UTC)
Received: by mail-it1-f196.google.com with SMTP id n189so9241505itd.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Jun 2019 09:48:19 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<CAJr-aDn+j9gyp-m=uv6mz9WWWdzmphC1pNUcyrfXaZtZ=muS9Q@mail.gmail.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <3027a3b8-659e-ee47-8032-121b5250cd98@linuxfoundation.org>
Date: Mon, 3 Jun 2019 10:48:16 -0600
MIME-Version: 1.0
In-Reply-To: <CAJr-aDn+j9gyp-m=uv6mz9WWWdzmphC1pNUcyrfXaZtZ=muS9Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 5/31/19 4:15 PM, Kees Cook wrote:
> On Fri, May 31, 2019 at 5:02 AM Laura Abbott <labbott@redhat.com> wrote:
>>
>> On 5/30/19 7:30 PM, Shuah Khan wrote:
>>> I would like to propose a topic to discuss ideas to keep up with Syzbot
>>> bugs on an ongoing basis. Good news is, as of this writing, we have 1276
>>> fixed, 86 in moderation, and 62 fix pending. However, there are 523 open
>>> bugs. A good number of them have been open for longer than 300 days.
>>>
>>> The oldest one has been open for 537 days. I plan to take a closer at
>>> the open bugs to identify areas that might need more help.
> 
> Many seem to get discussed for a while with people all mostly agreeing
> on what needs to be done, but then nothing actually materializes.
> 

Right. My experience with a fix I sent is that there is no agreement
on how to fix between maintainers. Hence, it is in limbo.

> Now, part of this, I think, is a lack of an "objective" sense of
> priority for the various bugs on the dashboard. Their frequency of
> appearance (currently the only thing that really turns red), does not
> reflect anything about their severity nor reachability. Severity is
> pretty straight forward: stack smashing, use-after-free, etc are way
> worse (generally speaking) than crash/hang or WARN(). For
> reachability, if we could narrow the scope of things a bit more ("this
> is reachable only by init namespace root", or "only reachable via
> CAP_NET_ADMIN", or "only with this CONFIG that doesn't appear in any
> modern distro .config") that would be great.
> 

Agree. It is very hard to parse the information to determine priority.
I have been looking at how often it can be reproduced. In some cases,
it isn't clear how likely for this bug to be triggered in regular cases.
This is where syzbot adds value that it stresses error cases.

This one bug I am looking at is in an error leg, which is nice. However,
syzbot reports are hard to manage. I found 3 instances of the same bug,
with fix pulled into the mainline associated with one of the 3.

I spent time on Friday to find a quick way to reply to one of them with
list of IDs. It will be great to have a ID associated with these bugs,
so I can go say, hey this fix applies to these IDs.

>>> I have been sending fixes to some of them as I find time like many other
>>> developers. In addition, I included syzbot bug analysis as a required
>>> contribution in the Linux Kernel Mentorship Program application process.
>>> This is for learning debugging skills as well as getting help towards
>>> fixing bugs. It has been successful in getting a few fixes in. My goal
>>> is  to make these efforts a bit more structured to focus on areas that
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
> 
> What I want to find is a way to fund on-going work in this area. It
> just does not appear to be working to find funding within various
> companies to do this kind of sustained bug-hunting. It's a bit of a
> resource conflict: if a company has kernel developers on staff they
> tend to want to have them focused on "new things".
> 

Yes. This is my concern as well. This is why I am trying to see if we
can find resources. I would like to start with trying to channel the
resources from the mentorship program for this. I do know that this
adds overhead as well. Maybe some low hanging fruit and easy fix type
bugs can be taken care of using this program and then we can focus our
expert energies on harder bugs.

>> I'm interested in this topic for not just syzbot but other bug trackers
>> as well. Fedora gets a steady flow of bugs filed and the three official
>> maintainers do their best to review but sometimes things slip through,
>> especially if we hit a time when several of us are out or traveling.
>> The kernel.org bugzilla also gets a number of bug reports that sometimes
>> get lost. I'd love to see if there's a process that could work for syzbot
>> and other high volume kernel trackers.
> 

Yes. This is what I am finding. Syzbot or any other bug tracking system
to be effective, it has to be easy to manage and mark bugs as duplicate,
closed, fixed. etc.

thanks,
-- Shuah
