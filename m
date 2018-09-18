Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DC139E55
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 14:58:15 +0000 (UTC)
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
	[209.85.217.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 65DFA7CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 14:58:15 +0000 (UTC)
Received: by mail-vs1-f67.google.com with SMTP id w8-v6so721676vsl.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 07:58:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAPM=9tz6_byufs2xdOmU73VPVU2ojb=Ox0YzQxFpOs7jztjbFg@mail.gmail.com>
	<20180918094332.2c0d066a@gandalf.local.home>
	<CAKMK7uGDd6771vc8WNyNPPgHoCA_7Bmj19DGLXBn8sU88mpDoA@mail.gmail.com>
In-Reply-To: <CAKMK7uGDd6771vc8WNyNPPgHoCA_7Bmj19DGLXBn8sU88mpDoA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 18 Sep 2018 16:58:02 +0200
Message-ID: <CAMuHMdXnNVt8bvywgZQmMaAt8=Qy=6z7PQa4xsM-2h_Ymo3fwQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC FOR KS] CoC and Linus
 position (perhaps undocumented/closed/limited/invite session)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 18, 2018 at 4:34 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> On Tue, Sep 18, 2018 at 3:43 PM, Steven Rostedt <rostedt@goodmis.org> wrote:
> > On Tue, 18 Sep 2018 15:55:23 +1000
> > Dave Airlie <airlied@gmail.com> wrote:
> What suprised me is how quickly this all happened. Back when we've
> done the same CoC for freedesktop.org and all the graphics stuff
> hosted there, there's been years of hallway track preceeding formally
> enacting the CoC. Social expectations on the mailing list already
> reflected the consensus that we expect constructive and respectful
> collaboration, with informal peer driven enforcement when a maintainer
> went a bit over the line. We also had pretty much everyone ack the
> documentation patch before it landed. In other words, nothing changed
> for dri-devel when we've done this ~2 years ago, except the already
> lived expectations have been encoded.
>
> As much as I welcome this as a first step on a fairly long path, it
> does feel rushed since it seems to have happened in just ~10 days.
> From chatting with people, I think this left a lot wondering about
> what's really going on, with interesting conspiracy theories running
> rampant. Personally I have serious worries that to rapid change will
> overwhelm the community's ability to process it, with ugly unintended
> consequences.

Indeed, it feels a bit... rushed.

Commit ddbd2b7ad99a418c ("Code of Conflict") was acked by 66 developers.
Bringing up the analogy with other source tree changes, I would expect a
patch ripping out a substantial piece of code to be CCed to the people that
acked its original introduction. Obviously that's not what happened here.

Disclaimer: the above doesn't say anything about the merits of the new CoC.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
