Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9A14A1399
	for <ksummit@lists.linux.dev>; Wed, 15 Jul 2026 17:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784137908; cv=pass; b=jkP7wYVNgn/RyC/eblMpI1GA8qBHob/qnf6QWl8BdBgfZ0eRlGIC4Jlt3GrjxB2fdWeDz2FPkiHqXWRiyRuzWp1toV/QV1jiCIt/RBoUd5p2wYfeiDwp9rS4JaRExm7tmIhqEC0mwgcx0g4MUZrfKapd1mYVzkVBW7GUCV3ETlU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784137908; c=relaxed/simple;
	bh=ah1OPZraLxOlE7DDq59+pccgCHZ950h89+u0eQ6ApCg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kcpwT5W/LuqZHHajKWwQJJCw0mNIrJ8zXphOefkZsRuZ9+s40+Ag65O2NxMl1CG5LGoP8rck4WANoPq7166hzrxEhguPEWcQ/81dG4pd5sHNanyiPbPmRsF27ssSerb5HCBnSSW5NR6eQkF+UElhYSwuNZ4Y+e+a+oRPPFyTN/E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y4pChXox; arc=pass smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y4pChXox"
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-38115bbb83dso483588a91.3
        for <ksummit@lists.linux.dev>; Wed, 15 Jul 2026 10:51:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784137906; cv=none;
        d=google.com; s=arc-20260327;
        b=R3A1k8L48xsg7P8arlaNwYqROYFKB1KBlNuapGtcWYPp8kxrrNGkF5QkwO8Rid+PgS
         L0coPT9KHcxfeNhlVSwWhZHrWNXGes+HKFGrw7iob4J7EDVrHOi3OR6v2v1bq51FtxxH
         qYqls+n3cJ7/eFFDBYIZ1oIaAVcfz/m9vCNbruSje6u+knDxzoaYJWQR/7YIeKXe8yHk
         IVTmgtAgpwzH5tAfJCx05S7AX48dKyOvtkpWq8tHpJnu8iKvz2wH4rjRDJybLVQ/oAnk
         OZ/BvaMI9skEhBlmMsNKoaT9d9QbdAhr6OgsU5o8m4yEx2PqZ5eQrDXNo5xfUeXKkDaX
         dgGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ah1OPZraLxOlE7DDq59+pccgCHZ950h89+u0eQ6ApCg=;
        fh=9saO7oJhDwCpJTEoPnMczMuwxSuytCpT23pUR/DQt6g=;
        b=ApDu2vKPaqt2WUAReCShABOUG8qtdPKPGpPJN2wdzzDobKLe43mbOaMMZH8lM5jQFz
         4MyFAX5XvQ2OZ8dIEJh4ii/uYRKyIIfxsX8Km5hcP34ncf7lwOhub3yueMFjYJnaD+/L
         iJFDSAtpPs2tUHRpxEQqVfim17ctSOfKywgyG1u4E5X42DW7bkj7d0Ob7TR3YmDbI5U4
         GVFd1janv3Z5K2kKV+D4LH6F8gqJ/L1cSvGo9qfNa3V2mIHa6jCwAmg5/+U8YWTYdJvx
         6x9qzzvN+fqP4CaWdaGXRvM9q2dzgLlnqw36pXGmkrOStuMQPdyNgNaA4MS/1/VkAdR8
         dodQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784137906; x=1784742706; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ah1OPZraLxOlE7DDq59+pccgCHZ950h89+u0eQ6ApCg=;
        b=Y4pChXoxE9YZyHDBaSozFPsynVKKJ7IKHxB3GVKR94ELRW+9BOJABzlKJq1E2Q0BwC
         xpVKtMvItKyQqzOHAxHnc3Q8EflQERJTKQS9keo/TPwm2GxO6qqoQqGCVJ472WEAYkBu
         3etzun7StAKrCyC2tqKaMFiprFQm0C6adLDnRupnAPbS0yHmFf5s+1HbpMNMyle9Nl3d
         gWRMrIgYrJfhm3eu0xsOf8t10P853CJttHo24oIDITUBQbQlP0PTerPNFWpyWbW9zx2I
         +KW3mhcT71r1FSl5y/Z79hkAqRKwK4/Ffxe6AfcoSmuiOgm8s8lEepFn/E95BNgYslQd
         I0SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784137906; x=1784742706;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ah1OPZraLxOlE7DDq59+pccgCHZ950h89+u0eQ6ApCg=;
        b=c/BJUIBDWMpnFa5/Auc1vV92XjixLZT6T7pWRMI2Y0+Vv8KiUMuYyx8kh69nG/yAor
         uMGwvrIfNq5qE+PGffb0fGCDqhKrE1EFS5N5z9OGz8QASXe8pUaOOnqDwldOCoKQxSfo
         +F+47MSyY2rNMFUgX0wyQjbBLG4DQPQCZNgAJC1lZwKK8N3AQ2Qo1c0eFRyUnPlsaO8H
         quI833dmWApFGdrQIdg+MZx3YuR4bXMtkT0OqeWrYs03hB1urPud+xWCCUoc3KfXDqqs
         tsdgFTQiTnrpswr2kcxrnRE6cQnuA2oo/qgXOPT0qM2LJgNeLIyjkbG/NiTEkwvNv7pr
         JHNQ==
