Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 39F642F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jun 2019 11:48:25 +0000 (UTC)
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
	[209.85.167.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E602B19B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jun 2019 11:48:23 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id 136so7292194lfa.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Jun 2019 04:48:23 -0700 (PDT)
MIME-Version: 1.0
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
	<20190603211004.GU12898@sasha-vm> <20190603221131.GE2456@sirena.org.uk>
	<6a90bf6c-e9a4-85eb-527c-c4bc3658e779@linuxfoundation.org>
	<20190605092717.GK2456@sirena.org.uk>
In-Reply-To: <20190605092717.GK2456@sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 5 Jun 2019 13:48:10 +0200
Message-ID: <CAMuHMdV7Sp00r40czj=w8ta5nOMebXmZdzybvzE=V3vuZ-sdCQ@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Mark,

On Wed, Jun 5, 2019 at 11:27 AM Mark Brown <broonie@kernel.org> wrote:
> On Tue, Jun 04, 2019 at 11:16:17AM -0600, Shuah Khan wrote:
> > - Create a directory under our source tree for bugs. This way bugs
> >   stay with the source and we manage them the same way we handle
> >   non-runtime objects: Documenation, scripts etc. This can be flat
> >   directory or have a sub-dir structure underneath.
> >
> >   ../bugs similar to ../Documentation
>
> If bugs are tracked in the source tree doesn't that make it difficult
> for people to update the bugs?

Indeed. While storing the bug state with the sources sounds like a
great idea, it's far from trivial in distributed development:
  - Where are bugs reported (added to git)?
    In upstream, or in maintainer repos?
    At least the tree where a fix is applied should carry the bug report.
  - Unless downstream trees merge from upstream on a regular basis,
    they won't have all reports for bugs that apply to their trees.

Closing bugs does follow the expected path, though: both fix and bug
report update move upstream through a pull request.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
