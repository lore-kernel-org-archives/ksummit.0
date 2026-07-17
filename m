Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D46E3B71DC
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 06:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.222.170
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784270616; cv=pass; b=u09xe1bSycCUynQ3TIHnkjBoJkSyoy96LXBvdnHSsOYvwz+yneOL66nIkkHAKrjgJgBXzICoe65mwMzYGuQAy+EizIxTn5Swu6/VnvlyO7koRzhW4enavEdwt+8/aCTEO/90HtzK6JWjKz4bU95Ftmm9zrNlTjv5QbYOAYGhbN4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784270616; c=relaxed/simple;
	bh=/CNMmliuEqRh8lD2MifBcJxBcWNmcPqksI8qUX2WXBw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C+5ALjJwBpIrgg95SbjRlUaJvfjNqtfFpUuvWg0S8q+cC/Y/PVgZctiWPFQ20beiUsuaQC02nMSNgjGUHNQmveoXGdQMHMh7F4VTnp88HHSZSTiPRL+I+MYd+0wWLuZ4MbBFya1DHeNzquaGVm3LpIGXQEpvKlaT09PYe4vzNgM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s2TejNnK; arc=pass smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s2TejNnK"
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-92e5d6f35c1so606502185a.0
        for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 23:43:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784270598; cv=none;
        d=google.com; s=arc-20260327;
        b=qQRwlo43z1YZRDoLLovxc/IqmtL2LYYRPEvj9vAaBlwvXfLv9LcniesuHU9ylvLq9Y
         9/2UAJhxEvw8eNCg/fP/EQQ7dr05TOpyQ2XI0Do5UzqVshRI175b6kcCzUIFlTnipCdE
         72Oq1e/3Kkw7h0HyMTpkbdzUhkW/i+q+Is+PGR1QY3i2SuDPDT7p2DSPkT0xO9t16umx
         YjG3d9jh6VdB/GzZmAu9Ya/nphbBc0OS9D/s7xWocwC5eJEKcBVRCgC/q6hDnZIRqLUF
         /ppXXtXKOFI/UTtNG9QieKtg6AUrBe9tp8g7U9kuU4JOakqM7XUYBBhokiJZcigj/xvv
         pWHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/CNMmliuEqRh8lD2MifBcJxBcWNmcPqksI8qUX2WXBw=;
        fh=g241Il9/K4JvsVKqHYqVBV/vswyQpbJ+6ftM2fpsbPs=;
        b=EfzfNZaKor39yLoG5dDGmq/WgyPqLhNoFGUoaxPVJUoX4J1+UCIJ59CNbjwi13K7v/
         jbgfP0Rf3Urfc6UZuVktVfYrkZTsoewWCATCgac545XhjqAf6tAwIFzXzCX+R+S6+KJ8
         E6q+aksrzt6PoTEqismIMQtXusfHzMrb2z1MzTwk3FYUN09AiOa8rfQCOWMvsLShnw4O
         JmgSK4t2/QnOAxcfED2jHD2TcOgJFZGBsyeqHI3iJ8ibrNv66W3u9J3TX8TjtA2I5Dgh
         4RSCswE/Q9JhAQetrzohFg5t92FSzOmerA0CJVfVRnk21Bu/+Zyu4gB/+hlmqD2YAS1s
         Q5iA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784270598; x=1784875398; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=/CNMmliuEqRh8lD2MifBcJxBcWNmcPqksI8qUX2WXBw=;
        b=s2TejNnKlmnvAsZqE58LyRM2NJ9+lOCzqZB/uoEEh/saY+fIuH8u5EXKqY73pWd5DH
         xHu7ZZ7/4gsb072wZWpoLMmta7MBLk4oiiCl1fCEy7zkAd2phWDG0VLV5bQ/vwFt/3fM
         WxdpbfJgXUno5z6QgJD3DoWTb38YzD/qmXcbdNWqr4VuADZQ6Azo6P1Vce3aSy3BkTL1
         zXKIn9MynFvA4JCwGgFyFQTZGYl93iPDysh2hNGRJ+nSvIJ/iJow+m7+0e5E/ZZign6J
         aTGjUgs+hnQvEvwHB8TqT2uoSp4vAGgLn882pqtB+6CowDcCxOyqLXGEwHN606NbVSmx
         6Fyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784270598; x=1784875398;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/CNMmliuEqRh8lD2MifBcJxBcWNmcPqksI8qUX2WXBw=;
        b=AfguxsOaCQfQ8MuBJpCkdxKOlMCtP11dp3SqqIpu6yBTxc2YEi0ucjaTECK7HLyKAn
         YPz4dZW2LF4j4O5UH4idOFDRx7yoKB9mVxRypjhQl7oHbVR8ltilSLpWtnbHzpph3gdp
         UpKj1q8by11ldKfHLRDknfWyVuhLK7y8HLCb2ljCl0GXvXw1LMUeUjPQTo5d+fz0BBOd
         vcuvxu0/z2Jvwzvs0qTSuQ7wquXjtsmxcxDFDOkGioAej6d7L4JKc7XIVMCm6qbpVM/W
         vRxUFYmxTXg+q6A2fCmvgZuryuPMEOKTCyUTaX7v3Wp/gvpfh7wdfWkgf9ESkCvcRrcl
         VEVw==
