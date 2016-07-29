Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 552B87AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 00:09:17 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0A328137
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 00:09:16 +0000 (UTC)
Date: Fri, 29 Jul 2016 08:09:12 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Message-ID: <20160729000912.GA17232@wfg-t540p.sh.intel.com>
References: <20160725190125.GS5537@wotan.suse.de> <5486315.Z6uhQZYKqJ@avalon>
	<20160728205324.GB5642@wfg-t540p.sh.intel.com>
	<2443703.ScQNYO34Bz@avalon>
	<20160728230713.GB18980@wfg-t540p.sh.intel.com>
	<20160728233327.GC3296@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20160728233327.GC3296@wotan.suse.de>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Nominating Fengguang Wu - 0-day
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 29, 2016 at 01:33:27AM +0200, Luis R. Rodriguez wrote:
>On Fri, Jul 29, 2016 at 07:07:13AM +0800, Fengguang Wu wrote:
>> btw, maybe some maintainers are already informed: 0-day statistics
>> show that ~60% errors can be reported in 2 hours, ~90% errors are
>> reported in 24 hours and there are 1% errors reported after 1 week.
>
>If one were to take 0-day code an slap it on some internal big-iron
>server, and prioritize work for a few developers (say SUSE would do
>this for its developers) do you expect the turnaround time for
>reports would be faster if we had bigger-meaner hardware ? These
>days actually would like to get results back in a few minutes
>for 90% of errors so wondering how / if others have taken on
>0-day internally and made it faster by beefing up the hardware.

I'd suspect roughly the same timing given powerful servers but still
with reasonable cost considerations.

Intel pretty values the 0-day service and backs it up with 12 parallel
build servers, including 4 4S Xeon machines. Since we do merged tests,
one may assume most of the servers are working parallel for his code
whenever he does a git push. Kernel hackers can feel free to push
frequently because the extra pushes are virtually cost free -- the
build workers are working cyclicly on latest merged code anyway.

To take free ride of that restless horse, it'd be good to push small
topic branches on latest RC kernels, which will have better chances
to merge and play well with others code.

Thanks,
Fengguang
