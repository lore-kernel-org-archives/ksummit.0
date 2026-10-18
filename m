Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5BB83822B7
	for <ksummit@lists.linux.dev>; Sun, 18 Oct 2026 18:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792349953; cv=none; b=bkMO1KYbYxYlaz2FHZnow2DqpHxaNAn9hvpekorFNWPAkGB44+F9VZLhPR8sUjQlwYLsQ0gCkt/qcCZaGe35vgaGX/x7SwT6zwH1iBlQ/+wQDXYy8zQPpwc/JSsynDZMDoFQ9hoMCA6zFnkbc+pR6rQiRvkDBFC3Ume0z0eewqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792349953; c=relaxed/simple;
	bh=Lo7ZxKPZsJJkkMcB5M43Ky1nPj/z0LeGRyhnEuK5cuI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Sj/Hg9sCeZIthfwkK9VL64xYZgG0EKSi4WBvu1M62caq3tLc2JXjA+xcGkHBaM+pYde706k1rPtwKea3o4NqcZzMfm6bWysOBIx0CvBBrt7M+1ucWiecyesXuKG/KbZHMy9bFiR6IIUuc6XmHQZGDJ/Kwn8VTA1axgXb0x59Oq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=fR3OkuNr; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="fR3OkuNr"
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6acbdbc1725so2044099a12.3
        for <ksummit@lists.linux.dev>; Sun, 18 Oct 2026 11:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1792349950; x=1792954750; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ced419opuHB8e0e135UczeLqVKIED5ie3I6gjhxnxGw=;
        b=fR3OkuNrsJUtj36URLjNpr4uQVkVv2JEE8hCxGX5pSVYfxNx1RiaDrURGMBlpRKCHP
         t8M1BvntQQnR8AdcoEUhXrbBnuNs8xT3BYbW53eWgDTKYIF4xBpgDwuWa6niBMi0pAvx
         DogMT0z7jK7UUaBShFfMH1FVrvksloak2Y5ic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792349950; x=1792954750;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ced419opuHB8e0e135UczeLqVKIED5ie3I6gjhxnxGw=;
        b=r5LSQAc/5uAosBmkIj/Zs9yyyb5PsT/EO14pIHabp3FL7UuPeJBwH3xtaD47UW3rns
         BNz3t+O9Ev07O6dPjfRdkW05gbZyOm0TtJIx13bNMKJD+NnW90CEw4Y+wRjJzQOhbdeQ
         BlN1H1RHyoAROXiNXCWWoJ3oCoHlfsJdmVf9Thz7zNZhOt/zl/z2xOggIZrpgMk5lBpx
         jncaloT/E+4WONUOxwDPtZSs+pb02CwyjBT+MsA0IK15KXlZJtRK3aP+TLF4NXLSBTiB
         IPpfFuIrWkBoz6bH11TUB6wB9f2mtAjddrg00/vOYAmahrR7ScNOWonaMHPlbuteVCVL
         vqJQ==
X-Forwarded-Encrypted: i=1; AKwUvBxanQ4fMC+NSui7rc4ifg8hZGJnt/joS6+mZMO/tB7gkDWY0UZK9ZLbe+0DtnazCrOgbnm48E52@lists.linux.dev
X-Gm-Message-State: AFq9FYIRqfvIXmfsalhXmx3UuMtar5khMr4EWI405eC5h3WNzrDRl4QN
	WYaAqsmhD6x5l37gopbDvkl320OaIT43H1TzQ6ptdpguI4YpNZoZP8iM9fIpAWRcotyNK1hOPrU
	CBOTVMeU=
