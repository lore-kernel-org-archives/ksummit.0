Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BC73AFB06
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 07:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786432358; cv=none; b=M2C1453SeYT5NHxpQgXXGrVt2QD8BkR9u63fB8Eju8L+sFM3I6vnNPYOMHl7yxqEJIGvqt1/A0hreo8zDvix/SqTLO70Kc4AjvnmLwyr0LczWnlXUxovjdG3eqqaVIbfSl9UPU7il7/ahs5sutBWWb9fYUmsjb8b/EvYD/QCH60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786432358; c=relaxed/simple;
	bh=tPpOXwxvIQmR1+bfPMLkDOg+PJFu7TKW7gIumSgAJ6A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=STCMq6Kt9toX9vOLcTkvMTEo6SYehhv+W7Z47me79S0H+tXZ8pLdGKn5nGIaag8XH2kPXY9bX8vXKdXh66V9S2nZBbFLHgCJQJsHHKf/5aaq3rLNe2ZuXs12h0dNDXq65UEXOntcgYDRE2/rEqVJI3wqFVOovcdLXYlXpIDealI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5c276bd3692so2384884e0c.3
        for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 00:12:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786432356; x=1787037156;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=3dHzmU+GjSJe6tcZjcuFgYOcmDcRlstoE+yfZjCRf1M=;
        b=QtyZJqPANE6eTHfjfa0yB4d/60dmBPohVlBsCzW5iYyAIfsdvB4uo2QcnItS86Bvdt
         2N4+SxKV53Xs70KOvW2Uts3SbesM1QrUxjj5x64/N+jzJdUsRKWnNT6+dCG7nv7T5Tdo
         uiWZ1eUjAFISvDy0ysmycov8IvAd00RRncRPpSxfo3uUIYzAbjJ3n8A1hoi32hYaFe0e
         Hw5p3pv8IGkeh0Ghf3+A0ZFJ9ZhxL+FgWz0w2fCNuMc+plCaH7zJZHGSm4cl9Y1HBHFg
         o02onbmKxln2GFO44I4vmpT/bt1pOnChKPqUM9dA+QQSJskPgLPRwncd6IyrVejo2L/U
         ZmWA==
X-Forwarded-Encrypted: i=1; AHgh+Rqeifo1a9eLuNiKdyLzvKsue3t67hP41FW0gAl4mJWTN3ZkXLepG6LvR9wO6YAB+GU/K2nXEV7y@lists.linux.dev
X-Gm-Message-State: AOJu0Yyd7HVaq4RlPFIA/5hbifoVBLOvq5MmhfCrVa9q9ndFOiEllBNS
	peYDUQmnWDr2b4tD5Pc1y9y03c6oCyixAYgRlnxna7WkXuEbIe5cr9uO76aGhJYn
X-Gm-Gg: AR+sD10o7XTVhEi4nWao2HU1tT4eyhhxE9DtAj68kAs1mi4I1v72xvjZHcLANwHZCsk
	+KnSRUGUazEkvjEqNBdipwxqpiaz8PXjUWe/Ynk/Vg3PWbX/52tPdI00NXiccre2ovENLdgD5uF
	hqx5ghFjAQsyMflRGlBgK+2M9Af38pV9Vd25fdrME0N6XgqbZaUhVn1KLdVYmysVPgz87KSFHR1
	F8BbfKjXOTfb292A5EeqAToqcps4hUMdGfEVKSIKwD0U+YqZSpVsWDBCjUaRQJd+nXhhdmgY9u4
	mIGV70o/aKplujZBmIDIZGxZaWYU2uqcqMWqzKg4EhyRlClvsY11Pa585pO24ElFRIIxxsz0E3j
	70sW1qh+o0Y/Dy1l/ylyG+7fpU3DN2ayOntgghmmuHgwLNpfxBdbY9k2jap+n/Lht7cytX6aN16
	2KL2Qewe6ODlMNaxDLUXeio9nVkpHvRnEirQpurAxZYWomy7VmfFoeOU0918Qi4CVF7W/IcSmyx
	TMIUzLv6dkkJPSWDQm7O628DQ==
X-Received: by 2002:a05:6102:3753:b0:62f:3e1d:a55a with SMTP id ada2fe7eead31-76b54d79b2cmr405390137.2.1786432356019;
        Tue, 11 Aug 2026 00:12:36 -0700 (PDT)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-76b5ff2ae07sm244159137.0.2026.08.11.00.12.35
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2026 00:12:35 -0700 (PDT)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-97727c2064fso1763646241.0
        for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 00:12:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rp8k+Epc2rK/wzB49NFiTZ21LJl7WvghEb4qmpMKJQIqYOqduVcK5ATX28O/zes/ieYBJ3ToW4S@lists.linux.dev
X-Received: by 2002:a05:6102:6c3:b0:752:757a:96f0 with SMTP id
 ada2fe7eead31-76b54d79e86mr439981137.3.1786432355383; Tue, 11 Aug 2026
 00:12:35 -0700 (PDT)
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
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
In-Reply-To: <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 11 Aug 2026 09:12:24 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVBABOiOWDdCKE0zDffj856ui5qr3UFVptwcAn1_Hx7oQ@mail.gmail.com>
X-Gm-Features: AUfX_mx6MoCBnqeKS3-ld4h4sA8kR4r0l8RhSVV2DF2TNFWfBiMEUpI4m8uk0dY
Message-ID: <CAMuHMdVBABOiOWDdCKE0zDffj856ui5qr3UFVptwcAn1_Hx7oQ@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Dave Airlie <airlied@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi Dave,

On Tue, 11 Aug 2026 at 05:30, Dave Airlie <airlied@gmail.com> wrote:
> > It's not even all of DRM, it's specifically the AMD and Intel driver
> > stacks which as far as I can tell just routinely cherry pick all their
> > fixes between their development and fixes branches without even
> > considering the possibility of either merging up the fixes branch or
> > just waiting and letting the fixes propagate back.  None of the rest of
> > the DRM trees ever seems to cause these issues.
>
> AMD and Intel are just the two largest teams with the longest
> pipelines of internal engineers and teams. There are between 50 and
> 100 people in those groups, across multiple disjoint teams feeding
> into a single driver. It just doesn't scale for all 50-100 people to
> understand the cycle of the upstream Linus tree at all times for all
> patches.

Doesn't this cause internal (to AMD and Intel) issues, too?
How come we cannot educate contributors at these two large companies,
while we expect other contributors to be aware?
I would hope the people who do the actual commits do know?

> Which means for CI reasons and pipeline reasons, things go into -next
> is the default, our -next trees are always open, and get disconnected
> from upstream next from rc6->rc1 so not to mess things up.

Just merging fixes into next[*], and resolving the conflicts, before
publishing the latter would help a lot.  That would mean the conflicts
would no longer impact every user of your next branch.
[*] This doesn't need to be the real next you will send to Linus
    later. Many maintainers use a conglomerate "for-next" branch that
    is never sent upstream as-is, but its sub-branches are.

FTR, when I create the bi-weekly renesas-drivers releases, drm merge
conflicts are usually the largest conflicts.  Looking at the resolutions
in drm-tip (and linux-next, but broonie is in a less convenient time
zone than sfr was ;-) does help.
Once in a while I think "#@ it, I'll ignore the conflicts and just leave
the conflict markers, my consumers don't use these drivers anyway",
but then the kernel test robot would start complaining to me...

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
