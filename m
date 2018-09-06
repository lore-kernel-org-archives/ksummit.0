Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 30B9F94B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:43:18 +0000 (UTC)
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BC3AF71C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:43:17 +0000 (UTC)
Received: by mail-io0-f195.google.com with SMTP id y12-v6so8398706ioj.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 03:43:17 -0700 (PDT)
MIME-Version: 1.0
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
	<CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
	<20180905083120.GA28353@kroah.com>
	<CAKMK7uHLACdr4vGexqO-oh+QrRqxq0_KyJdhnr_eAZy6ApwWUQ@mail.gmail.com>
	<CACRpkdYP1_kG+nzg0Op-3VoLqRm8nUpXf8Daf_1B17-wWJyLjA@mail.gmail.com>
	<CAK8P3a09LAbSUyLR5DTAea35xtOgRpjRYkK1EGo1kDMEQjH4uA@mail.gmail.com>
In-Reply-To: <CAK8P3a09LAbSUyLR5DTAea35xtOgRpjRYkK1EGo1kDMEQjH4uA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 6 Sep 2018 12:43:05 +0200
Message-ID: <CACRpkdZW03DuMVQ8Rn5GOiiN2z16cqq0WMmQFZquaGBp4BpsCA@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Cc: Jon Masters <jcm@redhat.com>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>
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

On Thu, Sep 6, 2018 at 12:25 PM Arnd Bergmann <arnd@arndb.de> wrote:

> I think in the generalized case, you also want the reverse, but
> that may be harder: When targetting specific software products
> that you want to integrate your code, there should be a deadline
> for the latest point by which code needs to be posted in
> public.

This brings in the process of procurement, as in how companies
making products source their misc hardware like sensors,
touchscreens, displays, FPGAs or whatnot.

Maybe this is obvious.

It happened at one point that we were sourcing hardware from
a third party, and it was pretty complex and I asked procurement
to put a demand on the company to provide upstream support
so we could just grab the latest kernel and use that driver.

I heard other very FOSS-oriented companies ask the same
and is pretty much what I've heard people like Jon Masters
and the Chromebook people say in relation to upstream first
(they can slam me if they disagree) - others also want an
upstream first approach from their component suppliers and
it is going to be part of the procurement process so having
upstream first is going to be a competitive advantage or
even strict requirement for the component vendor.

As it happened in my case the vendor was very unhappy
with this and unused to this kind of requirements. (They have
since changed their attitude so no-one needs to be outed.)

What I realized was that instead of being "hard" on vendors
with this, I could gain more by being let's say "firm".

I required that in order to procure their component, they
should present an upstreaming strategy, and post an initial
patch set for the specific product before we would agree
to procurement. This was more of a gentlemen agreement
than a hard contract clause, but it worked very well to
transform that company, and I think it is a good way, because
being too hard can be counter-productive, I guess it comes
from simple diplomacy, people do not like threats.

Yours,
Linus Walleij
