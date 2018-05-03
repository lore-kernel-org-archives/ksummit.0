Return-Path: <w@1wt.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A906193E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 16:35:21 +0000 (UTC)
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D270142D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 16:35:20 +0000 (UTC)
From: Willy Tarreau <w@1wt.eu>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180503163516.GJ23311@1wt.eu>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
	<20180503144612.GJ18390@sasha-vm> <20180503145205.GD23311@1wt.eu>
	<20180503150104.GL18390@sasha-vm> <20180503160046.GH23311@1wt.eu>
	<20180503161452.GP18390@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180503161452.GP18390@sasha-vm>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Date: Thu, 03 May 2018 16:35:21 -0000

On Thu, May 03, 2018 at 04:14:57PM +0000, Sasha Levin wrote:
> I tried looking at a few commits that came in on -rc7, and I see quite a
> few cases where a commit was merged to Linus' tree in about 24 hours
> after it was authored. Or maintainers who just wrote it, pushed it in,
> and shipped in to Linus.
> 
> I've attached the data I used. The columns are as follows:
> 
> 1. Commit ID
> 2. When was it merged
> 3. How many days it spent in -next
> 4. What commit did it fix
> 5. When was that commit merged

> b6cdbc85234b v4.16-rc7 5 ca254490c8df v4.3
> 82dd0d2a9a76 v4.16-rc7 5 8f58336d3f78 v4.2
> 5807b22c9164 v4.16-rc7 5 6c8702c60b88 v4.9
> f97c3dc3c0e8 v4.16-rc7 5 4c4dbb4a7363 v4.15
(...)

I like this (not what was done but the analysis).

I'd argue that a small part of them there are very likely valid reasons
(really obvious fix, security issue etc) but it seems there are quite a
large number of them here.

Now I understand what makes me uneasy with what I'm seeing here. As I
mentioned, -rc is for people who want to see bugs before their users.
-rc7 will ensure almost everyone discovers the fix at the same time,
because the next version will be 4.16, the first of a stable release,
the one that users are expected to trust.

So probably that we have to educate/encourage developers *not* to submit
fixes for old bugs that late in the cycle and to rather wait for the next
version so that it cooks in -rc for a while before hitting users, knowing
that these fixes will be backported to stable anyway once considered valid.

Just like Greg has its "WTF" script to remind some developers that their
patch is not suited to -stable, I think you could, based on your work,
try to spot regressions introduced by late patches that fall in the
category you've filtered and emit such WTF messages to the original
patch's authors/committers.

It's important to do it only when these patches cause breakage though,
because we don't want to needlessly delay fixes when they're considered
certain or well tested. Only when they cause trouble.

For me the rule seems simple to understand, every submitter should
think like this late in the cycle :

   "you're sending a patch that is going to be part of a stable kernel
    in no more than 2 weeks, possibly affecting all users upgrading to
    that kernel if you did something wrong. Are you really certain you
    want this patch merged now, that it got sufficient testing and that
    it cannot wait for next -rc1 to get broader exposure first ?"

I'm pretty sure that most of the time it will be "sure I want it now"
and there will be no problem, which is fine as it automatically reduces
the number of bugs in releases. Some may reconsider their submission.
Some may get caught by your automated script if a later commit fixes
an issue introduced by their patch. And there public shaming is the
only option (or maybe only the second time if you really want to be
nice).

Willy
