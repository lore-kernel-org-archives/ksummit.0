Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A20C481AB3
	for <ksummit@lists.linux.dev>; Wed, 14 Oct 2026 21:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792014009; cv=pass; b=GfQOdCGhWyYqzaEPUepPRJrWxg4y8cbcJc4+8ad//6iFnlJtu9+u/wz1mKMn7aRd1qm8Ez/XxQzukIBDeTwXNq51Cn6SZ5byxy5Ob+h3zyhyPdoAMToeX1F5rML95R9ypR24kqucYTC9AsC+P1u6fZKjULe1tbzPjmfPseSgdBE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792014009; c=relaxed/simple;
	bh=6ByUElvTvbGXIl2svxkrXNY8+hn0etgON6GqQ6cyQTU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aYlKE4is45lZd9g4f06RHnsXqm7nrgRoXOOAKH8qJXhEUNH0qMaRBAUbO+U2LLYgb4lhjt87R6gXk4jS2O+HcFDnz5kz/DoCHzp8r8sP7+LTKb2vyfRJqDINRHrpATRRcfC25rPXrvU2tRCEozjFhKGE6tGyPt11AWu6S2xn2XQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ga+8fUtk; arc=pass smtp.client-ip=74.125.82.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ga+8fUtk"
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-35179d0747fso369520eec.1
        for <ksummit@lists.linux.dev>; Wed, 14 Oct 2026 14:40:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792014007; cv=none;
        d=google.com; s=arc-20260327;
        b=Rr8ytOCWqq1N3FHmg9wgMndjiO3ACUpmzk9PrYoFyu/2xKcu/E2N6Lco8K53XydCPf
         kG+OHRBydyGNS8S/pomx87zQYPHZ25kHW22CM0D7ie/T9g9ATyQlBMt8HP1VEYKT81hj
         YuAhHsNzu7Kpvz+mJi1RHq8pu1/aGAJz4+n2lkRa4OTnqyHG1TV7XXrnPdgGwoqCDJuh
         uNG40laNfCZGqLCo9RvlipUYSVhAj4H0m4UuJlNi7phEwrvTEWn9En72j76eoEefTqYm
         CQzCB9FYuUhxuRT+1M99nJKHorPMliwf7bTPtKi/X2Pcf4rEE+3Qm6+P+Q/1ab1XVpiD
         FO3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=WHnikzVtWxtSM4n4XlSloqPUAIby1TRVs6neMZoe1Qc=;
        fh=M/x0S0LP724GapTKhxi8BGPiqCCx5D/O2EECUR0maw0=;
        b=hf2C63+iJxsLld46SQR1mM1XQfjs4xl5RsMtLLp8Y+XXk2Gx54QEzEXcHgAXd16CTn
         v0OdoxMZLUCw0pA2G9I2fYgOrA05LSCBuQiEhqS/IRuDzo0mM6wBW5XGos5xXGHkDagO
         KnGrHn6bFP6JegotDdBzVL3bk0kihWyYzUkj8RnDOZQmsRwGGfR5x0ExMJFAqDP9Xf1L
         GLG9o2oWD5n3e7UpGOfyzITHyG7YUhQfwuSGa2eKo1dHlvYubbyQb6NXpJyV8qQHFNks
         GRook+7IsSz2flCF5ntOCKPzZ6RcGCEbi81iqbn7lmB6y0wzbqh6YvX3LLeqfxvmJc4E
         xM/g==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792014007; x=1792618807; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=WHnikzVtWxtSM4n4XlSloqPUAIby1TRVs6neMZoe1Qc=;
        b=ga+8fUtkeWIe3KXZLO/ShKUaD5A/SgHHNfhakNsZBmL8WUTWa6cLBk4hKEq6Aao+OL
         2Yj/2+uyZSLFbTxKNM2wd5qxSVh7VufM82uHtm+dzTn4hAILQeP1A8MfcuGkUkSc6SSH
         3CC/QCEKWAV0hZUNfIQX65NJ+Zzd34A4VSChfVsp/CTe1dfE3CgDlETzOIM7SDRo1KB6
         MdbODHgG3XBx8Nv/YBXFd7Hdl4WHc6CHdW8Lodp00Radf1UvZdnIpk5QlDfZVuuyvD1M
         0ThS/Zdf4k2vkY90LEC1KFl10ugr3JX5gd1PtuhkZ7Gao0psyiwp33xivOJHou9MTt3d
         fI1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792014007; x=1792618807;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WHnikzVtWxtSM4n4XlSloqPUAIby1TRVs6neMZoe1Qc=;
        b=0auYY5rIWb0gxYPhgWrlGzib+QEtdGgsu1LH9VBOr/aTEh1413Gy9/erlL8P1GVGPQ
         gMCEbieRBUQd7f9xqbYx3Do8yCv0rMoKDsLYVEum7RRKwlD92impmcJBCOvWgx8Fw3qd
         QthLhIFX/n+nj1Y9pXyj1w1SY6CjoTcm7NgaQZvCldXVKT+whjcB8+AtrnjedPxl/01x
         p2HarKs1uZVTpVvOefwB7xiy3q6xMTmkBr9tuu2xhsGf4/e+4HrfJi9Dslj5q4FdsrUk
         yg5beDlDHr68IIuwYL+YAa8a1izpYV/RDkcO54iA603ziPBzK39/9/AsrgDB/ggV4ADU
         Ruew==
