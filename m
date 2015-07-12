Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82856BBF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 10:02:22 +0000 (UTC)
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 75362AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 10:02:21 +0000 (UTC)
Received: by obbgp5 with SMTP id gp5so102100506obb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 03:02:21 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <55A1407E.5080800@oracle.com>
References: <55A1407E.5080800@oracle.com>
Date: Sun, 12 Jul 2015 12:02:20 +0200
Message-ID: <CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Sasha Levin <sasha.levin@oracle.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 11, 2015 at 6:12 PM, Sasha Levin <sasha.levin@oracle.com> wrote:
>  1. During the RC cycles bug fixes tend to get sent to Linus without going through
> linux-next. This is very risky, but it seems to work(?). The problem is that Linus
> doesn't restrict those fixes to bugs that were introduced in the current merge window
> but takes anything that is labelled as a "fix".
>
> The result is that there is a significant amount of mostly untested RC patches
> trickling down into stable trees, causing breakage for folks who assume that they
> are running a tested kernel but end up with commits that haven't even been in
> linux-next for more than a few days.
>
> Since for RC kernel it's expected to see issues, and it's easy to correct, this is
> less than a problem, but consider this flow for stable:
>
>  * 4.0: bug "A" introduced.
>  * 4.2-rc1: bug "A" fixed, but fix unknowingly introduced bug "B".

And the fix for "A" was not in -next?
It will be the next day, though.

>  * 4.1.1: ships with fix for "A", and new bug "B".

For serious bugs, the fix may indeed be applied Really Quick.

>  * Stable user machines suffer from breakage.
>  * 4.2-rc7: bug "B" fixed.
>  * Stable users still suffer until the next kernel release.
>
> So while it was quickly fixed for RC, this seriously affects stable.

I wouldn't say "quickly": there's quite some time period (6 weeks) between
-rc1 and -rc7.

If the fix for "B" has a proper "Fixes:" tag, I guess it will be applied to
the next -stable soon. Hence make sure to always provide a "Fixes:" tag when
fixing bugs.

So it boils down to: "How soon to apply fixes to -stable?", and the trade-off
between applying fixes early, but risking to break something unknown and new,
vs. applying fixes late (after more validation), causing more breakage from a
known issue.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
