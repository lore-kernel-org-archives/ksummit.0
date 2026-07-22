Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA70230C160
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 14:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784730059; cv=none; b=qe+YWgL4wNWE2K2M2ziANjTMTevfvmBrRXv8vt1qcRoPhARA0hE36TIxa+N9fBmEirvwGQbK/jcBr86CtJYW3Puzs5YW1E3b2SmO3BuE7vJHDrPxvxDu9zREqLzLO8/cG8rRiakEm0Rtg1yOdOeCM2quXfNxJMg0rVckKDGPeh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784730059; c=relaxed/simple;
	bh=TuYFY9ikSw1BshIpxs5uYw4Tz2ZqHSHyM3dk0YtVTL8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=rEdSe7ZguTYnf+rW2IDTd1E3UM7gPciCwRh/vSAw+Fbvu4Fp0nx2InxN4/VOtxkvZUHVctOBc2ihaTQvLwUk5GjbnHh33pQ495E5beMqPruzX22IxeAFLo61zbBoxKtEdBs+/nrq/peiDDAQrEZRv4Zrzn9NgPCaC2nVRwIup4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=hammerspace.com; spf=pass smtp.mailfrom=hammerspace.com; dkim=pass (2048-bit key) header.d=hammerspace.com header.i=@hammerspace.com header.b=PPPB/+vy; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=hammerspace.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hammerspace.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammerspace.com header.i=@hammerspace.com header.b="PPPB/+vy"
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-451d8064238so7457895fac.3
        for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 07:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammerspace.com; s=google; t=1784730057; x=1785334857; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=TuYFY9ikSw1BshIpxs5uYw4Tz2ZqHSHyM3dk0YtVTL8=;
        b=PPPB/+vyfInLc5o3YkxHdBeK24FOY/C9k5cAMLGZZJPmuXVgveObJ2RpcPteAvVUMh
         Y7L7K54VnKOxeoqweMFSyBk2WJpbZjfJtG65gsXF5dcKjY5uRbztM7I1hL9M7vO90Bcc
         J4PlMKSURsQve9gLSQny7b4n/1fUl7q0FnGVKuZ351vX/wUdtxnymdkNLEnDXRbU4TzJ
         rzqgXv7Lm0rIhPczP+ZFmStA/hGVA6eHfA4QT5LTA6fBqFB3X8WH2p5VjiRD407rpcuk
         RiAm2V21phr6Ii2LDlphDRAvUFo8GjUdIsh8kUO5mDsm9ZBVBxjSlgbFlYKnD0p+6oK/
         R/uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784730057; x=1785334857;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TuYFY9ikSw1BshIpxs5uYw4Tz2ZqHSHyM3dk0YtVTL8=;
        b=en2pcGxhgYIWMhwbNrCSt4xRcB/oXVfP8PjPHmScSwmtA5kGNgH59h1WSEiMax205H
         qR9z2pfhbf/VyNOyLfcbZkGbdUia8NHE5Fryt2Uk1k+6HU6PPe1gPHl7J1G9uO7CWw6G
         /kuxHIwbbCFBe/Hn9oSa+5Ax0snC8j+TXPRwOc+5NsH/sqhXDvrzKh6WhP6VJx51TiK7
         T2MjTiQ3LIPDNSg6lZweMZjvimNwuz+hTKApWHkbsmtBSnS3A3jsWghk8H/vNXQVlbnE
         UbWJ31xMHTCugjtJYGbyL52VEEMsLklSxaFvjgJSmEoRPXjhSqR72Jh82GFwJmt4JMEH
         AmVA==
X-Forwarded-Encrypted: i=1; AHgh+RqbiMim3H0rTr9QtbW7Llw6tK1V5kncHyjnUx/RyM9KQXgaIwmTbZAJFELePIDRqkfxVmdFJGlO@lists.linux.dev
X-Gm-Message-State: AOJu0YyD+g9/j7Poa9bCscqZAJ90gt3xko0YAOCM6nG5uqAgDElN1H39
	krs0gO4ul3kwvSvax1xWoudBnbvgITDLvlZql+/vLWa2o3UP8b21XIlsvhHQsUGDwmM=
