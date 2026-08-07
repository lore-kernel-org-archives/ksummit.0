Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87310E54B
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 17:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786123668; cv=none; b=SqCTMR+GkOC0YdvnFZzotzHYhizYQU+5xD+ahomvObtwsCpbxUDcRhKJvqnDcUp42bqcHY2KDmr0/uh9rpjrIE7CNaRk8Kkh3NuEBrGaoPQrGXFzUVXVgKA4AW23HCAoDZCAja04tX4gm2mXROTVwxPCk3L8RX87mI6ivuVbNJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786123668; c=relaxed/simple;
	bh=c+uN9p+UPmQk7j9oxXXuJYgwyx3z+wuY1F7tITOyh5Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ka3bEJStew5OoO1IDeDbZccA16IhGPEJfejfpsEv69d1j7WoUeSRqZ5tT4MlujGumye/FmKHrpQBr7GX8/ce6nvWfTWY1VEHqnEfhDjMaYL42F1fSHQS+H1sgiGqG45Mi5araV6dT1/SXOVRpEDTRjxchMvCT7fxP5waC8xBZ9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=gI0uj//l; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="gI0uj//l"
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-c197e7e4e94so616866666b.2
        for <ksummit@lists.linux.dev>; Fri, 07 Aug 2026 10:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1786123665; x=1786728465; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Kwq5vh0srplotHvtDOX1y2iHNVzGzlywv8k4RUokjBs=;
        b=gI0uj//ly/EcAPa8iTxGfIayf9K/aRFCnBL9OmYTUzaqxTyVbOFm8/ER6v0kkGBDpF
         4rHrLbqqIMhEkJZlOUUfGLxA1rRsBO8IQDRoB4vNSiiGUf0Ol+tjxzOJhsTMXeWXrcil
         oeDS8nlH1LdSdFJUSAepCki8WiGhALJkAxcAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786123665; x=1786728465;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Kwq5vh0srplotHvtDOX1y2iHNVzGzlywv8k4RUokjBs=;
        b=UDHLjUnR0u4Tus9NWTHfjuaT4Cmq5lKcmoYHpVeY2BAfmUyV67NFIssXEAQFG56dZh
         z63OW1GqlGX1bzUr4upzlEMAGp+qQmffijpeUxKKqFCPGir736mZhhD45vUOYWs+8mlN
         NNw37OAU7x2r9T439Zjm7p956vYoZMGNseJRc90reVmCy4F5Ph9f9XK4moVEpovqA5Cu
         cBZuGlKQhWHCONNk0NvxSEt5xB+efYhc4XDQo2lMSZes06DhLkSUQpH4t/9ImrAdGpKH
         N1ZcumUjMuZCi1nZoNNnk/EcO4Q+OfwbnXD+cRXKoEJC1nsi6ErRRcvIA7j3Hhmp2ZEI
         rfwA==
X-Forwarded-Encrypted: i=1; AHgh+Rr6LEVdn7JpDEXaCONnD/V9P+g/CSdrr2G4QEDa5ApT2MUHhUJ1jMaA5VpsjDCg7vCafoFBWaif@lists.linux.dev
X-Gm-Message-State: AOJu0YyA7LZK0IujlOVwlo2F4mgumv//EZ5++Bo/PssoWtubCS8e1eRR
	ijgvd1lLe0pM/iEyWv1qdgdLcU0Oian+oyr6eUw4juwaEIzS3thyVCXq6JBgyKoExs26wUzqEJn
	EStUWsjA=