X-Forwarded-Encrypted: i=1; AHgh+RofgKI4ZY9NiIO8hjPn30VIPPWrRbHaMQ1OJr45CpvZOa54PDm4FS+k/n3fJ4h73+bvfs/0ztL3@lists.linux.dev
X-Gm-Message-State: AOJu0YxVRuuK0WUVlBs3ENq/Q/a4BNDp5//XzdRKRBMs3BnUPQbmHDeK
	kwVQTd7k5ATNvKWiE/RpplbnF+smIA3oP53NdL+mkm0zSs6sN3l6UXbyfAnkXkbnhR4bN0dQWuV
	L31S5r5mTpvFpvwyrMsZHOJeALHG3UyiYu+IpKDZIqTuqFyjYuQdKo6Mc
X-Gm-Gg: AfdE7ckCE5GuMZp6IqWNgLaM3WhYhyxaHVpVivL+BuzYo6R9guxzosx5AC5t5bNXpY1
	ViTK54xyRSnml3rqee2SoJ6ZvOZ9NVBe3bog8feWiJ6anLQv8CHjS+NK6i6jfRk7WAKRpYREYih
	jwmjXWTlIaHbcONG7lYo/cQ7mALAc8BRADsniKR5zgLHhim/COHNlC+st5fWdDpd/vqGZ8cG3Uz
	jDNXZ4USjYnjOFh2aFpexGAIEzLa18/U4rfy1NITrl0dlUKq7ZUTSfa/YmxYxnQyB8OzWq0+ZTe
	WMlM7k1j/clzuNt/u+oD2JEgu9XzzU/QusD1CFnmcSaIWHra1tIUVCQm87ZqCjfMIrnd6yJahQx
	Y6oWTIRbar42lzZXGc4y6sR4p
X-Received: by 2002:a05:620a:1a1b:b0:915:9fba:878b with SMTP id
 af79cd13be357-930b3eea488mr150563985a.9.1784270598036; Thu, 16 Jul 2026
 23:43:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <7ia4qzl45h20.fsf@castle.c.googlers.com> <CANiq72nKeDuMqWWy3ipdhOgCwUVyN5xt_MDXnu9AVbixH50PrQ@mail.gmail.com>
 <7ia4ik6gx7c0.fsf@castle.c.googlers.com>
In-Reply-To: <7ia4ik6gx7c0.fsf@castle.c.googlers.com>
From: Ben Copeland <ben.copeland@linaro.org>
Date: Fri, 17 Jul 2026 07:43:06 +0100
X-Gm-Features: AUfX_mzmldTnXhizLWLTmHbcUsuqPrSZI13BMiMkAsIVqI5clFjmTYic4uEK6kA
Message-ID: <CAL0q8a5vO3NsOLrJ0u3nDyY5tnTYQ4V1RXuQ2oq-bMS1pDs58g@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
To: Roman Gushchin <roman.gushchin@linux.dev>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 15 Jul 2026 at 22:37, Roman Gushchin <roman.gushchin@linux.dev> wro=
te:
>
> Miguel Ojeda <miguel.ojeda.sandonis@gmail.com> writes:
>
> > On Wed, Jul 15, 2026 at 6:55=E2=80=AFPM Roman Gushchin <roman.gushchin@=
linux.dev> wrote:
> >>
> >> * Review of LTS patches and kernel releases.
> >
> > For the backporting case, I think this could help, and there are
> > certain things we could ask for, i.e. custom prompts.
>
> +1
>
> > It may also have less noise, in the sense that the AI has the original
> > commit in mainline as a baseline, i.e. it is not a completely new
> > patch of unknown quality.
> >
> > I imagine Sasha et al. have experience with this.
> >
> >> * How to maintain the long-term stability of Sashiko?
> >
> > How hard do you think it would be to get at least one more AI company
> > to donate some tokens (for their own model)? Could that be a simple
> > start to begin reducing the single-provider issue?
>
> It's hard to say. Technically it's fairly trivial to make Sashiko using
> multiple models for discovery stages 1-7 in parallel, which will almost
> certainly improve the review quality. In such case models will
> effectively cooperate to produce better reviews, which is our goal.
>
> >> * Handling of pre-existing bugs.
> >
> > Do you mean the AI would be able to query that database? Or directly
> > being part of the prompt for that subsystem/file if it is not too big?
>
> Yes, Sashiko can query the database before reporting pre-existing
> issues, e.g. if there is an obvious but not urgent pre-existing bug
> there is no point to report it again and again.

It might be worth noting that in KernelCI we have [1]; we could
include Sashiko to publish issues into this database for public
visibility. Feel free to get in touch, Roman, and we can work together
to make this happen. Currently, these issues come from our build/test
system, but Red Hat submits issues from their CKI system, so we can do
something similar with Sashiko.

Whilst I am at it, we recently added an MCP to [2] This is still
experimental, but allows users to spin up an MCP server locally (we
have plans to get a hosted MCP server up soon) and interact with the
KernelCI API (issues, failures, etc). I'd love any feedback. This is
useful for interacting with all the data inside KernelCI and allows
for you to link it up to your <agent of choice> to drill down builds
failures/flaky tests etc.

I will also be writing a blog post about it soon.

Ben

1: https://dashboard.kernelci.org/issues
2: https://github.com/kernelci/kci-dev/blob/main/docs/mcp.md.

>
> Thanks!
>
