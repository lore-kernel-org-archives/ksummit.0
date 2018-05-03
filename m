Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D8563A47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 17:29:32 +0000 (UTC)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0097.outbound.protection.outlook.com
	[104.47.37.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AB434148
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 17:29:31 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Willy Tarreau <w@1wt.eu>
Date: Thu, 3 May 2018 17:29:29 +0000
Message-ID: <20180503172926.GQ18390@sasha-vm>
References: <CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org> <20180503144612.GJ18390@sasha-vm>
	<20180503145205.GD23311@1wt.eu> <20180503150104.GL18390@sasha-vm>
	<20180503160046.GH23311@1wt.eu> <20180503161452.GP18390@sasha-vm>
	<20180503163516.GJ23311@1wt.eu>
In-Reply-To: <20180503163516.GJ23311@1wt.eu>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0BBF3E15B859F5469B9261121E7ACFC7@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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

On Thu, May 03, 2018 at 06:35:16PM +0200, Willy Tarreau wrote:
>On Thu, May 03, 2018 at 04:14:57PM +0000, Sasha Levin wrote:
>> I tried looking at a few commits that came in on -rc7, and I see quite a
>> few cases where a commit was merged to Linus' tree in about 24 hours
>> after it was authored. Or maintainers who just wrote it, pushed it in,
>> and shipped in to Linus.
>>
>> I've attached the data I used. The columns are as follows:
>>
>> 1. Commit ID
>> 2. When was it merged
>> 3. How many days it spent in -next
>> 4. What commit did it fix
>> 5. When was that commit merged
>
>> b6cdbc85234b v4.16-rc7 5 ca254490c8df v4.3
>> 82dd0d2a9a76 v4.16-rc7 5 8f58336d3f78 v4.2
>> 5807b22c9164 v4.16-rc7 5 6c8702c60b88 v4.9
>> f97c3dc3c0e8 v4.16-rc7 5 4c4dbb4a7363 v4.15
>(...)
>
>I like this (not what was done but the analysis).
>
>I'd argue that a small part of them there are very likely valid reasons
>(really obvious fix, security issue etc) but it seems there are quite a
>large number of them here.
>
>Now I understand what makes me uneasy with what I'm seeing here. As I
>mentioned, -rc is for people who want to see bugs before their users.
>-rc7 will ensure almost everyone discovers the fix at the same time,
>because the next version will be 4.16, the first of a stable release,
>the one that users are expected to trust.
>
>So probably that we have to educate/encourage developers *not* to submit
>fixes for old bugs that late in the cycle and to rather wait for the next
>version so that it cooks in -rc for a while before hitting users, knowing
>that these fixes will be backported to stable anyway once considered valid=
.
>
>Just like Greg has its "WTF" script to remind some developers that their
>patch is not suited to -stable, I think you could, based on your work,
>try to spot regressions introduced by late patches that fall in the
>category you've filtered and emit such WTF messages to the original
>patch's authors/committers.
>
>It's important to do it only when these patches cause breakage though,
>because we don't want to needlessly delay fixes when they're considered
>certain or well tested. Only when they cause trouble.

I tried pulling all the fixes that went in 4.17 (so far) for bugs that
were introduced as fixes in the v4.16 cycle, I got this list:

d65026c6c62e v4.16-rc7 5 6b1e6cc7855b v4.7   d14d2b78090c
63489f8e8211 v4.16-rc6 13 045c7a3f53d9 v4.11-rc6   5df63c2a149a
5dcd8400884c v4.16-rc6 6 0759e552bce7 v4.7   bd28899dd34f
0ef58b0a05c1 v4.16-rc6 6 0cf737808ae7 v4.14   a56d99d71466 7992894c305e 2af=
c5d61a719
8936ef7604c1 v4.16-rc6 6 6c8702c60b88 v4.9   a957fa190aa9
bbc09e7842a5 v4.16-rc6 6 65a206c01e8e v4.13   3239534a79ee
6a2cf8d3663e v4.16-rc5 12 d64d6c5671db v4.15   6d6340672ba3
859d880cf544 v4.16-rc4 14 b68a68d3dcc1 v4.15   8420f71943ae
e39a97353e53 v4.16-rc4 16 2a842acab109 v4.12   cbe095e2b584
a27fd7a8ed38 v4.16-rc4 19 f214f915e7db v4.13   bffd168c3fc5
0f9da844d877 v4.16-rc2 16 28128c61e08e v4.16-rc2   a95b37e20db9
7324f5399b06 v4.16-rc2 19 186b3c998c50 v4.14   51568d69407d
e78c637127ee v4.16-rc3 25 187d7967a5ee v4.4   e988867fd774
ca9eee95a2de v4.16-rc3 25 d717f7352ec6 v4.12   e988867fd774

So out of 755 commits, 14 have been fixed, that's about 2% and we're not
even done with 4.17.

>For me the rule seems simple to understand, every submitter should
>think like this late in the cycle :
>
>   "you're sending a patch that is going to be part of a stable kernel
>    in no more than 2 weeks, possibly affecting all users upgrading to
>    that kernel if you did something wrong. Are you really certain you
>    want this patch merged now, that it got sufficient testing and that
>    it cannot wait for next -rc1 to get broader exposure first ?"
>
>I'm pretty sure that most of the time it will be "sure I want it now"
>and there will be no problem, which is fine as it automatically reduces
>the number of bugs in releases. Some may reconsider their submission.
>Some may get caught by your automated script if a later commit fixes
>an issue introduced by their patch. And there public shaming is the
>only option (or maybe only the second time if you really want to be
>nice).

I'd much prefer to blame this on maintainers. Authors should be able to
submit a patch whenever they feel like it, maintainers should only merge
a patch in when it's right.=
