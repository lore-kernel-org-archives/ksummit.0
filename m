Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 98F19F89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 09:29:10 +0000 (UTC)
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
	[209.85.222.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F26E88B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 09:29:09 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id f4-v6so11412847uao.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 02:29:09 -0700 (PDT)
MIME-Version: 1.0
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180906224541.27a9c8fe@vmware.local.home>
	<CAMuHMdV=m7y_Jj7mgSo1SZGCEpXJz4R-y-KbXSoi+OaDmBtwHQ@mail.gmail.com>
	<CAKMK7uEjG-9jY4ptCmyqXDQtg=WCkBYaf58ycHk2_ib+VZ0x4g@mail.gmail.com>
In-Reply-To: <CAKMK7uEjG-9jY4ptCmyqXDQtg=WCkBYaf58ycHk2_ib+VZ0x4g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 7 Sep 2018 11:28:57 +0200
Message-ID: <CAMuHMdUpd0-cqX+eLPg+5jb58POPnWQpDVQpLOkx+9hzTab8Sw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Daniel,

On Fri, Sep 7, 2018 at 11:07 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> On Fri, Sep 7, 2018 at 10:40 AM, Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> > On Fri, Sep 7, 2018 at 4:45 AM Steven Rostedt <rostedt@goodmis.org> wrote:
> >> Another issue about having fixes sit in linux-next for some time after
> >> -rc5, is that by that time, linux-next is filled with new development
> >> code waiting for the next merge window. A subtle fix for a bug that
> >> wasn't caught by linux-next in the first place (how else would that bug
> >> still be around by rc5?) is highly likely not to catch a bug with the
> >> fix to that subtle bug.
> >
> > Or the issue may never show up in linux-next at all.
> >
> > With strict by-subsystem merge policies, splitting a complicated patch set
> > by subsystem and scheduling it for inclusion across multiple kernel
> > versions can be challenging.  If anything slightly related is applied
> > independently, or due to a scheduling oversight or merge window miss, this
> > may lead to a regression in mainline that is never present in linux-next,
> > and usually only detected late, leading to a fix after -rc5.
>
> Aside: I'm still baffled at how much soc people split up their work.
> As you point out, testing becomes a game of luck, because integration
> happens only in the merge window for real.

SoC maintainers usually still have their own integration branches. E.g.
for Renesas ARM SoCs we have renesas-devel (DTS and drivers/soc/
integration) and renesas-drivers (renesas-devel + various subsystem
for-next branches).

> Anything I'm involved in I'm insisting on a proper topic branch that
> everyone pulls in, to make sure that we can test the full interactions
> when we actually feature-freeze before the merge window. Usually that
> means baking the merge into the drm side, because we do a lot more
> testing than others (e.g. upstream intel audio validation is done
> through the drm trees too - it doesn't work that great because it's
> post-merge only for sound).

We used to have topic branches for e.g. clock definitions, to be included
by both driver and DTS, but these days we start with a few hardcoded clock
numbers in the DTS, and replace them by symbols in the next release.
Less need for setup and communication for shared topic branches.

The original issue I described above usually doesn't show up for new
development, but for converting from e.g. old board code to new DT-based
code. In se, that should disappear, eventually ;-)

For new development, all pieces go in separately in maintainers trees
(clocks, pinctrl, DT bindings, drivers, DTS, ...), and start becoming
operational when all pieces have fallen together. That's one nice
property of DT ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
