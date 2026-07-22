Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C9C199FB0
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 00:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784681880; cv=none; b=scd69maZWHY+q0QrDpdu4cmBIrJar+vtZG1+2rZamsH3q/HLfenGuNgODMVLbzCDR5FoId7IJ8pEXQ5+vB6dOggtPaE4/TfT/n+B0d4Z4ygo35rC9Z4ZRoVOIIkOA+NFCen4zntBfR+T+OB4I/X1HxYel2mQPJq3sq2CId0+sUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784681880; c=relaxed/simple;
	bh=9UBc9AQjPxwBDGgG59/i4Lpc9ExUym/dIaTez2GF0sQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ISw+xaxYpOnynTNOFCNiLh86IZuCvdMVFD68MwOPJ4mJ2r/ik1F3p5tlZEjm7R9PbmprAXhcU7vBAf8fBv6xTgj81J8CM08PR6kfD9o0p0edJaYe/KP+7elFFuI68lA1ziomE2C6Q4LDvlLArPELaNeoB4B/blvgwQzfv+yhEmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=V+sP5FGN; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="V+sP5FGN"
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-69a50b818c8so18974666a12.2
        for <ksummit@lists.linux.dev>; Tue, 21 Jul 2026 17:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1784681877; x=1785286677; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ir/+j7h6Ngam3+rj4Y+FvqzsgZ8DDWTM5ViI3obHtbE=;
        b=V+sP5FGNuSF617XnLdWYyFfI2AF5x0RwAcSAWt87sMbJpcTMRE7JDfrdK6bYCR1JQl
         qDeHRicmbDhV3gElxHPwy4HfUsc2y6XJXOkE/7n/wC94dMsChpveaZUJ+Kp9zviKmOyu
         lviR1Rx6lLAs2jhehT2Jeei7/jyHtc39/7FjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784681877; x=1785286677;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Ir/+j7h6Ngam3+rj4Y+FvqzsgZ8DDWTM5ViI3obHtbE=;
        b=lgInTJbiXlBZz2ME1oadrWeDRpdGj0zC6Fey2TdExvAGtB/qHMtGizWabrVPwOHfrn
         KZIX2qLOH7F3BmwYL+eHlXXUPE+wmHGwE23xUZbMM2TnU0pU8lfMvvUnlmMDizIpAl2s
         aTRr0kizdBBRMHhWeJWa/Wd9NNKsgN4Fx6LJ9WYplXud2rxawSs6R2jpRp8KeIZyqd59
         x3COB84XJxYpg55ZQ3L0do+D+Nn8r19QQEh9FgFTlcJuoYoK3KaMtqQLbfo3QfOQUmkq
         sEnkic/Pc3s1ltabW3eUoCnlyF7gH7NmPL/GuOZWCvZLZQoRu1bVD8v9ElOiTjwnyKp1
         /O9g==
X-Forwarded-Encrypted: i=1; AHgh+RqYfhTKOYezd+AdOq4pYJIHzI2ktByylqJPOENRoxpA8jHr5kYGJR9jdjMsxLTtqDcp1HrXPsMF@lists.linux.dev
X-Gm-Message-State: AOJu0YxvTyF8uRooywnNFzOgE/ff+PxjxO3SAb/jXJZLcGp/UajpMFHl
	c3IP++1onesbeaEKfzZum3Qnsfb39+9+W1e4DF+AzTTceO5TVGG0aF7DatCkH234cASLijc+agU
	3XjI7OQA=
