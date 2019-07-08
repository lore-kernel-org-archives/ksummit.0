Return-Path: <sashal@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7C9BD28A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:56:51 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20445880
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 17:56:51 +0000 (UTC)
Date: Mon, 8 Jul 2019 13:56:49 -0400
From: Sasha Levin <sashal@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20190708175649.GO10104@sasha-vm>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<nycvar.YFH.7.76.1907081329580.5899@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1907081329580.5899@cbobk.fhfr.pm>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 08, 2019 at 01:35:15PM +0200, Jiri Kosina wrote:
>On Mon, 8 Jul 2019, Sasha Levin wrote:
>>
>> >> If we were to start avoiding driver updates, it would act as an
>> >> incentive for people not to upgrade their kernel.
>> >
>> >I'm not sure I follow the logic here?
>>
>> The way I see it, the lower your "effective delta" is between to
>> kernels, the easier it is to move forward. For example, if I have a
>> product that runs on 4.19 and uses all our core kernel code + 10
>> drivers, and I know that those drivers had most of the fixes backported
>> to my LTS tree, I'd feel much more confident going to 5.4 knowning that
>> I already have most of the patches that come with 5.4.
>>
>> For me it's a matter of how one would budget a move from a kernel X LTS
>> to kernel Y LTS, and I think that as that budget requirement grows it's
>> actually harder to actually do it (and convince management), acting as a
>> negative incentive to stay with whatever works now.
>
>But where does the 'stable' aspect appear here?
>
>I think it's reasonable to expect 'stable' to mean 'minimal number of
>changes needed to maintain stability of the kernel', and that I believe
>was the original purpose of stable tree.

I think that we're parsing the words "stable kernel" differently. You
see "stable kernel" as a kernel that remains mostly the same over time
and accepts a very small amount of critical fixes.

On the other hand, my expectation of a "stable kernel" is a kernel
without known bugs. I associate the word "stable" with stable runtime
rather than a stable codebase.

>Now you seem to be repurposing 'stable' as 'as close to upstream as
>possible in order to minimize cost of version updates'.

I don't think that the stable kernel was meant to lag behind upstream
too much. Even the rules suggest that a commit just has to be upstream,
without regard to how long (as long as it made one release, so ~1 week
tops).

I'm not suggesting that we should be in sync with Linus, all I'm saying
that users who stay close to upstream have an easier time moving to
newer kernels, and we want to provide that ability to users of the
stable kernel.

>I guess that's one of the reasons why distros are gradually turning away
>from stable tree the main purpose of distros is to provide stability,
>while it clearly is not minimizing acumulation of cost for future version
>updates.

I'm not sure about statistics, but I think that the stable tree is
gaining more "distro" users than losing them. I think it's also
important to note here that the stable tree doesn't work for everyone,
and that's perfectly fine.

Even with all the AUTOSEL stuff that go in, a quick look at my mailbox
suggests that I spent more time finding missing patches from various
distro trees than reverting patches from the stable trees.

--
Thanks,
Sasha
