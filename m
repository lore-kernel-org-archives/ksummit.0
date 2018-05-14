Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A7DE01F4D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 08:00:32 +0000 (UTC)
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F26F5682
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 08:00:31 +0000 (UTC)
Received: by mail-ua0-f175.google.com with SMTP id a2-v6so7683196uak.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 01:00:31 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <CAMuHMdWDNjsba29id4Svjy_tauKivWDUixub3qf82Nx_6rYueA@mail.gmail.com>
References: <20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<nycvar.YFH.7.76.1805101802150.27054@cbobk.fhfr.pm>
	<20180510164722.GH8514@sasha-vm>
	<CAMuHMdWDNjsba29id4Svjy_tauKivWDUixub3qf82Nx_6rYueA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 14 May 2018 10:00:30 +0200
Message-ID: <CAMuHMdUHK=kmJB-=G-Y7YEneZityMzi5YZ3nJFD6uCs61bOaiQ@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
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

On Tue, May 1, 2018 at 10:00 PM, Sasha Levin
<Alexander.Levin@microsoft.com> wrote:
> On Tue, May 01, 2018 at 03:44:50PM -0400, Theodore Y. Ts'o wrote:
>>On Tue, May 01, 2018 at 04:38:21PM +0000, Sasha Levin wrote:
>>>  - A merge window commit spent 50% more days, on average, in -next than a -rc
>>>    commit.
>>
>>So it *used* to be the case that after the merge window, I would queue
>>up bug fixes for the next merge window.  Greg K-H pushed for me to
>>send them to Linus sooner, instead of waiting for the next merge
>>window.  TBH, it's actually easier for me to just wait until the next
>>merge window, but please understand that there are multiple pressures
>>on maintainers going on here, and the latest efforts to try to use
>>AUTOSEL is just the most recent pressure placed on maintainers.
>>
>>The other thing is that when there is a regression users who are
>>testing linux-next want it fixed *fast*.  That's considered more
>>important to them than waiting for one, perfect patch, just to keep
>>AUTOSEL happy.
>>
>>So please understand that when you say that maintainers *need* to do X
>>or Y, that there you are not the only one standing in line putting
>>pressures on maintainers saying they *need* to do something.  And
>>quite frankly, I consider keeping people who are nice enough to test
>>linux-next happy to be **far** more important than AUTOSEL.
>
> Ted,
>
> I'm not at all asking to wait before adding the patches to your tree,
> or to -next. I'm asking to hold on to them a bit longer before you
> push them to Linus because I can show that patches that don't spend
> enough time in -next are more likely to introduce bugs.
>
> Yes, linux-next users want it fixed *now* and I completely agree it
> should be done that way, but the fix should not be immediately pushed to
> Linus as well.
>
> I've just finished reading an interesting article on LWN about the
> PostgreSQL fsync issues (https://lwn.net/Articles/752952/). If you
> look at Willy's commit, he wrote the final version of it about 5 days
> ago, Jeff merged it in 3 days ago, and Linus merged it in the tree
> today. Did it spend any time getting -next testing? nope.
>
> What's worse is that that commit is tagged for stable, which means
> that (given Greg's schedule) it may find it's way to -stable users
> even before some -next users/bots had a chance to test it out.

I just noticed a case where a commit was picked up for stable, while a
bot had flagged it as a build regression 18 hours earlier (with a CC to
lkml).

So it looks like the script for backporting commits should be enhanced to
check for this (searching for the commit ID in my email archive found the
bot report).

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