X-Gm-Message-State: AOJu0YwoUvbVXdml1Nczr2du7DRqtZbheUUTOyRan0taqqfr5iWKX6Wm
	Fy9/uI77yRFmQDwXY6o/f3k807IqL0cst4eokX+Vhx4p/Ni+Djd4ug+BY8sVb4xNy+msC5t3xvM
	vjQ46fnveCZhd4wc1tB3HKDmJ6Qbydn0=
X-Gm-Gg: AfdE7cmtSDg3QTzfji7MwbGFtTgQCVOFyYBgbXeznTy7yfNp81GGoT2OWyoCs5XfZ3D
	5oA5jVgvAYzZP/W7ku0XfwGwlWQfeibE5bm98eXS1cvMWSzkr4lpinX2ZNBz+DT017Qz9E4jqUS
	GjjATvZpU0B9hCQ1IxtljWdjvrxzt977j1zZA6dixZuO9zzOjM3VuAFooTOJ4FJVswwiELKwKHD
	vzfsbveKgBmse/cEUY2xJ6A9yEhJvRla4zn4bSZKUyupalzs5ARE0EgGyrDPDlfph5qhus3SU5h
	esYHlzYNMROHIzxq5nkVrwdz4qJz98431+SPIY5WmH50X4K9bxjJv9phdGD9RQkjr2GgTkhmU86
	IwOOqX/IJBL9s
X-Received: by 2002:a17:90b:5870:b0:381:1ffc:7d35 with SMTP id
 98e67ed59e1d1-38dc780f2damr13405217a91.6.1784137906492; Wed, 15 Jul 2026
 10:51:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
In-Reply-To: <7ia4qzl45h20.fsf@castle.c.googlers.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 15 Jul 2026 19:51:33 +0200
X-Gm-Features: AUfX_myloSwuHEJAAq9lu6OYztq6q1C0VcIIR0Vhl5Yo6kJLwk5hklTh0Jligvk
Message-ID: <CANiq72nKeDuMqWWy3ipdhOgCwUVyN5xt_MDXnu9AVbixH50PrQ@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
To: Roman Gushchin <roman.gushchin@linux.dev>
Cc: ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 15, 2026 at 6:55=E2=80=AFPM Roman Gushchin <roman.gushchin@linu=
x.dev> wrote:
>
> * Review of LTS patches and kernel releases.

For the backporting case, I think this could help, and there are
certain things we could ask for, i.e. custom prompts.

It may also have less noise, in the sense that the AI has the original
commit in mainline as a baseline, i.e. it is not a completely new
patch of unknown quality.

I imagine Sasha et al. have experience with this.

> * How to maintain the long-term stability of Sashiko?

How hard do you think it would be to get at least one more AI company
to donate some tokens (for their own model)? Could that be a simple
start to begin reducing the single-provider issue?

> * Handling of pre-existing bugs.

Do you mean the AI would be able to query that database? Or directly
being part of the prompt for that subsystem/file if it is not too big?

Ideally some of those cases would just be a comment in the source code
(like we already do) -- local and in-band, and it may help other
readers too.

> * Prompt development and testing.

Yeah, it is pretty much a black box at the moment, especially since a
maintainer doesn't control the runs, i.e. even worse than a local LLM
that one can do several quick tries etc.

Regarding putting the prompts into the tree, that sounds similar to
the in-tree CI files. That could help, but I wonder if it should be as
general, shared guidelines for a subsystem (i.e. useful for humans
too) or truly LLM-only notes (i.e. to overcome certain weaknesses of
the AI etc.).

> * Interactive mode.

Could this access be restricted to, say, people with Gitolite access
or similar, and rate limited somehow?

I am pretty sure you already thought of this, but I wonder how feasible it =
is.

Thanks!

Cheers,
Miguel
