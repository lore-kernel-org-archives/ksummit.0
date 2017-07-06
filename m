Return-Path: <SRS0=orc5=6J=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 06F06B0B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 22:32:53 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5175E18D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 22:32:52 +0000 (UTC)
Date: Thu, 6 Jul 2017 18:32:49 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Shuah Khan <shuahkh@osg.samsung.com>
Message-ID: <20170706183249.60b2aef9@gandalf.local.home>
In-Reply-To: <a2fada39-76d4-e136-f2db-d8306d929902@osg.samsung.com>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705153259.GA7265@kroah.com>
	<a2fada39-76d4-e136-f2db-d8306d929902@osg.samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Carlos O'Donell <carlos@redhat.com>,
	Thorsten Leemhuis <linux@leemhuis.info>, linux-api@vger.kernel.org
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

On Thu, 6 Jul 2017 16:24:01 -0600
Shuah Khan <shuahkh@osg.samsung.com> wrote:


> Over the past couple of years, kselftests have seen improvements to run
> on ARM in kernel ci rings. TAP13 will definitely make it easier to find
> run to run differences. There is the effort to use ksefltests to test
> stable releases (4.4 LTS for example), which will help make the tests
> fail/skip gracefully when a feature isn't enabled/supported.
> 
> The work so far is two fold:
> 
> - enable them to run in test rings.
> - making them easy to use
> 
> As per test development, we are constantly adding tests and I see new tests
> getting added for sub-systems that aren't hardware dependent. You will see
> lots of activity in mm, timers, seccomp, net, sys-calls to name a few.
> 
> I am going to be looking for TAP13 format compliance for new tests starting
> 4.13.
> 
> I am not sure how popular they are among developers and sub-system maintainers
> though. Maybe this is one area we can try to improve usage.

Maybe this should be included in the MAINTAINERS SUMMIT as well. To
consolidate the format of all the kselftests and have something that
everyone (or most) developers agree on.

-- Steve
