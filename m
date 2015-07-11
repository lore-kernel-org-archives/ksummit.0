Return-Path: <sasha.levin@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 91D38AE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 16:12:50 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1431722A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 16:12:49 +0000 (UTC)
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by aserp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with
	ESMTP id t6BGCm2m002304
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 16:12:49 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userv0022.oracle.com (8.13.8/8.13.8) with ESMTP id t6BGCmS0030005
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 16:12:48 GMT
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
	by userv0121.oracle.com (8.13.8/8.13.8) with ESMTP id t6BGCmOK014983
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 16:12:48 GMT
Message-ID: <55A1407E.5080800@oracle.com>
Date: Sat, 11 Jul 2015 12:12:46 -0400
From: Sasha Levin <sasha.levin@oracle.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi folks,

I'd like to propose a topic discussing issues that are caused as a result of the
way development happens upstream, and the way we integrate with distros that affect
the quality of stable trees:

 1. During the RC cycles bug fixes tend to get sent to Linus without going through
linux-next. This is very risky, but it seems to work(?). The problem is that Linus
doesn't restrict those fixes to bugs that were introduced in the current merge window
but takes anything that is labelled as a "fix".

The result is that there is a significant amount of mostly untested RC patches
trickling down into stable trees, causing breakage for folks who assume that they
are running a tested kernel but end up with commits that haven't even been in
linux-next for more than a few days.

Since for RC kernel it's expected to see issues, and it's easy to correct, this is
less than a problem, but consider this flow for stable:

 * 4.0: bug "A" introduced.
 * 4.2-rc1: bug "A" fixed, but fix unknowingly introduced bug "B".
 * 4.1.1: ships with fix for "A", and new bug "B".
 * Stable user machines suffer from breakage.
 * 4.2-rc7: bug "B" fixed.
 * Stable users still suffer until the next kernel release.

So while it was quickly fixed for RC, this seriously affects stable.

I actually just had this happen with "nfs: take extra reference to fl->fl_file when
running a LOCKU operation" on the day I was writing this mail.

 2. The review cycle: I've *never* ended up receiving comments during review cycle
of a stable release. I've received comments either when I've sent my "added to the..."
mails when I've added a patch in, which usually came from the authors of the patch
or the maintainers of the subsystem, and I've received comments after the tree has
shipped - when it actually broke something.

We need to explore ways to integrate the review process better with the end users,
possibly by extending it to allow distributions to ship "proposed" review kernels
rather than waiting for us to finalize a stable kernel before they start working
on shipping it.

 3. Cross tree verification and auditing: There seems to be a fair amount of LTS
kernels that are maintained openly on the stable@ ML, and even a bigger amount
if the Canonical folks decide to play ball at any stage. While ideally each tree
should contain (if required, correctly backported) patches that are relevant only
to that given tree, we have no standard way to verify that.

We need a mechanism that would let us audit the existence (and non-existence) of
patches in an easy way, and to compare backports between stable trees to help verify
their correctness.

 4. Upstream monitoring: I've suggested to Greg that we have a bot looking at
commits going upstream, and for every commit marked as for stable it would attempt
to apply it to all relevant stable trees and build them, and on failure would
notify the author.

Greg objected for two main reasons: the first is that we should put more effort
into trying to fix any possible issues which arise from failure to build and
backport before we send mails out, which I accepted. The other issue was that he
doesn't want to generate too much noise, and if the patch doesn't look important
enough and only applies to the latest stable it's enough, and no need to bother
people to backport it.

So this is mostly an open discussion: what do people expect to do (if anything)
as a result of marking a patch for stable? What do people think about the increased
noise? Is there a better way to do it rather than by mails?


Thanks,
Sasha
