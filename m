Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BCF43898
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 06:36:02 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 051BC79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 06:36:01 +0000 (UTC)
Date: Sun, 31 Jul 2016 14:35:58 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Message-ID: <20160731063558.GA3493@wfg-t540p.sh.intel.com>
References: <20160725190125.GS5537@wotan.suse.de> <5486315.Z6uhQZYKqJ@avalon>
	<20160728205324.GB5642@wfg-t540p.sh.intel.com>
	<2443703.ScQNYO34Bz@avalon>
	<20160728230713.GB18980@wfg-t540p.sh.intel.com>
	<20160728233327.GC3296@wotan.suse.de>
	<20160729000912.GA17232@wfg-t540p.sh.intel.com>
	<20160730170556.GR3296@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20160730170556.GR3296@wotan.suse.de>
Cc: Vegard Nossum <vegard.nossum@gmail.com>,
	Wenzhong Sun <wenzhong.sun@intel.com>,
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

On Sat, Jul 30, 2016 at 07:05:56PM +0200, Luis R. Rodriguez wrote:
>On Fri, Jul 29, 2016 at 08:09:12AM +0800, Fengguang Wu wrote:
>> On Fri, Jul 29, 2016 at 01:33:27AM +0200, Luis R. Rodriguez wrote:
>> >On Fri, Jul 29, 2016 at 07:07:13AM +0800, Fengguang Wu wrote:
>> >>btw, maybe some maintainers are already informed: 0-day statistics
>> >>show that ~60% errors can be reported in 2 hours, ~90% errors are
>> >>reported in 24 hours and there are 1% errors reported after 1 week.
>> >
>> >If one were to take 0-day code an slap it on some internal big-iron
>> >server, and prioritize work for a few developers (say SUSE would do
>> >this for its developers) do you expect the turnaround time for
>> >reports would be faster if we had bigger-meaner hardware ? These
>> >days actually would like to get results back in a few minutes
>> >for 90% of errors so wondering how / if others have taken on
>> >0-day internally and made it faster by beefing up the hardware.
>>
>> I'd suspect roughly the same timing given powerful servers but still
>> with reasonable cost considerations.
>
>Interesting, thanks. Let's say I still want to, where is the code?

It's not public available. Sorry. I love kernel community and open
source, unfortunately it's not a decision can be made by me alone.

>> Intel pretty values the 0-day service and backs it up with 12 parallel
>> build servers, including 4 4S Xeon machines. Since we do merged tests,
>> one may assume most of the servers are working parallel for his code
>> whenever he does a git push. Kernel hackers can feel free to push
>> frequently because the extra pushes are virtually cost free -- the
>> build workers are working cyclicly on latest merged code anyway.
>
>Awesome thanks! I recently ran into the situation where I may have
>run into what seems to be a binutils (ld) bug and I want to verify
>if it is only associated to an odd-ball architecture, I have 2 kconfig
>entries I know I want tested on all architectures. In the future it
>may be nice to be able to suggest a given set of kconfig entires one
>wants as base for all architectures. This may need something like
>kconfig-sat though [0].
>
>[0] https://kernelnewbies.org/KernelProjects/kconfig-sat

I'll reply that in the other email.

>> To take free ride of that restless horse, it'd be good to push small
>> topic branches on latest RC kernels, which will have better chances
>> to merge and play well with others code.
>
>How about linux-next ?

linux-next could be perfectly supported, however in a different
"rebase" way than the "merges" for RC kernels.

Suppose there are 100 branches based on -rc2 and another 100 branches
on -rc3. We can typically merge most of the 200 branches onto -rc3,
since there are relatively few changes between -rc2 and -rc3.

On the other hand, linux-next is a rolling base, it'd be hard to merge
next-20160728 itself onto next-20160729, not to mention patches based
on them. So if there are 10 branches based on next-20160728 and
another 10 branches based on next-20160729, there's little chance to
merge test them together. In current situation these linux-next based
branches will end up being tested less in 0-day.

We'd like to improve that situation by "rebasing" all linux-next based
branches to latest linux-next and test them together. It will make the
error reports less faithful to the original commits, however I guess
developers working on linux-next more or less accept it as a rolling
base and won't care much about the exact linux-next version.

If developers are interested in knowing merge conflicts with others'
code, so that he can fix it in advance and get more test coverage in
0-day, we can help auto locate down and report the merge or rebase
failures, too. Or build errors due to logical merge conflicts.

Thanks,
Fengguang
