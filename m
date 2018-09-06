Return-Path: <arndbergmann@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CCD32DC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:25:34 +0000 (UTC)
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 624EF8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:25:34 +0000 (UTC)
Received: by mail-qt0-f196.google.com with SMTP id o15-v6so11572314qtk.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 03:25:34 -0700 (PDT)
MIME-Version: 1.0
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
	<CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
	<20180905083120.GA28353@kroah.com>
	<CAKMK7uHLACdr4vGexqO-oh+QrRqxq0_KyJdhnr_eAZy6ApwWUQ@mail.gmail.com>
	<CACRpkdYP1_kG+nzg0Op-3VoLqRm8nUpXf8Daf_1B17-wWJyLjA@mail.gmail.com>
In-Reply-To: <CACRpkdYP1_kG+nzg0Op-3VoLqRm8nUpXf8Daf_1B17-wWJyLjA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 6 Sep 2018 12:25:16 +0200
Message-ID: <CAK8P3a09LAbSUyLR5DTAea35xtOgRpjRYkK1EGo1kDMEQjH4uA@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	gregkh <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Challenges in Upstream
 vs. Embargoed Development in Intel Graphics.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 6, 2018 at 11:54 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, Sep 5, 2018 at 11:00 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> > I have no idea how this works outside of intel or graphics, I tend to
> > not chat with those people as much as I do with graphics people. Would
> > be interesting to know how it is outside of the graphics bubble
> > indeed.
>
> More or less any SoC company for routers, handsets, tablets etc
> have the same problem.
>
> At one point I was made responsible for such a scenario. The
> approach I developed was a bit ad hoc but contained some of this:

Thanks for sharing those.

> - Get management to provide a cut-off date for embargo. Like
>   "after this point in time we certainly do not care what code you
>   publish pertaining to X" and make that formal so that when that
>   day comes developers can simply start sending the code without
>   having to ask permission again, because having to do that is
>   pointless and bureaucratic.

I think in the generalized case, you also want the reverse, but
that may be harder: When targetting specific software products
that you want to integrate your code, there should be a deadline
for the latest point by which code needs to be posted in
public. That is mainly what I remember from working on
enterprise hardware in a previous job: you are either based
on a distro schedule (needs to be posted/reviewed/integrated
by date X to have a chance to make it into future product Y),
or on a hardware schedule (needs to be posted X months
ahead of HW product launch to have a reasonable chance
of making it into software products by the time the hardware
makes it into customer's hands).

Having both the earliest date (for information embargo) and
latest date (for software integration) gives you a nice way to
estimate how likely the software is going to make it in time.

       Arnd
