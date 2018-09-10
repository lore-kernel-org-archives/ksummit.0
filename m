Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E91AFDBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:26:56 +0000 (UTC)
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 901EAF1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:26:56 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id s17-v6so10424414plp.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:26:56 -0700 (PDT)
Date: Mon, 10 Sep 2018 16:26:53 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20180910232652.GC1764@localhost.localdomain>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<20180906225531.GB2251@localhost.localdomain>
	<CAMuHMdVqhOq11fxOf7RUXEq+oT5A2gGKSVx=FadtiVz23AywHA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdVqhOq11fxOf7RUXEq+oT5A2gGKSVx=FadtiVz23AywHA@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello Geert,

On Fri, Sep 07, 2018 at 10:21:15AM +0200, Geert Uytterhoeven wrote:
> Hi Eduardo,
> 
> On Fri, Sep 7, 2018 at 12:55 AM Eduardo Valentin <edubezval@gmail.com> wrote:
> > On Thu, Sep 06, 2018 at 09:18:07PM +0200, Jiri Kosina wrote:
> > Honestly, the fact that somehow the community managed to make this to
> > stable (and eventually to distros) is really good. Imagine for a second
> > a world in which these made only mainline and no stable branch..
> 
> It could have been the disaster needed to trigger a paradigm shift in the
> software industry?

Well yeah. Just to clarify, what I meant is that the community did a
really great job handling the event, despite the fact that we could have
dont better. But I still think pushing everyone to make sure they can
move to newer kernels is best thing to do. How achieve it is that is a
different discussion.

> 
> For a fully isolated/controlled system old stable may make sense, but in
> the post-Internet connected world, where the whole world population can
> peek at your front door, you'd better be prepared to upgrade any time.

Well yeah, I would do the same. But then there is thing called vendor
trees. That makes developers life even more horrible. As you hear in
this thread, even top noch developer would avoid backporting stuff to
too old kernels, and latest LTS is probably the oldest one can trust.
But vendor trees, which is the stuff that really ends up running on
those cameras running Linux at your front door, are usually old and
have bunch of code that community is not aware (and really should not be). 
And backporting stuff to those kernels is even a worse nighmare than
backporting to older stables.

> Despite backporting, you'll always be vulnerable to some security issues
> that were fixed in mainline.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
