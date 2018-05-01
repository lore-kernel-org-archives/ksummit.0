Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CAAD749B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 22:02:38 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0134.outbound.protection.outlook.com [104.47.36.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0ACD55D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 22:02:37 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Greg KH
	<gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>, "julia.lawall@lip6.fr"
	<julia.lawall@lip6.fr>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Message-ID: <20180501220228.GD7397@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
	<20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501205448.GE10479@thunk.org>
In-Reply-To: <20180501205448.GE10479@thunk.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <F4AB6CBEB2FA1642976733C2B3C754AB@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Date: Tue, 01 May 2018 22:02:38 -0000

On Tue, May 01, 2018 at 04:54:48PM -0400, Theodore Y. Ts'o wrote:
>On Tue, May 01, 2018 at 08:00:21PM +0000, Sasha Levin wrote:
>>
>> Yes, linux-next users want it fixed *now* and I completely agree it
>> should be done that way, but the fix should not be immediately pushed to
>> Linus as well.
>
>I should have linux-head/linux-rc said testers, sorry.  The fact that
>we have very few live users testing linux-next is a separate problem,
>which I accidentally conflated.  But if a user who is testing -rc2
>finds a problem, it is highly desirable to send a fix for -rc3,
>instead of making that user wait to -rc4 or -rc5.  And *that* is more
>important than AUTOSEL.
>
>> I've just finished reading an interesting article on LWN about the
>> PostgreSQL fsync issues (https://lwn.net/Articles/752952/). If you
>> look at Willy's commit, he wrote the final version of it about 5 days
>> ago, Jeff merged it in 3 days ago, and Linus merged it in the tree
>> today. Did it spend any time getting -next testing? nope.
>
>I agree that having the errseq patch go straight into Linus's tree is
>certainly unfortunate.  The justification was this was a regression
>fix, which I don't think it qualifies, since errseq_t went in some 9+
>months ago.
>
>It might be a good thing to quantify whether the patches you are
>talking about are new features, bug fixes, or fixing a bug that was
>introduced during the merge window or subsequently (e.g., a
>regression).

I see. So something like the following?

 - New feature: 2+ weeks of -next without any code changes/fixes
 - Merge window regression fix: immediate if < -rc3, 2+ weeks of next if
   < -rc6, otherwise consider reverting new feature.
 - bug fix in earlier release: 2+ weeks of -next

>> What's worse is that that commit is tagged for stable, which means
>> that (given Greg's schedule) it may find it's way to -stable users
>> even before some -next users/bots had a chance to test it out.
>
>Well, it used to be that things tagged for stable most-merge window
>are *supposed* to marinate for at least a week or before they would
>get pulled into a stable release.  Part of the whole problem is that
>people are wanting to be a lot more aggressive (both in time and
>volume) in shovelling things into stable.
>
>> This is less about AUTOSEL, and more about asking maintainers to
>> improve the testing commits get before they are sent to Linus.
>> Linus would rant about commits during merge window that didn't go
>> through -next, but for -rc commits this rule is somehow forgiven,
>> which is what I'm trying to change.
>
>I do think it's about AUTOSEL, because when I'm dealing with a
>regression, I want to get it fixed fast.  Because the alternative is
>the merge-window commit getting reverted.  AUTOSEL seems wants perfect
>patches that it can cherry pick once, as opposed to a case where if the
>user confirms that it fixes the regression, I want to send it to Linus
>quickly.  I do *not* want it to marinate in linux-next for 1-2 weeks.
>I would much rather that *stable* hold off on picking up the patch for
>1-2 weeks, but get it fixed in Linux HEAD sooner.  If that means that
>the regression fix needs a further clean up, so be it.

For AUTOSEL, most of the commits that went in so far were from the
v4.9..v4.14 range. Only last week I've sent greg commits picked from
v4.15..v4.16. AUTOSEL is at least a month behind -stable (on average,
9.7 months).

>Post -rc3 or -rc4, in my opinion bug fixes should wait until the next
>merge window before they get merged at all.  (And certainly features
>bugs should be Right Out.)  And sure, bug fixes should certainly get
>more testing.  So I guess my main objection is your making a blanket
>statement about all fixes, instead of breaking out regression fixes
>versus bug fixes.  Since in my opinion they are very different animals...

I understant your point, you want to make fixes available to testers as
soon as possible. This might make sense, as you've mentioned, in < -rc3.

So yes, maybe the solution isn't to force -next, but rather add more
"quiet time" at the end of the cycle? Make special rules for -rc7/8? Or
even add a "test"/"beta" release at the end of the cycle?

>From what I see, the same number of bugs-per-line-of-code applies for
commits accross all -rc releases, so while it makes sense to get a fix
in quickly at -rc1 to allow testing to continue, the same must not
happen during -rc8, but unfourtenately it does now.=
