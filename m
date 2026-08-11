Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8F73090E8
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 08:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786436219; cv=none; b=VNlnXFs6kQcHPeZ1geu7vO+ca8BWWyeQJXhUp53Kp+bGeX8egH4vHeSED+i7c/V3KBC7qBBuPKi716589V98i0/RlgfFJjEM8bTFFBgKT+JEIfi7BjuulHdAIXi7L5y++P6+2VVuwsq7xvl2tCnuAqASn3ONAlp6I8iluMUTRig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786436219; c=relaxed/simple;
	bh=AS0yogx2wPBu2VySh+F0I+137k8R+L2lUwi2YiEcUAM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P+wcy1QIcnUHNQGp3RGJCVdGeQ0Ri7d88FeOg4wzq0cVrrfwNILnV8xLq5k93v2iMvqmxSNQ2xWPmPBfdfDRbzKG/gnLXj0AvV90WRtn6V4m+pS5qTTFMA2Bqkhhu2QT4QwWCjMWPwELdRcYBj/c+mJF9v1vpDTVef8pyCzS+Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-7475a4f8b05so1426130137.1
        for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 01:16:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786436216; x=1787041016;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=5ZqcTS0hKJpzx6pkCR7CSpELI7qaA77dtCsgqy0+gj0=;
        b=AxCHD3YQ/T7MrlEEH37kvuMlqjj8ChSrSZqvfF6s18yAWHErRClWxzNh8Q/SNOon1a
         4l//3wBwp7ql+EO0jGrpUq6rTuv2oai4CFVDSoWeBKyHslHz7GGoP/q77R0aQA0Njtry
         FOjOAV1mjOp7kcr2m3txMWC8eutBXgcjjMD6dWaVuqOG1OHL1jZClP/yMKP84MgFg5NO
         /tEZ1psE4DshimP8616azaSJKTlE2dwz0LHGibz/9BucfcXRjW8IiDClczSkuFmOOkbt
         4EPnL9aUssDRg1ouFqIzv9aLsy3JfisQ4qZIknc/H2G+hZoIptGFlVXEFGWRNPtgzuSp
         CMuA==
X-Forwarded-Encrypted: i=1; AHgh+Rp+lf3sjwLIkWBaiTOE6ajXlrw/JTH6Sy0npBDfvWV8V0Fu85eGn7cx3kYkodgECSCJOntmFjDK@lists.linux.dev
X-Gm-Message-State: AOJu0YwvsAy5WzdInLgTi2N9p91unE8Etm183v5KJBIcSLWBTMFYNvcW
	qhfcTlsHlHizhStpCkIuavbcOvBVGcD46p+n4KKAzywJQ6C7DFRAVKh+kaGO6lK/
X-Gm-Gg: AR+sD12zaH7MPRUINU76mbidd/LTFXWdIStBXJ/2uJgkfUiPC8wyEHfrlQOMqzZGiPG
	9Wt3G6OGtd0sRQ7YnNTmqhSdDY17398sXck1Vjzq3ADB8lnXHl5+st5nvUeo7aydzVOvm1pLXL1
	vTnyj9En7N7rJXpn76Gw72O2CSdNBlcBRnfP98F6Kbktwp8L3Pxu/EYvIiriLnAWc/n2F28sVpI
	8jO+v2Vogw0f/hqYHWuDqg0XUfOOY4RjFHidcN/ydqIwnYwoci7cTpCi3Rw6ESGV6l7Oj1x22Yi
	jfScI6QXDHroRCvzcNzzu4Gj4iFKJuQVRz3iUEK2wSUDfx8H5HDTo50+qILmtr0tBCRZgxzukoK
	DOD9lgsB8O6A+TUOe0svuEwGr7ygECEp5Rz9wejRUU9N+SzNbEnvKxpYcCBP7XD4CanD6VjCjeK
	nucSrW0VY3hz/sOuS9AHE8TJGNDkxAmRonXNs/BjbaIdM1mTYOBYkQstEpCx3yQcAeTEsCuPAsf
	YAMhmA/lmxwai4bTZDuN45cig==
X-Received: by 2002:a05:6102:c13:b0:726:8813:2078 with SMTP id ada2fe7eead31-76b56fb9d92mr469689137.11.1786436216086;
        Tue, 11 Aug 2026 01:16:56 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-76b65bb5ddesm277372137.12.2026.08.11.01.16.55
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2026 01:16:55 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-976ea28c65fso1576487241.1
        for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 01:16:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrGN5l03wmCXBq33j+0Qw1EIFRXMff0KJUBWBnA7uTrDvL5pQBVNMDtMjoCRAJIt0awXyz3KlZw@lists.linux.dev
X-Received: by 2002:a05:6102:809f:b0:631:2624:e5e7 with SMTP id
 ada2fe7eead31-76b579d3cd2mr521998137.14.1786436211273; Tue, 11 Aug 2026
 01:16:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer> <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer> <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home> <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com> <CAMuHMdVBABOiOWDdCKE0zDffj856ui5qr3UFVptwcAn1_Hx7oQ@mail.gmail.com>
In-Reply-To: <CAMuHMdVBABOiOWDdCKE0zDffj856ui5qr3UFVptwcAn1_Hx7oQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 11 Aug 2026 10:16:39 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVfTs+jbmx=jc=aqdCBEqN80=QW84imJo1ozHzsj3mJDw@mail.gmail.com>
X-Gm-Features: AUfX_mxtkGoRWce7-mM287fnPaiA5dsJUILtWerp-mKKZ6sRdFKvuIibgt7CB2U
Message-ID: <CAMuHMdVfTs+jbmx=jc=aqdCBEqN80=QW84imJo1ozHzsj3mJDw@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Dave Airlie <airlied@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Tue, 11 Aug 2026 at 09:12, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Tue, 11 Aug 2026 at 05:30, Dave Airlie <airlied@gmail.com> wrote:
> > > It's not even all of DRM, it's specifically the AMD and Intel driver
> > > stacks which as far as I can tell just routinely cherry pick all their
> > > fixes between their development and fixes branches without even
> > > considering the possibility of either merging up the fixes branch or
> > > just waiting and letting the fixes propagate back.  None of the rest of
> > > the DRM trees ever seems to cause these issues.
> >
> > AMD and Intel are just the two largest teams with the longest
> > pipelines of internal engineers and teams. There are between 50 and
> > 100 people in those groups, across multiple disjoint teams feeding
> > into a single driver. It just doesn't scale for all 50-100 people to
> > understand the cycle of the upstream Linus tree at all times for all
> > patches.
>
> Doesn't this cause internal (to AMD and Intel) issues, too?
> How come we cannot educate contributors at these two large companies,
> while we expect other contributors to be aware?
> I would hope the people who do the actual commits do know?
>
> > Which means for CI reasons and pipeline reasons, things go into -next
> > is the default, our -next trees are always open, and get disconnected
> > from upstream next from rc6->rc1 so not to mess things up.
>
> Just merging fixes into next[*], and resolving the conflicts, before
> publishing the latter would help a lot.  That would mean the conflicts
> would no longer impact every user of your next branch.

That wouldn't solve the issue for people who care about the actual
commit IDs and not having duplicates, e.g. for stable tacking, and
in Fixes-tags.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
