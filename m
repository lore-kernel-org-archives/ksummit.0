Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 85C34B59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 20:56:22 +0000 (UTC)
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 345C2292
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 20:56:22 +0000 (UTC)
Received: by mail-it0-f41.google.com with SMTP id 70so17787630ita.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 13:56:22 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <CAKMK7uE+E0RAB7z3zhtKn5tj45g_0PsLnNrGwJOxGJzUyqos8g@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAPM=9tyU0Q+CZRpgnx34wRNLzMU1B5DmOSA+S-SRXghVbWKnSw@mail.gmail.com>
	<CAKMK7uE+E0RAB7z3zhtKn5tj45g_0PsLnNrGwJOxGJzUyqos8g@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 18 Apr 2017 13:56:21 -0700
Message-ID: <CA+55aFxhK=h-wr8kFf42fXFHh-Dsn7QNiFWt+Kcr0umG4k3gQw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset=UTF-8
Cc: Rom Lemarchand <romlem@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>, Ingo Molnar <mingo@kernel.org>,
	Doug Ledford <dledford@redhat.com>, Sean Paul <seanpaul@chromium.org>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Apr 18, 2017 at 1:38 PM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> Depending what we talk about it might be useful to invite Sean Paul
> and/or Jani Nikula as drm-misc co-maintainers (which really is the drm
> core + subsystem wide refactorings + misc small drivers in one team
> nowadays). Sean Paul is also doing ChromeOS from Google's pov, so
> could bring that perspective.

So I'm seeing problems keeping it to a small number. We *will* have to cut.

One thing to do is to perhaps require that everybody can talk about at
least one particular process pain-point with a suggested improvement.
Anybody who doesn't have a painpoint (or whose painpoint is something
they don't think can be fixed) could recuse themselves as being
"happy".

Of course, that's not likely to cut down on numbers _that_ much, so
we'll just have to be picky ;)

> For Android I think it'd be great to have Rom Lemarchand invited (he's
> google's overall android kernel engineer).

Good.

Side note: people should think about various infrastructure/testing
people too  So kernel.org, but also things like zero-day etc test
labs.

I do *not* think we needs tons and tons of developers - unless they
have particular maintenance issues.

Particular subsystems should aim to have one person per subsystem that
can speak for that subsystem, I think, unless there are big reasons
why we'd want more and it's particularly contentious.

If we end up with 20 developers / maintainers and 10 people who are
downstream / stable / infrastructure, I think we'd likely have a
reasonable mix.

I think that the top-ten list (that was originally cc'd) was
reasonably obvious, but it was literallty just a "first round".

And it's good to have numbers to show "these are clearly major
top-level maintainers", and people on that short-list should at least
point to an alternate like DaveA already did.

The longer list of 50 was more of a "and here's more people that show
up high in git that should then have other reasons to be there".

                 Linus
