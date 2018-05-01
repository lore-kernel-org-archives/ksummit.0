Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A4CA8710
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 20:00:24 +0000 (UTC)
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0104.outbound.protection.outlook.com [104.47.42.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EDC52F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 20:00:23 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Greg KH
	<gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>, "julia.lawall@lip6.fr"
	<julia.lawall@lip6.fr>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Message-ID: <20180501200019.GA7397@sasha-vm>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
In-Reply-To: <20180501194450.GD10479@thunk.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <B0D810EDB3AC5E42909AD519468BA73E@namprd21.prod.outlook.com>
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
Date: Tue, 01 May 2018 20:00:24 -0000

On Tue, May 01, 2018 at 03:44:50PM -0400, Theodore Y. Ts'o wrote:
>On Tue, May 01, 2018 at 04:38:21PM +0000, Sasha Levin wrote:
>>  - A merge window commit spent 50% more days, on average, in -next than =
a -rc
>>    commit.
>
>So it *used* to be the case that after the merge window, I would queue
>up bug fixes for the next merge window.  Greg K-H pushed for me to
>send them to Linus sooner, instead of waiting for the next merge
>window.  TBH, it's actually easier for me to just wait until the next
>merge window, but please understand that there are multiple pressures
>on maintainers going on here, and the latest efforts to try to use
>AUTOSEL is just the most recent pressure placed on maintainers.
>
>The other thing is that when there is a regression users who are
>testing linux-next want it fixed *fast*.  That's considered more
>important to them than waiting for one, perfect patch, just to keep
>AUTOSEL happy.
>
>So please understand that when you say that maintainers *need* to do X
>or Y, that there you are not the only one standing in line putting
>pressures on maintainers saying they *need* to do something.  And
>quite frankly, I consider keeping people who are nice enough to test
>linux-next happy to be **far** more important than AUTOSEL.

Ted,

I'm not at all asking to wait before adding the patches to your tree,
or to -next. I'm asking to hold on to them a bit longer before you
push them to Linus because I can show that patches that don't spend
enough time in -next are more likely to introduce bugs.

Yes, linux-next users want it fixed *now* and I completely agree it
should be done that way, but the fix should not be immediately pushed to
Linus as well.

I've just finished reading an interesting article on LWN about the
PostgreSQL fsync issues (https://lwn.net/Articles/752952/). If you
look at Willy's commit, he wrote the final version of it about 5 days
ago, Jeff merged it in 3 days ago, and Linus merged it in the tree
today. Did it spend any time getting -next testing? nope.

What's worse is that that commit is tagged for stable, which means
that (given Greg's schedule) it may find it's way to -stable users
even before some -next users/bots had a chance to test it out.

This is less about AUTOSEL, and more about asking maintainers to
improve the testing commits get before they are sent to Linus.
Linus would rant about commits during merge window that didn't go
through -next, but for -rc commits this rule is somehow forgiven,
which is what I'm trying to change.=
