Return-Path: <w@1wt.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 764407A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 14:52:10 +0000 (UTC)
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C004834F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 14:52:09 +0000 (UTC)
From: Willy Tarreau <w@1wt.eu>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180503145205.GD23311@1wt.eu>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
	<20180503144612.GJ18390@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180503144612.GJ18390@sasha-vm>
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
Date: Thu, 03 May 2018 14:52:10 -0000

On Thu, May 03, 2018 at 02:46:14PM +0000, Sasha Levin wrote:
> I'll work on breaking up the 4.16 commits into categories, but one
> interesting statistic I've noticed while starting the work is:
> 
> Fixes in -rc cycles:
> rc1 68
> rc2 147
> rc3 88
> rc4 121
> rc5 40
> rc6 193
> rc7 98
> 
> Average days in -next, for a fix, per -rc cycle:
> rc1 27.25
> rc2 21.4286
> rc3 22.5114
> rc4 18.281
> rc5 14.65
> rc6 12.6166
> rc7 8.70408
> 
> Fixes for bugs not introduced in current merge window:
> rc1 40
> rc2 113
> rc3 61
> rc4 79
> rc5 25
> rc6 139
> rc7 72
> 
> So for some reason, there is a rush to push fixes for older bugs (that
> were not introduced in the current merge window) to the point that rc7
> commits that only existed for a few days are merged in to address older
> bugs.

IMHO it's because it's the time it takes for users to start to trust the
3rd or 4th stable release of the previous version, to switch to it, to
face a bug, to report it, and for the maintainer to write a fix.

I wouldn't be much surprised if you'd find that among those not introduced
in the current merge window, many were introduced in the previous release.

Willy
