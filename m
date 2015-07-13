Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59942B1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:13:12 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B66B71A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:13:11 +0000 (UTC)
Message-ID: <55A3E383.6070107@oracle.com>
Date: Mon, 13 Jul 2015 12:12:51 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: Zefan Li <lizefan@huawei.com>
References: <55A1407E.5080800@oracle.com> <55A38FD6.2070103@huawei.com>
In-Reply-To: <55A38FD6.2070103@huawei.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/13/2015 06:15 AM, Zefan Li wrote:
> On 2015/7/12 0:12, Sasha Levin wrote:
>> Hi folks,
>>
>> I'd like to propose a topic discussing issues that are caused as a result of the
>> way development happens upstream, and the way we integrate with distros that affect
>> the quality of stable trees:
>>
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
>>  * 4.1.1: ships with fix for "A", and new bug "B".
>>  * Stable user machines suffer from breakage.
>>  * 4.2-rc7: bug "B" fixed.
>>  * Stable users still suffer until the next kernel release.
>>
>> So while it was quickly fixed for RC, this seriously affects stable.
>>
> 
> For 3.4.y, when I finish backporting patches for 4.x and about to release new 3.4.y,
> 4.(x+1) has released. My scripts will go through all the commits between 4.x and 
> 4.(x+1) to find out fixes for regressions introduced by my backports. Besides I'll
> pick up some other important fixes.
> 
> One reason is I don't have enough time to catch up with upstream. Another reason is
> to avoid the issue you described here.

That sounds like the sort of delay we should be doing, but you could still get bitten
by pulling a bad patch from the last RC of the 4.(x) release, no?

>> I actually just had this happen with "nfs: take extra reference to fl->fl_file when
>> running a LOCKU operation" on the day I was writing this mail.
>>
>>  2. The review cycle: I've *never* ended up receiving comments during review cycle
>> of a stable release. I've received comments either when I've sent my "added to the..."
>> mails when I've added a patch in, which usually came from the authors of the patch
>> or the maintainers of the subsystem, and I've received comments after the tree has
>> shipped - when it actually broke something.
>>
> 
> I do get some replies during review cycle, and so does Ben. We don't send out mails to
> remind people when we add a patch to the stable queue.

I guess it would make sense to either send emails when it was added or for the review
cycle, but not for both?

>> We need to explore ways to integrate the review process better with the end users,
>> possibly by extending it to allow distributions to ship "proposed" review kernels
>> rather than waiting for us to finalize a stable kernel before they start working
>> on shipping it.
>>
>>  3. Cross tree verification and auditing: There seems to be a fair amount of LTS
>> kernels that are maintained openly on the stable@ ML, and even a bigger amount
>> if the Canonical folks decide to play ball at any stage. While ideally each tree
>> should contain (if required, correctly backported) patches that are relevant only
>> to that given tree, we have no standard way to verify that.
>>
>> We need a mechanism that would let us audit the existence (and non-existence) of
>> patches in an easy way, and to compare backports between stable trees to help verify
>> their correctness.
>>
> 
> I've once compared 3.2.y and 3.4.y when I haven't taken over 3.4 from Greg, and I
> found there were hundreds of fixes in 3.2.y that are applicable to 3.4.y, and it's
> mainly because Ben has been manually analyzing commits which have stable tags but
> can't be backported automatically while Greg doesn't work like this because of
> time budget.
> 
> The basic principle is if a fix has been backported to an older stable tree, newer
> stable trees probably also need it.
> 
>>  4. Upstream monitoring: I've suggested to Greg that we have a bot looking at
>> commits going upstream, and for every commit marked as for stable it would attempt
>> to apply it to all relevant stable trees and build them, and on failure would
>> notify the author.
>>
> 
> I would never do this for 3.4.y, because for a kernel as old as 3.4 such failure
> is very common.

So this is an interesting subject: right now we have a few stable/LTS trees and each
of us does his own thing (while following a common pattern and discussing things),
including picking patches on his own, sending mails for added/review/released and
dealing with testing/backports (we may share testing resources and look for backports
in other trees, but it's up to each of us individually to get it right).

What if instead of keeping things separated, we try combining our efforts and work
on a single tree? It would mean that people would only get one mail when their patch
was added, reviewed and released, making it easier to follow discussions and manage
patches.

You don't send out mails when things failed to apply on 3.4 because it's common, and
we don't want to flood everyone with this, but what if authors would only get one mail
stating which versions the patch applied successfully to and which it didn't, making the
review process easier?

It would also mean that if I, for example, look at a patch and mark is as not-relevant
for 3.18, you wouldn't be looking at it again to decide if it applies to 3.4, saving
everyone lots of work.


Thanks,
Sasha
