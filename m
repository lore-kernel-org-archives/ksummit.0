Return-Path: <w@1wt.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0D4098FF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 16:01:01 +0000 (UTC)
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 428F9688
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 16:00:59 +0000 (UTC)
From: Willy Tarreau <w@1wt.eu>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180503160046.GH23311@1wt.eu>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
	<20180503144612.GJ18390@sasha-vm> <20180503145205.GD23311@1wt.eu>
	<20180503150104.GL18390@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180503150104.GL18390@sasha-vm>
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
Date: Thu, 03 May 2018 16:01:01 -0000

On Thu, May 03, 2018 at 03:01:08PM +0000, Sasha Levin wrote:
> On Thu, May 03, 2018 at 04:52:05PM +0200, Willy Tarreau wrote:
> >I wouldn't be much surprised if you'd find that among those not introduced
> >in the current merge window, many were introduced in the previous release.
> 
> Interesting. Here it is for v4.16-rcX fixes that fix something
> introduced before v4.14:
> 
> rc1 30
> rc2 87
> rc3 51
> rc4 68
> rc5 23
> rc6 113
> rc7 61
> 
> So I'm not sure if what you described is really the case.

This is rather interesting and probably deserves some analysis or
explanation. I agree that probably a number of the 61 fixes in rc7
could have cooked a little bit more if they fixed 5 months-old bugs.

Willy