X-Gm-Gg: AR+sD13HJV3XhpN6jTJp6YkoLrmMwou+HbEwCQ3STk9sY4w5sgNV8W+UZNWfBh/zAfj
	5aV+2jlsDQqrKr7/9IOeZy9S/ejSucaUyqX5dQfS7PpFqwzRKI8u0ETOmsNU0hxxWnMHdB57e4o
	JH0Ke7qyqwHsmi+Z5FEyac/GGO1Va1bvHZjo2z/Jf0ZZYtpbcLNTQz61UqWYGoDZtVzoyjH0LfG
	XFXZssot2XbMqHQGx8zLiaqJbW6OBlSBROjYHLchJDU4qYPf7O0urVg+o2i7Op1px8fPmPdhlIj
	o1VP1UWWiEbJJafzSA7OHq6PbkDdr3GV/tMZvzRxJtEjj80A3GY/U+ayS4McR6d/oiKCLYTsDU1
	pY3rpo4GWkLmnZYc16VSladYoZBPrbF8cDwiA8lzN0Z/7zDADDzXyQQiGIb2HjexJxmGb3By0xx
	E1awXWvhF2Pn20MFDWOoSGhzBsl0xPVL430Qos5zO655nllMjmXqE=
X-Received: by 2002:a05:6402:44d3:b0:698:5f89:9a51 with SMTP id 4fb4d7f45d1cf-69e652578e0mr5822934a12.5.1784681877077;
        Tue, 21 Jul 2026 17:57:57 -0700 (PDT)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com. [209.85.218.53])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69f34b9b064sm331141a12.11.2026.07.21.17.57.56
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2026 17:57:56 -0700 (PDT)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-c1677c91969so820553666b.1
        for <ksummit@lists.linux.dev>; Tue, 21 Jul 2026 17:57:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Roe9Mph4dt4ygl0lpu8STkSJtuWDG7Y+nBlcDzJTvnjWFOUySpASKsn5ep2MuAJy8kO9EP0fcld@lists.linux.dev
X-Received: by 2002:a17:906:6a12:b0:c15:c203:c778 with SMTP id
 a640c23a62f3a-c16b48552d8mr835496266b.55.1784681876316; Tue, 21 Jul 2026
 17:57:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <87wluv7yzc.fsf@trenco.lwn.net> <alj4mYFMfZvuarfx@laps>
 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk> <alkFzdJobnnMjJ4v@laps> <amAEIpVXxJbVgT2Z@lt-jori.localdomain>
In-Reply-To: <amAEIpVXxJbVgT2Z@lt-jori.localdomain>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 21 Jul 2026 17:57:38 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgbGarE7Ozw4VG6oUKDj9pk-8DRoDiX00bo1MwEMm9UWQ@mail.gmail.com>
X-Gm-Features: AUfX_mzTQ1J0dvD4U6CqYJVEHHVSkHcNFnCZ0MXyFRJVujDzRYoNuiGRHumIjyg
Message-ID: <CAHk-=wgbGarE7Ozw4VG6oUKDj9pk-8DRoDiX00bo1MwEMm9UWQ@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers, etc
To: Jori Koolstra <jkoolstra@xs4all.nl>
Cc: Sasha Levin <sashal@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Tue, 21 Jul 2026 at 17:18, Jori Koolstra <jkoolstra@xs4all.nl> wrote:
>
> Can't we just deprioritize invasive contributions to core subsystems by
> unknown people?

I think that's something that should be happening pretty much by
default, and has nothing to do with AI except in the sense that AI can
make it easier for random unknown people to generate likely-looking
large and invasive patches.

Basically, I think a big issue in open source - in fact in my opinion
*the* biggest issue - is the basic notion of "trust" in contributions.

And that trust can happen either due to knowing the people involved
and trusting them - regardless of whether they then might use AI
tools.

Or it can happen by looking at the patch itself, and trusting the
contribution that way (and then the submitter grows his or her trust
over time that way..

But basically, without trusting a submission some way, the submission
shouldn't be accepted.

And the corollary to that basic issue of trust is that invasive
contributions from unknown people should be much less likely to be
accepted.

(Here I define "invasive contribution" as something that is hard to
verify as a patch - there can be large and invasive patches that are
easy to verify with tooling, so it's not necessarily about the size
per se).

Now, I think the other side of AI - and this is where Sashiko comes in
- is that it basically does end up being a tool that can then increase
the trust in the patch.

So AI giveth, and AI taketh away. But the basic issue shouldn't be AI
per se, it should be that notion of "trust".

And yes, some maintainers will then trust tools like Sashiko more than others.

And that's perfectly fine.

            Linus
