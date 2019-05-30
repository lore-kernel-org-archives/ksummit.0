Return-Path: <skhan@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C9BA91356
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 23:30:42 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 666E95F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 23:30:42 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id e3so6601613ioc.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 May 2019 16:30:42 -0700 (PDT)
To: ksummit-discuss@lists.linuxfoundation.org
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
Date: Thu, 30 May 2019 17:30:40 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I would like to propose a topic to discuss ideas to keep up with Syzbot
bugs on an ongoing basis. Good news is, as of this writing, we have 1276
fixed, 86 in moderation, and 62 fix pending. However, there are 523 open
bugs. A good number of them have been open for longer than 300 days.

The oldest one has been open for 537 days. I plan to take a closer at
the open bugs to identify areas that might need more help.

I have been sending fixes to some of them as I find time like many other
developers. In addition, I included syzbot bug analysis as a required
contribution in the Linux Kernel Mentorship Program application process.
This is for learning debugging skills as well as getting help towards
fixing bugs. It has been successful in getting a few fixes in. My goal
is  to make these efforts a bit more structured to focus on areas that
need help.

There are some challenges, the obvious ones being finding time to
analyze, reproduce, and fix. Reproducers are available in many cases,
and these bugs can be reproduced. Identifying the right fix and fixing
is the overwhelming part with the number of outstanding problems.

My objective for this topic is to explore and identify areas that might
need help in analyzing and fixing bugs in general and especially the
ones that have been open for a while. It would help me channel and focus
the Mentorship Program efforts and my efforts to help the areas in need.

thanks,
-- Shuah
