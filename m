Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E5703116E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 07:53:40 +0000 (UTC)
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 43F86189
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 07:53:40 +0000 (UTC)
Received: by mail-vk0-f66.google.com with SMTP id g83-v6so6871671vkc.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 00:53:40 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20180510164722.GH8514@sasha-vm>
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
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 14 May 2018 09:53:38 +0200
Message-ID: <CAMuHMdWDNjsba29id4Svjy_tauKivWDUixub3qf82Nx_6rYueA@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 10, 2018 at 6:47 PM, Sasha Levin via Ksummit-discuss
<ksummit-discuss@lists.linuxfoundation.org> wrote:
> On Thu, May 10, 2018 at 06:03:22PM +0200, Jiri Kosina wrote:
>>On Wed, 9 May 2018, Daniel Vetter wrote:
>>> >> Then, why don't we have a pre-integration tree for fixes? That would
>>> >> at least simply automated testing of fixes separately from new
>>> >> material.
>>> >
>>> >> Perhaps this has already been discussed, and concluded and it's not
>>> >> worth it, then apologize for my ignorance.
>>> >
>>> > I think this is an excellent idea, copying in Stephen for his input.
>>> > I'm currently on holiday but unless someone convinces me it's a terrible
>>> > idea I'm willing to at least give it a go on a trial basis once I'm back
>>> > home.
>>>
>>> Since Stephen merges all -fixes branches first, before merging all the
>>> -next branches, he already generates that as part of linux-next. All
>>> he'd need to do is push that intermediate state out to some
>>> linux-fixes branch for consumption by test bots.
>>
>>What I do for my trees is that I actually merge the '-fixes' branch (that
>>is scheduled to go to Linus in the 'current' cycle) into my for-next
>>branch as well.
>>
>>This has the advantage of (a) getting all the coverage linux-next does (b)
>>seeing any potential merge conflicts early
>>
>>Is this not feasible for other trees?
>
> When Linus tags -rc1, -next will start filling up with commits destined
> for the next merge window. The resulting -next tree becomes very
> unstable, and very difficult to test.
>
> The idea behind next-fixes is to provide a tree that will contain fixes
> for the current merge window, which will generate a much more stable
> tree that users/bots could actually run and validate the fixes that will
> be merged in the upcoming weeks.
>
> Right now, with the method you've described, there is no easy way to
> test your '-fixes' branch even though the commits in there will be
> pulled in by Linus much sooner than your 'for-next' branch.
>
> You'll still get the same coverage from -next, but if you provide your
> -fixes branch seperately you'll also get more coverage for the fixes
> you're about to send to Linus.

I think you missed the "as well" in Jiri's response.

When I create the bi-weekly renesas-drivers release (see e.g.
https://www.spinics.net/lists/linux-renesas-soc/msg27350.html), there are
some subsystems that manage to have several conflicts between their
for-next branch and their fixes in Linus' tree almost every single release.
Hence I strongly support merging your own fixes branches into your own
for-next branch, and resolve the conflicts yourself, to keep your for-next
branch conflict free.

(Note that the last release linked above was very atypical: it was one of
the very few (first one ever?) that didn't have any conflicts).

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