X-Gm-Gg: AYBFou11yfkorkF8YIoDEjXBSnc3MR4Ng98Yu4VtDWKOWU8eTVw2hCLVzfQnsf4M2HJ
	4l+YlZgeP5DjgLpbmQPG/wj8HBJYULsJWBl04UaSAh0Y8xmaQAvexyl3gPVmezhO2srew1lrTYr
	8JgqA1rfkP+xoWocDaFAbchkdSqzPeVS1ngBdfrVOmjK8CRY1wwDvPKxS5HavZBA2TT5aT7POFV
	aGgkI2GsAURC/BMAsT2Wvs2LrvTZ+GInYtVDKBq709kGR0BctSmbEFHc/XfG9ZjJJncIdDSxm3D
	b+5/EBXZtY3hTbCAvi06eJWvsKin0hxxdeqMprXOagTfyYmuW2Af6QAfMiLrRVur+CMxTw1Bpo+
	RTUo97smgo1FBVVED5s1foDzQdXApIGG9fMbYKe7YzFWZENDUW3+K2H43djRug22uwSE13werIc
	qMOuI84P9fnZpfYsZj58jWWkcdNSaqKoecL5WpafE+WI3orfPrQvZmuLlQa7fpC6riveLHeOnu7
	6gI+Q1AfcesQdpKNTUM2X2Uv7KD1DctQ0d3eCmtRBMRTqM4
X-Received: by 2002:a05:6402:4344:b0:6b1:e4a0:4848 with SMTP id 4fb4d7f45d1cf-6b3a81c2048mr3692731a12.43.1792349949773;
        Sun, 18 Oct 2026 11:59:09 -0700 (PDT)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com. [209.85.218.44])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b38a1dacb6sm3139264a12.28.2026.10.18.11.59.09
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2026 11:59:09 -0700 (PDT)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-c423b145922so96241066b.3
        for <ksummit@lists.linux.dev>; Sun, 18 Oct 2026 11:59:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBySfGHM6i6kFREwEu1ODhx4TxKC0o/gTVB/bWINSfXfQQr0UUW7ScTg0P/CdnZH/DbOVo6oZOGH@lists.linux.dev
X-Received: by 2002:a17:907:944d:b0:c2e:317e:d711 with SMTP id
 a640c23a62f3a-c419e93a4aamr384493966b.27.1792349949125; Sun, 18 Oct 2026
 11:59:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
 <CAHk-=wj24dSSRDQjvkmcw9LMC=K86d-Xys9=qX=gKoXgrQN1UQ@mail.gmail.com>
 <7ia47bjg141n.fsf@castle.c.googlers.com> <202610181138.E3AC979EF@keescook>
In-Reply-To: <202610181138.E3AC979EF@keescook>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 18 Oct 2026 08:58:51 -1000
X-Gmail-Original-Message-ID: <CAHk-=wjaAtm=d=kop+nabwDPvfdHkO2hWG7QUa1x+JE3x9uV_A@mail.gmail.com>
X-Gm-Features: AclHuK_ZUzziQz8NNYkXZTiGqj6yKwxN6q0vlCU1UFZMXEI4WPrVTzacZ6LSxcM
Message-ID: <CAHk-=wjaAtm=d=kop+nabwDPvfdHkO2hWG7QUa1x+JE3x9uV_A@mail.gmail.com>
Subject: Re: Patch pre-submission to Sashiko
To: Kees Cook <kees@kernel.org>
Cc: Roman Gushchin <roman.gushchin@linux.dev>, Jiri Kosina <jikos@kernel.org>, ksummit@lists.linux.dev, 
	sashiko@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Sun, 18 Oct 2026 at 08:41, Kees Cook <kees@kernel.org> wrote:
>
> On Sat, Oct 17, 2026 at 08:10:44PM +0000, Roman Gushchin wrote:
> > It is really easy now:
> > $ cargo install sashiko
> > $ sashiko init
> > set the LLM key
> > $ cd linux && sashiko review HEAD^5..HEAD
>
> FWIW, I have been using this for a while now (and making this "local
> review" mode more ergonomic). With Anthropic's recent "API credit" stuff,
> this works very well with the Haiku model (Opus is outrageous over-kill
> and charges you 40x more than haiku).

So we just need to make sure that people get this automatically, I think.

Right now you need to *know* to do this. That's a problem when at
least some of the noise comes from people who don't know the kernel,
and don't know where to look.

Hopefully the agent updates will sort some of this out and just mean
that people get a sane baseline.

               Linus