X-Gm-Gg: AR+sD129dcGnun9HdExqGpUhAa2v/BdPiCYvZleiHK3cXORXpMGbwPvcRpeADyDXYW2
	7EUd625/aZAp8t0O3bVhPjggsTWJoJEUULYt7GPV8TYVooVEOMsjx+Pr4vLGynXbuu+FNTQ96BZ
	H9G6bU4yftRp2ksCmSif1TFtJqTHwKLDY26/zoYxUh+Io07EjyEpfjWAxBZslNa701vY6t2I91j
	xkgArGRl256T6F+j0OBIkWh6RXbv0yOM2jT2+McW0qPHnabeUBwCj9EN6J+fcXZNj1Nfg6THcht
	jZNUwysQK1lguMtSRyRh1borwJ2o2JYWvflrceWJB47cAhXmg4merLMu0rtLCRQ/Cqi7HvK2w9t
	TDIEC0MWRO8YrfL9NxZjC+nmsH9uoz9ies/zbO0ERKMdrzbIX3JpsMqsP2s3LcXvW/B25MeIUj9
	kyFABDj46uOhGKrnB+MxQx6Id7Y/Se+A9CU9n2MntmFCUVxAUvOugTRv+d0jeZfRk6sNCyKH2uL
	MUWweQyPWdvbfv3fSiJdnJ1JPI3Iyk0RPpbCg==
X-Received: by 2002:a17:907:1b16:b0:c16:72ba:d352 with SMTP id a640c23a62f3a-c208761d3f6mr114956966b.31.1786123664746;
        Fri, 07 Aug 2026 10:27:44 -0700 (PDT)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com. [209.85.218.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2080a29a33sm78457266b.2.2026.08.07.10.27.44
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Aug 2026 10:27:44 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-c15d3cd51b2so487199466b.3
        for <ksummit@lists.linux.dev>; Fri, 07 Aug 2026 10:27:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rp3T2j718Hmyd8hSRVmw6PhXJpMaoH4ulceV3IF3ekqw1aGT7WG1q/wWkfjDUhFxP4NPp2f1Qao@lists.linux.dev
X-Received: by 2002:a17:907:c15:b0:c20:3402:bd35 with SMTP id
 a640c23a62f3a-c20873bbd59mr131247266b.12.1786123664155; Fri, 07 Aug 2026
 10:27:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
In-Reply-To: <20260806194153.6443a3ba@gandalf.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 7 Aug 2026 10:27:27 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
X-Gm-Features: AUfX_mxLDIZewIuSrBiQFIPGhwm9k54iNe5dr2yFLCXXQB--uj0gqYKu5vm2dn4
Message-ID: <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Steven Rostedt <rostedt@goodmis.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Thu, 6 Aug 2026 at 16:50, Steven Rostedt <rostedt@goodmis.org> wrote:
>
> I guess it really comes down to what Linus wants. He's been saying he would
> love to get rid of Kernel/Maintainers Summit for years.

So as you say, I don't love it. The original kernel summits way back
when was great and I enjoyed it a lot - but that was a *long* time ago
and the scopes were smaller and I think the problems were smaller too.

We had technical issues that were universally interesting.

Then the developer community grew and it became less universal with
the technical discussions often really just being cliques where some
developers were interested in particular issues and others that
"checked out" of that part entirely.

The maintainer summit was an attempt at keeping it focused on pure
maintainership questions, and keeping technical discussions that don't
cross maintainership borders in email or targeted miniconferences and
the like.

And it *works* in that sense, and I think it has been useful, but I
have to admit to still feeling like it's not wonderful.

For example, I keep generating the partial list of people that I think
should be part of it, and honestly, for the last few years it has been
a very similar list every time.

Which is fine and a measure of reality: it's not like the main
maintainers have changed very much - but it still makes me just think
it's also just a bit staid.

To explain that last point: back in the olden days, when we lived in
caves and communicated by grunts and gestures, and I still lived in
Helsinki and knew basically _none_ of the developers personally, I
felt that the Linux community was in fact a bit more "open" to people
because we didn't have this whole tightly knit community of old-timers
that the BSD's had, or the physical closeness that some other projects
had with all the developers actually meeting in person.

And I thought that was a good thing. No "in-group" behavior.

The maintainer summit being a pretty constant "in-group" is
fundamental, but it still feels a bit sad and wrong to me.

I do think we have things to discuss this year, but I do also think
this is a good subject to discuss.

               Linus
