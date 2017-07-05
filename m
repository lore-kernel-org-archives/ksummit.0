Return-Path: <carlos@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 555B9AAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 13:10:00 +0000 (UTC)
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 05FF310A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 13:09:59 +0000 (UTC)
Received: by mail-qk0-f177.google.com with SMTP id p21so188975445qke.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Jul 2017 06:09:59 -0700 (PDT)
To: Steven Rostedt <rostedt@goodmis.org>,
	Thorsten Leemhuis <linux@leemhuis.info>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
From: Carlos O'Donell <carlos@redhat.com>
Message-ID: <4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
Date: Wed, 5 Jul 2017 09:09:51 -0400
MIME-Version: 1.0
In-Reply-To: <20170705084528.67499f8c@gandalf.local.home>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: linux-api@vger.kernel.org, Shuah Khan <shuahkh@osg.samsung.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/05/2017 08:45 AM, Steven Rostedt wrote:
> I'm betting there's a lot of reproducer code that never makes it into a
> test. How do we solve that? Perhaps we need people looking at LKML for
> any signs "I did this, and it caused a bug" or "Here's a test case
> which can trigger the bug". Each of these instances should end up in
> selftests, and I'm sure they are not.
> 
> We can't do much for special hardware, even though those tests should
> still be in the selftests for those that have the hardware, but we can
> do something about special configs. Perhaps selfttests should have a
> "config test" section. I have that in my own tests, but I use ktest to
> build them.

This problem is a reflection of our own explicit or implicit priorities.
The priorities of developers and reviewers needs to change to make an
impact on the problem. This is a hard problem.

As a concrete action item, glibc core developers took a harder stance on
(a) all user-visible bugs need a bug # (forces people to think about the
problem and file a coherent public bug about it) (b) all bugs needs a
regression test if possible, (c) and if not possible we need to extend
the testing framework to make it possible (we've started using kernel
namespaces to create isolated test configurations).

This change in reviewer priorities has had a noticeable impact on developer
priorities over the last 5 years. Timelines for this problem will be
measured in years.

-- 
Cheers,
Carlos.