X-Gm-Gg: AR+sD12nfrCNlbI2WU1UKXm4keKRK9gpOjYEhQ0RxIcHM2JzujG6j5bDvIhQIC/4vgk
	KsX4zcYzHuWu96KA50CIwcQUpf3/hWxe4Dvl/6ks9jTHAqCyLlSeVThryn2Lm9zPaX2Oe68fUDQ
	940+RbE+iC2+wpaIbcD6Y6n5dxaFlBhw6VGRSV6FDgXKhAdKNpsvgSToATbeiAHgt8KdNE66XQc
	b5IXF2ugamOZCTO16ybBaupq3u78l7en7K/esRIKkAaf8bZ23muE7cnmnTPtU3clSBQR++woAo6
	OXFB9luGW7tUuQsIvRXCAKxiutON0ngG3iugXz07yVp5Upo86OHZQE45Thmv0ltHH5uNbJZb9f3
	n0ezkMTXpN68dLGozibgnpsSAqyRqIIKUDNWM1ICgmlNpckpL7OHy/eDROYnoJEsQJNkWuZ/xOR
	FPN28w2hQ9TNN7mFE3nQfSh9oDtreks7+rwJAeBRx7gN2+anCsOVPvn55QeOxZkc21xZtiMA59h
	BqeLvcaBFqw
X-Received: by 2002:a05:6870:6392:b0:43d:5d22:4719 with SMTP id 586e51a60fabf-45690352a54mr11153742fac.22.1784730056534;
        Wed, 22 Jul 2026 07:20:56 -0700 (PDT)
Received: from [192.168.75.157] (162-232-235-235.lightspeed.livnmi.sbcglobal.net. [162.232.235.235])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-45767486df8sm2091355fac.14.2026.07.22.07.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 07:20:56 -0700 (PDT)
Message-ID: <d9d0249b0932a6b219e1406312de30287ff5b640.camel@hammerspace.com>
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
From: Trond Myklebust <trondmy@hammerspace.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, Jori Koolstra
	 <jkoolstra@xs4all.nl>
Cc: Sasha Levin <sashal@kernel.org>, Mark Brown <broonie@kernel.org>, 
 Jonathan Corbet
	 <corbet@lwn.net>, ksummit@lists.linux.dev
Date: Wed, 22 Jul 2026 10:20:55 -0400
In-Reply-To: <CAHk-=wgbGarE7Ozw4VG6oUKDj9pk-8DRoDiX00bo1MwEMm9UWQ@mail.gmail.com>
References: <87wluv7yzc.fsf@trenco.lwn.net> <alj4mYFMfZvuarfx@laps>
	 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>
	 <alkFzdJobnnMjJ4v@laps> <amAEIpVXxJbVgT2Z@lt-jori.localdomain>
	 <CAHk-=wgbGarE7Ozw4VG6oUKDj9pk-8DRoDiX00bo1MwEMm9UWQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

On Tue, 2026-07-21 at 17:57 -0700, Linus Torvalds wrote:
> On Tue, 21 Jul 2026 at 17:18, Jori Koolstra <jkoolstra@xs4all.nl>
> wrote:
> >=20
> > Can't we just deprioritize invasive contributions to core
> > subsystems by
> > unknown people?
>=20
> I think that's something that should be happening pretty much by
> default, and has nothing to do with AI except in the sense that AI
> can
> make it easier for random unknown people to generate likely-looking
> large and invasive patches.
>=20
> Basically, I think a big issue in open source - in fact in my opinion
> *the* biggest issue - is the basic notion of "trust" in
> contributions.
>=20
> And that trust can happen either due to knowing the people involved
> and trusting them - regardless of whether they then might use AI
> tools.
>=20
> Or it can happen by looking at the patch itself, and trusting the
> contribution that way (and then the submitter grows his or her trust
> over time that way..
>=20
> But basically, without trusting a submission some way, the submission
> shouldn't be accepted.
>=20
> And the corollary to that basic issue of trust is that invasive
> contributions from unknown people should be much less likely to be
> accepted.
>=20
> (Here I define "invasive contribution" as something that is hard to
> verify as a patch - there can be large and invasive patches that are
> easy to verify with tooling, so it's not necessarily about the size
> per se).

In my experience, "large and invasive" hasn't been the biggest problem.
It's rather the fact that the people submitting have no understanding
of the subsystems they are patching, and so they (and the AI) overstate
the claims of importance. Suddenly, I'm seeing a slew of "security
vulnerabilities" that are Cced to the stable kernel channel, and
sometimes the security channels, and therefore scream "Drop everything
you're doing and look at me now!".

IOW: the problem is intrusiveness onto the maintainer's schedule, which
also eventually leads to fatigue. Particularly so, when none of those
claims actually stand up to scrutiny. The patch itself may be nominally
correct, but it's never a "drop everything you're doing" issue.

--=20
Trond Myklebust
Linux NFS client maintainer, Hammerspace
trondmy@kernel.org, trond.myklebust@hammerspace.com
