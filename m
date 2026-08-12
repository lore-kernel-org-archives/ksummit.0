Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01C72E7F20
	for <ksummit@lists.linux.dev>; Wed, 12 Aug 2026 06:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.215.174
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786515621; cv=pass; b=YqU4mj2Irn9sG19u6Ivo1d/HZI6Tasza/SvT3/zZdE5Hf/j3cl9trduQiFaFp4ciqKK+fZRyoe9kQtCU1ijqK8fFJCb8Ab+QkPS89R/cWrVcu7cb55AL39S9zLnu/TRT+CnHW4LAk8J0uq4VdGyiDN2mxmbMgzHonl+jYQxJ+Z4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786515621; c=relaxed/simple;
	bh=CPYhtzvgS/r1NQQPQBUxTYGLEKEW6rariyZosde3FiU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZmmepE7Ol6Pna0/todSuoZ+DMdvOLKZxNQQX2eM4lAFmhWiNLZPSj/8DS7jdeuInQI+QjxjUx4zNn2uGRtqxu8m7vhdiUldXNlyInaL1F3uKt3Ql78gY+INH54q8+tO5jbLdnSdosFz6sjVP26zqYRWbupP+aH6I6ZNwnopUPzs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IVhl/DNq; arc=pass smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IVhl/DNq"
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-c998fd549a8so419368a12.2
        for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 23:20:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786515619; cv=none;
        d=google.com; s=arc-20260327;
        b=TDyinPgUwOYOBnAMGABZv95jD6s6CrOzFxRiiRm1itobB10zN97t9JN10ua8IxnQpC
         Z8gIOe/bXU4xF+1gs2HMmLTSgNP5wtnSm7UwyRzh0Q2RluKxyqj+9PewN6IOV+ehjDi6
         r3aJe1gxq3hQ0YyqhtOtHb+HnE5dqrrwgm0lGXu72vrcvyTueuOFqYznc7yT3n+V0nBh
         ZXRpXm6zN3cBZEJlYLOP2TUUo2FYOO9FTzFNqLYXlUC0IP7CXW+XxcnDx4cKjjd+Str9
         /N0tjiU5YTH1Ks+YZW02JHVlzhXu+/FX0c2qrbpG2Qc5cuRHb7Sp2EKtDBvWvLXtB8B4
         KbhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M62N89oP2RkO69HO6tfad0qGtfUVYrxQmJeLWBAGyeo=;
        fh=uB9t7WCC0CE4dma6NnLUe/3H0pi8ZXHSHgeCTHI6dM4=;
        b=G2I+IPkp1W9GJHjH1bQcyviPcndbdKQx/HAoqmbRmbR1nbhWP8a8LwrdU/TbkJvV5E
         tu6Q+qa2Rml2/Z2Bp2GwD1XpWBoVoLd6eeiO7HXVjP37NcJ6e7ub7SF3RqWXSWzZBxLr
         ir6pgzLFcj6KRbPQinzg+0koBPmPeci7DTsL6aS/HEA/vVFQzQJz/snuXX6lro8DPsQ2
         5xm0PFNr7jrkOZFBTKrF+U/vLJv/4tq42dCQ+lvDKIYZDIv9DtkXJDAITt9n+ZmXmoqm
         mRwWAtFhn8rrA/AOvXm3JeRpHL/+BxIY6St5rir4Zvh79W228q47k5dSgadnHt8UlU5c
         dMWg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786515619; x=1787120419; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=M62N89oP2RkO69HO6tfad0qGtfUVYrxQmJeLWBAGyeo=;
        b=IVhl/DNqB2x/AEnMmQ6/RX0zwqaLFAZTZkK4od/Qoql3zpY/jHUcmwBz0YdTIHbOLC
         6Lg5D7k18go6e/N7IXCYghIhu4HAPGnZkbdP0ma5CKS17K53J4P0zm/xKpiTmp2mYZAg
         SYMSx9evNGMrGp1YeRPvXlbL8tCB0MmYWsRiailuyXvSdptwwzSnzJxyxVLnnOUPjwQ0
         adqbu2K1fEngI9OiXxJOlirXckdL/lAAGJjdplrMELhK9bjHYZ/QLnZtwEU3LuIqAdIE
         2P8sWsa17SvbmUV6PYfftX4DHElSkBprYg/gggqS/Iy+TCZJrGo4PJaighRSg9GvQZiX
         qNww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786515619; x=1787120419;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=M62N89oP2RkO69HO6tfad0qGtfUVYrxQmJeLWBAGyeo=;
        b=rPIH9MT14V0PGcVcNrNAHLmm6qKZundIfWRjtzfk2Lw+33ju44ZIwOnFrQtDrLH++S
         75MH5aD2CORakt7advU0X2ifhgwEblSmY9Fin0KkNAUB2pPipiDzSQ9M2Do0lJC0t3hv
         +MtFoj+Lt5EEmMD8iJWViZvGoIXvWKcp54Z5jsOXIteKKNNwsOJl7dCSsSy5Xf/3imQS
         WEcJUPUSzCKEEYKiSNonSFUZPGpjPB3d9s9pkbPb6Ub8fcbiSesqItsGVuXp58XgKIIo
         2MnvJo+CJBb8+Nj08C/50Q3OmGp9frrxxgMYK23JvkT5nkiS7FXo2rN+oWCGZRmMxbkp
         4yRA==
