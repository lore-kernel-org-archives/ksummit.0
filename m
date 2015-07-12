Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 63B61B5A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 13:32:20 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D51ECE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 13:32:19 +0000 (UTC)
Message-ID: <55A26C5B.8060007@oracle.com>
Date: Sun, 12 Jul 2015 09:32:11 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
In-Reply-To: <CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/12/2015 06:02 AM, Geert Uytterhoeven wrote:
> On Sat, Jul 11, 2015 at 6:12 PM, Sasha Levin <sasha.levin@oracle.com> wrote:
>>  1. During the RC cycles bug fixes tend to get sent to Linus without going through
>> linux-next. This is very risky, but it seems to work(?). The problem is that Linus
>> doesn't restrict those fixes to bugs that were introduced in the current merge window
>> but takes anything that is labelled as a "fix".
>>
>> The result is that there is a significant amount of mostly untested RC patches
>> trickling down into stable trees, causing breakage for folks who assume that they
>> are running a tested kernel but end up with commits that haven't even been in
>> linux-next for more than a few days.
>>
>> Since for RC kernel it's expected to see issues, and it's easy to correct, this is
>> less than a problem, but consider this flow for stable:
>>
>>  * 4.0: bug "A" introduced.
>>  * 4.2-rc1: bug "A" fixed, but fix unknowingly introduced bug "B".
> 
> And the fix for "A" was not in -next?
> It will be the next day, though.

It will, but there's a huge difference between being in -next for a day or a month before
getting merged in.

Usually the amount of time it spends in -next equals to the amount of time it takes to
trickle from the author through the maintainer chain all the way to Linus.

>>  * 4.1.1: ships with fix for "A", and new bug "B".
> 
> For serious bugs, the fix may indeed be applied Really Quick.

Right.

>>  * Stable user machines suffer from breakage.
>>  * 4.2-rc7: bug "B" fixed.
>>  * Stable users still suffer until the next kernel release.
>>
>> So while it was quickly fixed for RC, this seriously affects stable.
> 
> I wouldn't say "quickly": there's quite some time period (6 weeks) between
> -rc1 and -rc7.

So it would be the same scenario if I wrote there "-rc1..-rc2". LTS kernel users
tend to upgrade their kernel less often than those 6 weeks anyhow.

> If the fix for "B" has a proper "Fixes:" tag, I guess it will be applied to
> the next -stable soon. Hence make sure to always provide a "Fixes:" tag when
> fixing bugs.

True. I'm not saying it wouldn't be fixed in the next stable release, I'm saying
that we're sending untested patches all the way to users who expect the most stable
kernel.

> So it boils down to: "How soon to apply fixes to -stable?", and the trade-off
> between applying fixes early, but risking to break something unknown and new,
> vs. applying fixes late (after more validation), causing more breakage from a
> known issue.

That's just one solution, but there are a few more (which is why it's worth discussing
it :) ).

Consider also:

 - Aligning the stable release process with the kernel where we'd do a few release
candidates for the stable kernel before releasing it.

 - Tightening what is allowed to go in as -rc patches, requiring some time in -next
before it even gets into Linus's hands. Even for "serious" things (does it matter if
a fix for a privesc gets in -rc2 or -rc6, beyond that it would be pulled to stable
earlier?)

 - Differentiate the type of patches going into "regular" -stable, and LTS?


Thanks,
Sasha
