Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 83ECF955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 21:39:24 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F3A45136
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 21:39:23 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id a140so517014ita.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 14:39:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFxhK=h-wr8kFf42fXFHh-Dsn7QNiFWt+Kcr0umG4k3gQw@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAPM=9tyU0Q+CZRpgnx34wRNLzMU1B5DmOSA+S-SRXghVbWKnSw@mail.gmail.com>
	<CAKMK7uE+E0RAB7z3zhtKn5tj45g_0PsLnNrGwJOxGJzUyqos8g@mail.gmail.com>
	<CA+55aFxhK=h-wr8kFf42fXFHh-Dsn7QNiFWt+Kcr0umG4k3gQw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 18 Apr 2017 23:39:22 +0200
Message-ID: <CAKMK7uHuQgjaGN03omr_c9JTs11zRL6Dxri8jr2CCFXQ4EN7og@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
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

On Tue, Apr 18, 2017 at 10:56 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Tue, Apr 18, 2017 at 1:38 PM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>>
>> Depending what we talk about it might be useful to invite Sean Paul
>> and/or Jani Nikula as drm-misc co-maintainers (which really is the drm
>> core + subsystem wide refactorings + misc small drivers in one team
>> nowadays). Sean Paul is also doing ChromeOS from Google's pov, so
>> could bring that perspective.
>
> So I'm seeing problems keeping it to a small number. We *will* have to cut.
>
> One thing to do is to perhaps require that everybody can talk about at
> least one particular process pain-point with a suggested improvement.
> Anybody who doesn't have a painpoint (or whose painpoint is something
> they don't think can be fixed) could recuse themselves as being
> "happy".
>
> Of course, that's not likely to cut down on numbers _that_ much, so
> we'll just have to be picky ;)

Yeah, Sean/Jani probably only make sense if we bikeshed group
maintainer models the entire day.

>> For Android I think it'd be great to have Rom Lemarchand invited (he's
>> google's overall android kernel engineer).
>
> Good.
>
> Side note: people should think about various infrastructure/testing
> people too  So kernel.org, but also things like zero-day etc test
> labs.

Hm, we're trying to build up a much more ambitious CI here for drm and
intel specifically, but nothing all that interesting yet relevant
beyond drm. What could be interesting (but not for the discussion
session, more for the general track) is getting our userspace CI team
to explain what they do. Except that it runs in userspace the gl
drivers are as much low-level driver nonsense as anything else as far
as drivers go, and the stuff they're pulling off is seriously
impressive. Millions of test runs each day (including pre-merge to
stop any regressions before they even get close to the tree),
contributor numbers and code size on par with a major Linux subsystem,
100+ different machines and all the fun of testing hw ("yep, that
killed all the machines, oops").

A hw testing bof thing for different (driver) subsystems to compare
notes might be good, but I'm not sure that'd be useful for the group
discussions really. Probably more talking to the audience than what
you're aiming for.

> I do *not* think we needs tons and tons of developers - unless they
> have particular maintenance issues.

I do think we overall have some big issues with all the folks who
decide not to contribute to upstream but still ship Linux. Android is
a big one, but socs in general suffer from this. Like you said in
another mail, pointing fingers is no use, least because if we put all
the blame on hw vendors there's nothing we can do on our side to
improve things :-)

Since they don't even show it's hard to find out who'd be a good rep,
so probably not much use getting them in as developers (or I have no
idea how at least). But I do think we have a big gap here (and e.g.
drm for a long time entirely lacked the android perspective in
upstream work, until upstream folks + google worked to fix that).
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
