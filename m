Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 80613AE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 17:34:59 +0000 (UTC)
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0135.outbound.protection.outlook.com [104.47.33.135])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 29C60728
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 17:34:58 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Al Viro <viro@ZenIV.linux.org.uk>
Date: Thu, 3 May 2018 17:34:24 +0000
Message-ID: <20180503173422.GR18390@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org> <20180503144612.GJ18390@sasha-vm>
	<20180503165446.GB30522@ZenIV.linux.org.uk>
In-Reply-To: <20180503165446.GB30522@ZenIV.linux.org.uk>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <30FD635C725D2C4CA6CA4F76831D91D5@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 03, 2018 at 05:54:46PM +0100, Al Viro wrote:
>On Thu, May 03, 2018 at 02:46:14PM +0000, Sasha Levin via Ksummit-discuss =
wrote:
>
>> Fixes in -rc cycles:
>> rc1 68
>> rc2 147
>> rc3 88
>> rc4 121
>> rc5 40
>> rc6 193
>> rc7 98
>>
>> Average days in -next, for a fix, per -rc cycle:
>> rc1 27.25
>> rc2 21.4286
>> rc3 22.5114
>> rc4 18.281
>> rc5 14.65
>> rc6 12.6166
>> rc7 8.70408
>>
>> Fixes for bugs not introduced in current merge window:
>> rc1 40
>> rc2 113
>> rc3 61
>> rc4 79
>> rc5 25
>> rc6 139
>> rc7 72
>>
>> So for some reason, there is a rush to push fixes for older bugs (that
>> were not introduced in the current merge window) to the point that rc7
>> commits that only existed for a few days are merged in to address older
>> bugs.
>
>I really wonder how accurate your interpretation of Fixes: is.
>Consider e.g. the situation when an old bug is found and partial fixes
>applied.  Then we find that those fixes did not cover everything and,
>come next cycle, add more on top of those.  Where should Fixes: on
>the incrementals point to?  Original commit?  But they won't apply
>without the first batch.  The last in the original pile?  But it
>would imply (by your metrics) that original fixes had *INTRODUCED*
>bugs.

It's vaguely close. Beyond the things you mentioned, some commits don't
have a fixes tag, some mention what commit they fixed in the body rather
than a tag, and so on.

This is just an approximation.

>Moreover, what the hell do you suggest in situation when
>	* foofs_barf() is b0rken in quite a few ways.  There's an
>easily triggerable memory corruptor that can be fixed locally as well
>as something else that needs a change of e.g. ->mkdir() calling
>conventions to take care of.  The change is mechanical and fairly
>simple, but it's already -rc4.

I'm not advocating to forcefully block people from submitting patches
after -rc4 (that was Ted's suggesting).

I'm just saying that as a maintainer, you should use your brain and
figure out how critical the bug is, how good is the fix and how well was
it tested, and decide if you want to merge it in or not.

If it fixed the bug and didn't introduce a regression, great! If it
messed something else, you'd have some input on how to address it better
in the future.

I'm trying to come up with a tool/system to help maintainers with
this task because right now it's not working too well. I'm not trying to
introduce arbitrary rules to make your life miserable.

>Even though the whole thing is well-understood at that point,
>we *can't* apply all 3 - it's too late in the cycle for the
>calling conventions' change in the middle of the series.
>
>Should we apply the first fix that cycle, or should it slide to the
>next one?  We can't apply #1 + #3 --- #3 won't even compile without
>#2.  We can't apply #3 without #1 --- they can be transposed, but
>it's nowhere near a mechanical transformation.  So WTF should #3
>have in "Fixes:"?=
