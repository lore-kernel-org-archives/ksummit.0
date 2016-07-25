Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0779771
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Jul 2016 20:23:47 +0000 (UTC)
Received: from mail.free-electrons.com (down.free-electrons.com
	[37.187.137.238])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E29DF25B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 25 Jul 2016 20:23:45 +0000 (UTC)
Date: Mon, 25 Jul 2016 22:23:43 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20160725202343.GJ11405@piout.net>
References: <20160725190125.GS5537@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160725190125.GS5537@wotan.suse.de>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Nominating Fengguang Wu - 0-day
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 25/07/2016 at 21:01:25 +0200, Luis R. Rodriguez wrote :
> 
> It surprises Fengguang Wu <fengguang.wu@intel.com> hasn't been nominated yet,
> so I'd like to nominate him. The mechanical process should probably include in
> the future a scrape for top Reported-by contributors.
> 

That's a good point.

> Fengguang's 0-day infrastructure is invaluable to day to day kernel
> development, having him present would be great for any questions that may come
> up. Getting a statistical overview / update of impact / any major architectural
> changes of the 0-day infrastructure would also be very useful. If maintainers
> are not yet using 0-day it would be great to hear why. If your contributors are
> not using 0-day (I know some of you exist) I'd like to know why you don't use it,
> I often run into issues on linux-next which at times I have to fix, if 0-day
> would have been used a folowup fix would not have been needed.
> 

Well, I think it would also help to know how the patch/git tree
selection is done. Lately, I've been receiving less reports from 0-day
and some issues were found by Arnd's autobuilders after hitting
linux-next. I used to get report of compilation breakage 10-15 minutes
after the patch submission.


-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
