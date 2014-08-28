Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 66178A49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Aug 2014 21:54:21 +0000 (UTC)
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CF54520243
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Aug 2014 21:54:20 +0000 (UTC)
Received: by mail-qc0-f181.google.com with SMTP id i17so1499254qcy.40
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Aug 2014 14:54:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAP245DWYCLR43pL1joowpwc=97ypdT_Q8xbw4e7rxd4czP489w@mail.gmail.com>
References: <20140819163621.GA15109@linux.vnet.ibm.com>
	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
	<CAKocOOMG91D7Qam5PLY0Dd7bR07GMHHYsRCqUMYQGCR-hB2+=w@mail.gmail.com>
	<CAP245DWYCLR43pL1joowpwc=97ypdT_Q8xbw4e7rxd4czP489w@mail.gmail.com>
Date: Thu, 28 Aug 2014 15:54:19 -0600
Message-ID: <CAKocOOOn8F9d-kOpbXraZbQiYUEjp8Uac10h76t6PKfQgN5vwQ@mail.gmail.com>
From: Shuah Khan <shuahkhan@gmail.com>
To: Amit Kucheria <amit.kucheria@linaro.org>
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

On Fri, Aug 22, 2014 at 12:08 PM, Amit Kucheria
<amit.kucheria@linaro.org> wrote:

> Hi Shuah,
>
> At the Linaro power management working group, we've created a simple
> repository of pass/fail *functional* tests for various areas of
> interest in power management - cpuidle, cpufreq, hotplug. We call it
> PM-QA[1]
>
> Some of our members have found PM-QA useful to exercise the various
> sysfs interfaces and get rid of the obvious issues (missing Kconfig
> options, basic exercising of cpufreq drivers being a couple of
> examples).
>
> Let me know if these are useful and in the right format to seed your
> library of testcases.
>
> Regards,
> Amit
> [1] https://git.linaro.org/power/pm-qa.git

Hi Amit,

Thanks for sharing these. I will take a look and see if these make
good candidates for selftests.

-- Shuah
