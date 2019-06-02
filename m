Return-Path: <sashal@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 17F882C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Jun 2019 18:09:15 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B16E019B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Jun 2019 18:09:14 +0000 (UTC)
Date: Sun, 2 Jun 2019 14:09:13 -0400
From: Sasha Levin <sashal@kernel.org>
To: Laura Abbott <labbott@redhat.com>
Message-ID: <20190602180913.GR12898@sasha-vm>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
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

On Fri, May 31, 2019 at 08:01:15AM -0400, Laura Abbott wrote:
>On 5/30/19 7:30 PM, Shuah Khan wrote:
>>I would like to propose a topic to discuss ideas to keep up with Syzbot
>>bugs on an ongoing basis. Good news is, as of this writing, we have 1276
>>fixed, 86 in moderation, and 62 fix pending. However, there are 523 open
>>bugs. A good number of them have been open for longer than 300 days.
>>
>>The oldest one has been open for 537 days. I plan to take a closer at
>>the open bugs to identify areas that might need more help.
>>
>>I have been sending fixes to some of them as I find time like many other
>>developers. In addition, I included syzbot bug analysis as a required
>>contribution in the Linux Kernel Mentorship Program application process.
>>This is for learning debugging skills as well as getting help towards
>>fixing bugs. It has been successful in getting a few fixes in. My goal
>>is  to make these efforts a bit more structured to focus on areas that
>>need help.
>>
>>There are some challenges, the obvious ones being finding time to
>>analyze, reproduce, and fix. Reproducers are available in many cases,
>>and these bugs can be reproduced. Identifying the right fix and fixing
>>is the overwhelming part with the number of outstanding problems.
>>
>>My objective for this topic is to explore and identify areas that might
>>need help in analyzing and fixing bugs in general and especially the
>>ones that have been open for a while. It would help me channel and focus
>>the Mentorship Program efforts and my efforts to help the areas in need.
>>
>>thanks,
>>-- Shuah
>
>I'm interested in this topic for not just syzbot but other bug trackers
>as well. Fedora gets a steady flow of bugs filed and the three official
>maintainers do their best to review but sometimes things slip through,
>especially if we hit a time when several of us are out or traveling.
>The kernel.org bugzilla also gets a number of bug reports that sometimes
>get lost. I'd love to see if there's a process that could work for syzbot
>and other high volume kernel trackers.

Maybe the solution here is to standardize bug reporting bots? A
bugs@kernel.org mailing list which our various bots could report to with
a standard format that'll allow users/maintainers to easily filter it to
get only bugs they care about?

I'd also love to get a concrete solution we could actually go ahead and
try for a year. It doesn't have to be pretty or perfect, but just
something we could experiment with and possibly build upon later? We
keep kicking this can down the road for way too long.

--
Thanks,
Sasha
