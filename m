Return-Path: <lizefan@huawei.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB18EBC7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:15:59 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [119.145.14.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A0B5314B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:15:58 +0000 (UTC)
Message-ID: <55A38FD6.2070103@huawei.com>
Date: Mon, 13 Jul 2015 18:15:50 +0800
From: Zefan Li <lizefan@huawei.com>
MIME-Version: 1.0
To: Sasha Levin <sasha.levin@oracle.com>
References: <55A1407E.5080800@oracle.com>
In-Reply-To: <55A1407E.5080800@oracle.com>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 2015/7/12 0:12, Sasha Levin wrote:
> Hi folks,
> 
> I'd like to propose a topic discussing issues that are caused as a result of the
> way development happens upstream, and the way we integrate with distros that affect
> the quality of stable trees:
> 
>  1. During the RC cycles bug fixes tend to get sent to Linus without going through
> linux-next. This is very risky, but it seems to work(?). The problem is that Linus
> doesn't restrict those fixes to bugs that were introduced in the current merge window
> but takes anything that is labelled as a "fix".
> 
> The result is that there is a significant amount of mostly untested RC patches
> trickling down into stable trees, causing breakage for folks who assume that they
> are running a tested kernel but end up with commits that haven't even been in
> linux-next for more than a few days.
> 
> Since for RC kernel it's expected to see issues, and it's easy to correct, this is
> less than a problem, but consider this flow for stable:
> 
>  * 4.0: bug "A" introduced.
>  * 4.2-rc1: bug "A" fixed, but fix unknowingly introduced bug "B".
>  * 4.1.1: ships with fix for "A", and new bug "B".
>  * Stable user machines suffer from breakage.
>  * 4.2-rc7: bug "B" fixed.
>  * Stable users still suffer until the next kernel release.
> 
> So while it was quickly fixed for RC, this seriously affects stable.
> 

For 3.4.y, when I finish backporting patches for 4.x and about to release new 3.4.y,
4.(x+1) has released. My scripts will go through all the commits between 4.x and 
4.(x+1) to find out fixes for regressions introduced by my backports. Besides I'll
pick up some other important fixes.

One reason is I don't have enough time to catch up with upstream. Another reason is
to avoid the issue you described here.

> I actually just had this happen with "nfs: take extra reference to fl->fl_file when
> running a LOCKU operation" on the day I was writing this mail.
> 
>  2. The review cycle: I've *never* ended up receiving comments during review cycle
> of a stable release. I've received comments either when I've sent my "added to the..."
> mails when I've added a patch in, which usually came from the authors of the patch
> or the maintainers of the subsystem, and I've received comments after the tree has
> shipped - when it actually broke something.
> 

I do get some replies during review cycle, and so does Ben. We don't send out mails to
remind people when we add a patch to the stable queue.

> We need to explore ways to integrate the review process better with the end users,
> possibly by extending it to allow distributions to ship "proposed" review kernels
> rather than waiting for us to finalize a stable kernel before they start working
> on shipping it.
> 
>  3. Cross tree verification and auditing: There seems to be a fair amount of LTS
> kernels that are maintained openly on the stable@ ML, and even a bigger amount
> if the Canonical folks decide to play ball at any stage. While ideally each tree
> should contain (if required, correctly backported) patches that are relevant only
> to that given tree, we have no standard way to verify that.
> 
> We need a mechanism that would let us audit the existence (and non-existence) of
> patches in an easy way, and to compare backports between stable trees to help verify
> their correctness.
> 

I've once compared 3.2.y and 3.4.y when I haven't taken over 3.4 from Greg, and I
found there were hundreds of fixes in 3.2.y that are applicable to 3.4.y, and it's
mainly because Ben has been manually analyzing commits which have stable tags but
can't be backported automatically while Greg doesn't work like this because of
time budget.

The basic principle is if a fix has been backported to an older stable tree, newer
stable trees probably also need it.

>  4. Upstream monitoring: I've suggested to Greg that we have a bot looking at
> commits going upstream, and for every commit marked as for stable it would attempt
> to apply it to all relevant stable trees and build them, and on failure would
> notify the author.
> 

I would never do this for 3.4.y, because for a kernel as old as 3.4 such failure
is very common.

> Greg objected for two main reasons: the first is that we should put more effort
> into trying to fix any possible issues which arise from failure to build and
> backport before we send mails out, which I accepted. The other issue was that he
> doesn't want to generate too much noise, and if the patch doesn't look important
> enough and only applies to the latest stable it's enough, and no need to bother
> people to backport it.
> 
> So this is mostly an open discussion: what do people expect to do (if anything)
> as a result of marking a patch for stable? What do people think about the increased
> noise? Is there a better way to do it rather than by mails?
> 
