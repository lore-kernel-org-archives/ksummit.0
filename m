Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C8C371
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 17:24:58 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E5E401ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 17:24:57 +0000 (UTC)
To: "Luis R. Rodriguez" <mcgrof@kernel.org>,
	Fengguang Wu <fengguang.wu@intel.com>
References: <20160725190125.GS5537@wotan.suse.de> <5486315.Z6uhQZYKqJ@avalon>
	<20160728205324.GB5642@wfg-t540p.sh.intel.com>
	<2443703.ScQNYO34Bz@avalon>
	<20160728230713.GB18980@wfg-t540p.sh.intel.com>
	<20160728233327.GC3296@wotan.suse.de>
	<20160729000912.GA17232@wfg-t540p.sh.intel.com>
	<20160730170556.GR3296@wotan.suse.de>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <579CE2DF.1080607@roeck-us.net>
Date: Sat, 30 Jul 2016 10:24:47 -0700
MIME-Version: 1.0
In-Reply-To: <20160730170556.GR3296@wotan.suse.de>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Vegard Nossum <vegard.nossum@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Nominating Fengguang Wu - 0-day
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/30/2016 10:05 AM, Luis R. Rodriguez wrote:
> On Fri, Jul 29, 2016 at 08:09:12AM +0800, Fengguang Wu wrote:
>> On Fri, Jul 29, 2016 at 01:33:27AM +0200, Luis R. Rodriguez wrote:
>>> On Fri, Jul 29, 2016 at 07:07:13AM +0800, Fengguang Wu wrote:
>>>> btw, maybe some maintainers are already informed: 0-day statistics
>>>> show that ~60% errors can be reported in 2 hours, ~90% errors are
>>>> reported in 24 hours and there are 1% errors reported after 1 week.
>>>
>>> If one were to take 0-day code an slap it on some internal big-iron
>>> server, and prioritize work for a few developers (say SUSE would do
>>> this for its developers) do you expect the turnaround time for
>>> reports would be faster if we had bigger-meaner hardware ? These
>>> days actually would like to get results back in a few minutes
>>> for 90% of errors so wondering how / if others have taken on
>>> 0-day internally and made it faster by beefing up the hardware.
>>
>> I'd suspect roughly the same timing given powerful servers but still
>> with reasonable cost considerations.
>
> Interesting, thanks. Let's say I still want to, where is the code?
>
>> Intel pretty values the 0-day service and backs it up with 12 parallel
>> build servers, including 4 4S Xeon machines. Since we do merged tests,
>> one may assume most of the servers are working parallel for his code
>> whenever he does a git push. Kernel hackers can feel free to push
>> frequently because the extra pushes are virtually cost free -- the
>> build workers are working cyclicly on latest merged code anyway.
>
> Awesome thanks! I recently ran into the situation where I may have
> run into what seems to be a binutils (ld) bug and I want to verify
> if it is only associated to an odd-ball architecture, I have 2 kconfig
> entries I know I want tested on all architectures. In the future it

If you let me know what those are, I should be able to run them through
my build system.

Guenter

> may be nice to be able to suggest a given set of kconfig entires one
> wants as base for all architectures. This may need something like
> kconfig-sat though [0].
>
> [0] https://kernelnewbies.org/KernelProjects/kconfig-sat
>
>> To take free ride of that restless horse, it'd be good to push small
>> topic branches on latest RC kernels, which will have better chances
>> to merge and play well with others code.
>
> How about linux-next ?
>
>    Luis
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
