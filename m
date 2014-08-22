Return-Path: <amit.kucheria@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D2463995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Aug 2014 18:08:38 +0000 (UTC)
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2C7372027B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Aug 2014 18:08:38 +0000 (UTC)
Received: by mail-ie0-f171.google.com with SMTP id at1so6925669iec.16
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Aug 2014 11:08:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKocOOMG91D7Qam5PLY0Dd7bR07GMHHYsRCqUMYQGCR-hB2+=w@mail.gmail.com>
References: <20140819163621.GA15109@linux.vnet.ibm.com>
	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
	<CAKocOOMG91D7Qam5PLY0Dd7bR07GMHHYsRCqUMYQGCR-hB2+=w@mail.gmail.com>
Date: Fri, 22 Aug 2014 23:38:37 +0530
Message-ID: <CAP245DWYCLR43pL1joowpwc=97ypdT_Q8xbw4e7rxd4czP489w@mail.gmail.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
To: Shuah Khan <shuahkhan@gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Fwd: Rough notes from testing unconference
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 22, 2014 at 11:29 PM, Shuah Khan <shuahkhan@gmail.com> wrote:
> Shuah Khan:
>
> - Work on putting a basic framework for tests: Pass, Fail, Skip to start with.
> - update existing tests in tools/testing/selftests to use the
> framework to serve as an
>   example for future tests. As we discussed and decided on output will
> continue to go to
>   stdio. This will help these tests being used in other scripts that
> run tests in cross
>   environments.
> - Define profiles for short and longer time tests
> - Add install target in addition to the existing kselftest target at
> the top level Makefile
>
> I will maintain the test framework - will take care of the logistics
> of MAINTAINER
> file updates for this and creating a git tree. Individual test
> maintainers (we have
> several in MAINTAINERS file) will continue to own and maintain their tests.
>
> Fixes to known cross-build failures and new tests are welcome. Please
> send patches to linux-api mailing list
>

Hi Shuah,

At the Linaro power management working group, we've created a simple
repository of pass/fail *functional* tests for various areas of
interest in power management - cpuidle, cpufreq, hotplug. We call it
PM-QA[1]

Some of our members have found PM-QA useful to exercise the various
sysfs interfaces and get rid of the obvious issues (missing Kconfig
options, basic exercising of cpufreq drivers being a couple of
examples).

Let me know if these are useful and in the right format to seed your
library of testcases.

Regards,
Amit
[1] https://git.linaro.org/power/pm-qa.git