X-Forwarded-Encrypted: i=1; AHgh+RrWhIsStFBJIyKfP15tB2BAiTi5/QVOLPgEpsMoEzuHpBhUN+F2AnUQlQIny+fuaeHNCUKSM701@lists.linux.dev
X-Gm-Message-State: AOJu0YwomkZy464EK4a1TrBNWAURShwwzidhdbUL9JfagNQJtio0/8mu
	5UZLNbm67/iUlU6G/p3318h0bPZ1poEUiDbg9FtfixH2E0jbNgrfyTgRuEtuJcaBXCWwCRx7xuY
	j1zeY2HKIn4A4GqQkA8raUi05Io6UjUk=
X-Gm-Gg: AR+sD10hJqa8e/g8fGD78bTmbm1ygnsofWbaBv3lELuqDZuEREg1eYvFYGQrzh3sr7y
	8zn8afdlnikLoy0l++mu9v++39SzkTgwTAsmA3nA3TLSgoTMTDDkTqQQujmBOkXZq0VtAkbGtS0
	AaTUBHenOs5Sm5Y8qAIODSyUP/5tcfC2+NVnlzI90efJT+LYyx+vCcfMNF/iDVDZx+WFN5tT5v1
	QVfp6gpk+bif2C1ELEL9ZeRCGtQ/7G7TjvwE4w3CqPCkZt4PCAkOUIIPvPDpnyx1Jxu4eUN9nxZ
	BpWR4oVNNYGqh7X1AVa6tYDlZ33kDe98jGGoKm0XIy2Up3BCyjDr9ZFKCj3jMRHPKiroMtRPlR+
	OJcwwMBqgVcI+RKsNv5PlfoxHEP4KJQ==
X-Received: by 2002:a05:6a20:158e:b0:3bf:49c8:f7b with SMTP id
 adf61e73a8af0-3cc3f5eb9acmr2526385637.13.1786515619119; Tue, 11 Aug 2026
 23:20:19 -0700 (PDT)
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
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com> <0c95dc03-5b33-49aa-8368-bac482b8b40e@kernel.org>
In-Reply-To: <0c95dc03-5b33-49aa-8368-bac482b8b40e@kernel.org>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 12 Aug 2026 16:20:04 +1000
X-Gm-Features: AUfX_mzFzSStBFEZZkH1OPbe2MUOrB7IzkjHUCf4XYOTvIGr-k12l2WHpzd-bKg
Message-ID: <CAPM=9twMwxo-yO1Ke45D0Sxmji8Mt23BqxUMv-_GY1gzssVCiA@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Wed, 12 Aug 2026 at 16:01, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 11/08/2026 05:29, Dave Airlie wrote:
> >>>> If your assumption is correct, this is internal cat herding ... MM has
> >>>> much the same problem except that it has to deal with somewhat
> >>>> opinionated architecture maintainers (around 22 of them) to agree on
> >>>> the internal abstractions for MM primitives.  Perhaps rather than
> >>>> getting into my problem is bigger than yours type arguments, we could
> >>>> observe that MM might run a bit more smoothly because it gets an
> >>>> additional 3 day conference (LSF/MM) plus a MC at Plumbers to sort
> >>>> itself out?
> >>
> >>> I guess the question is, what exactly is being big for DRM that it needs to do
> >>> cherry-picking for their linux-next branch whereas Networking and ARM do
> >>> not? Is DRM bigger than either of those? From what I understand VFS doesn't
> >>> have to do that either. And VFS has a large range of file systems to deal
> >>> with. But it also has one of the best abstraction layers of the kernel.
> >>
> >> It's not even all of DRM, it's specifically the AMD and Intel driver
> >> stacks which as far as I can tell just routinely cherry pick all their
> >> fixes between their development and fixes branches without even
> >> considering the possibility of either merging up the fixes branch or
> >> just waiting and letting the fixes propagate back.  None of the rest of
> >> the DRM trees ever seems to cause these issues.
> >
> > AMD and Intel are just the two largest teams with the longest
> > pipelines of internal engineers and teams. There are between 50 and
> > 100 people in those groups, across multiple disjoint teams feeding
> > into a single driver. It just doesn't scale for all 50-100 people to
> > understand the cycle of the upstream Linus tree at all times for all
> > patches.
>
> Qualcomm has also between 50-100 people in different teams upstreaming
> to similar subsystems (like SoC) and they try to understand the cycle.
>
> It's just AMD and Intel do not care to understand, because it is easier
> for them and no one nags them...

Get back to me when their devices are in a place to be running
upstream kernels as much as AMD or Intel at the same scale.

We've tried to keep the upstream schedule for ages, as Rodrigo points
out it falls down, stuff goes missing in the shutdown periods, telling
teams to stop working for 2-3 weeks isn't an option in most companies.
Intel and AMD are trying to upstream GPUs that aren't even on the
market yet, velocity mattters a lot more because thier customers are
usually on the end of the pipeline via Linus' tree,

Qualcomm is not in the same position, a lot of their pipeline delivery
is via Android or ChromeOS and they have nowhere near the amount of
regression finding problems that upstream GPUs have.

small potatoes...

Dave.