X-Forwarded-Encrypted: i=1; AKwUvBwbuiPKKAtBMebyp6UOXaRkttsp/wK7Le8Ii/oTY8Ho9nF6465jZAOt6Nhv/iqbt4f/X1C2JuIC@lists.linux.dev
X-Gm-Message-State: AFq9FYKC12DAlZhcNHoV3wQEWVC0NenQ3LhlX/Y7S68HKOKfjX2LzuDT
	oBoNDU6elOMb1Kl2kX+gl+NWm5RCdSFvjhNahi58fUwsDAc+sr3K+As867aEHN44E0lQj0cVKqV
	2yUFGeW4Jlk2D69r4cqf+eJMNz4xelvQ=
X-Gm-Gg: AYBFou00uDBrD7vphrAfvmpy3tN3jW2swgE9t8Wtm4Cfn+mmpUlO+Ka9w3i44XALJ6s
	7u/NgCCqtb+flf9+sNpzrJbjYpoET9veu5cDhnXoAI0tnzCoXZh104bardm60ZPTOHUn3Nu705w
	kq/muyUrMAzRbN+sOnARWkHlCxNZQ9pTiCQsZMmUKTJGHs1wVswLsr3UqCIUZbVYVaroPfpvnoN
	USUaRujasjoUXuB3pvyPCTUxtCFRYQ5YshQoqAtLAjTr9l/HT2v15Jmn0wjZM2ag08WX7MJnU/O
	tIiiFpc3TkwEBaaV+q9gem/A93DXuS1B8RSHL3E6LWTSsMokIrKo9KUChZnjRB7sERMO5zYySkh
	1oxGzzdQLgt3K+MfSwAAlvOTRc9wUR3x7X2gmYhsBfqowMk8KUzz8TEkYpo380lNo4hVFPXHPQu
	bc20pLx2PNPX0asxBlJi/sKQ35KxnogVWpzg6BhCG34E7e+xriUxM=
X-Received: by 2002:a05:693c:66d0:10b0:35c:492b:e310 with SMTP id
 5a478bee46e88-35c492be9f8mr12948382eec.0.1792014007399; Wed, 14 Oct 2026
 14:40:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1791499378.git.sashal@kernel.org> <20261014174838.114990-1-ojeda@kernel.org>
 <as_Cr4FhzyAh-kC4@laps> <as_j3DawEZQWA4ls@mit.edu>
In-Reply-To: <as_j3DawEZQWA4ls@mit.edu>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 14 Oct 2026 23:39:54 +0200
X-Gm-Features: AclHuK_5--FJcHdnSAu17V1pN7IFpqktYq-YEZQOni6awj4McI56yNQSA9BFuz8
Message-ID: <CANiq72k1jOGG4JUWE_8AYwqnJbFRGieG2SBMJ_LLVb8GdjtxdA@mail.gmail.com>
Subject: Re: [PATCH 0/2] agents: add portable agent skills and Fixes attribution
To: Theodore Tso <tytso@mit.edu>
Cc: Sasha Levin <sashal@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, broonie@kernel.org, 
	corbet@lwn.net, ksummit@lists.linux.dev, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, rdunlap@infradead.org, 
	skhan@linuxfoundation.org, workflows@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 14, 2026 at 10:29=E2=80=AFPM Theodore Tso <tytso@mit.edu> wrote=
:
>
> My preference is agents/ because these skills really aren't docs at
> all.  This is especially true if some of future skills invoke python
> scripts.

That is fair -- I was thinking that some skills will probably refer to
other files in `Documentation/` (like guidelines), and thus it could
have had some value to have those "properly" linked and have tooling
check it and so on (since the documentation already natively supports
that).

On the other hand, one can just ask an LLM to review if there are
broken links nowadays... :)

Cheers,
Miguel
