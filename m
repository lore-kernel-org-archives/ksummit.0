Return-Path: <shuahkh@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 331EC89F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 22:24:05 +0000 (UTC)
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 4452A1FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Jul 2017 22:24:03 +0000 (UTC)
To: Greg KH <greg@kroah.com>, Guenter Roeck <linux@roeck-us.net>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705153259.GA7265@kroah.com>
From: Shuah Khan <shuahkh@osg.samsung.com>
Message-ID: <a2fada39-76d4-e136-f2db-d8306d929902@osg.samsung.com>
Date: Thu, 6 Jul 2017 16:24:01 -0600
MIME-Version: 1.0
In-Reply-To: <20170705153259.GA7265@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Thorsten Leemhuis <linux@leemhuis.info>,
	Shuah Khan <shuahkh@osg.samsung.com>
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

On 07/05/2017 09:32 AM, Greg KH wrote:
> On Wed, Jul 05, 2017 at 08:16:33AM -0700, Guenter Roeck wrote:
>> If we start shaming people for not providing unit tests, all we'll accomplish is
>> that people will stop providing bug fixes.
> 
> Yes, this is the key!
> 
> Steven, just look at everything marked with a "Fixes:" or "stable@" tag
> from 4.12-rc1..4.12 and try to determine how you would write a test for
> the majority of them.
> 
> Yes, for some subsystems this can work (look at xfstests as one great
> example for filesystems, same for the i915 tests), but for the majority
> of the kernel, at this point in time, it doesn't make sense.
> 
> So take Carlos's advice, start small, do it for your subsystem if you
> don't touch hardware (easy peasy, right?), and let's see how it goes,
> and see if we have the infrastructure to do it even today.  Right now,
> kselftests is finally getting a unified output format, which is great,
> it shows that people are starting to use and rely on it.  What else will
> we need to make this more widely used, we don't know yet...
> 

Over the past couple of years, kselftests have seen improvements to run
on ARM in kernel ci rings. TAP13 will definitely make it easier to find
run to run differences. There is the effort to use ksefltests to test
stable releases (4.4 LTS for example), which will help make the tests
fail/skip gracefully when a feature isn't enabled/supported.

The work so far is two fold:

- enable them to run in test rings.
- making them easy to use

As per test development, we are constantly adding tests and I see new tests
getting added for sub-systems that aren't hardware dependent. You will see
lots of activity in mm, timers, seccomp, net, sys-calls to name a few.

I am going to be looking for TAP13 format compliance for new tests starting
4.13.

I am not sure how popular they are among developers and sub-system maintainers
though. Maybe this is one area we can try to improve usage.

thanks,
-- Shuah
