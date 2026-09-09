Received: from mail-wm2-f12.google.com (mail-wm2-f12.google.com [74.125.225.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF7A57F72E
	for <ksummit@lists.linux.dev>; Wed,  9 Sep 2026 16:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.225.140
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788971056; cv=pass; b=KV1kDHeOfiLYT0n3d1fk+r2YJx0JLYuUaCDbu/a76gY7XqkSMJ+jG3Uf8xEErc2bX+kUz5VlBjL8ix3EIGW6dGfneeNR8qLIbpZUZUker5WJwrrU+tenf2871K8/OJEw04WoYf4h99/pYDS6DxzwB3miUnjqtKUcvqUUUdqh/8A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788971056; c=relaxed/simple;
	bh=GeiRiNpyfwhUgcSQ3T8eU18nDkQKNquknOuUidllGY0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b9FGEvFzw3aVNykaUQjA2ysIRkRgrRvCyhjE4Bo+zwWjrbGCwoVJ6rqkhcgnMmF9KX16VZlKoMB42VibO0Ihp9V65nkcgZJQlGQv9Jg0t1lxDEpHYCaOW0vmji06LDBSlYvB/nWQowIiBEcHuO4BEwjJEhasoMvDkt3ydWaMufQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zdwc/ZLT; arc=pass smtp.client-ip=74.125.225.140
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zdwc/ZLT"
Received: by mail-wm2-f12.google.com with SMTP id 5b1f17b1804b1-49b912e64ccso3246205e9.0
        for <ksummit@lists.linux.dev>; Wed, 09 Sep 2026 09:24:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788971053; cv=none;
        d=google.com; s=arc-20260327;
        b=EnDMQ8911ydLn5TjcbDCA6NdZk1x5gF/miGTIR/p+E28478CNNmx+zI+ySA7n8gIm8
         gXIYf+OP+smGJr3fZuQao/AIA8yGVohmodY/FlD1MtQmiko1MQaivDNTWL4b9eCF1umo
         MTGw5Fj6+XSf11XeTJCoF7hyB0Hk3t5gNI8R3IzCMLO0mttWY9SyM4isOYB/s69xboqt
         /JubAR3JZGOQevXp6WaJjPW3lkWPvZw+sJ7lVpoBspI9uDEmEQalJO++VqGS1++XXEy2
         HxLyAvHNBI3IGsUyct7FXJXqHulrgQv8Dcbet1LblxdHfd9nvhmbKOhFawHBqoqDlM89
         AYYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=llJmfKpO0IhWkUo1a81HzJzxyl/oJt+VCIX7zmgZbi0=;
        fh=13nLs7IS8i0CqiymJecTbwI4AEeVSXY2h6h2TLcqwHo=;
        b=hO/lPXzXpHkseXXo3ilXq725MPAMkZAHbydzp9C1erMAyQhN0/znMnSvoHV/75ZsSF
         m8dvMfTZ+mbS7X1GympJRe/9QLE8gGBO/+aUgc6BbS1XEoRr/hmw+xw7TEox/dG2BBq+
         /4YPtqzMO3O72ATeUz+n9kxVgHLGeRNmBtsa+61axV7uBul5EIZ+XL1QRrShNBTjU1yv
         NMPx/KDLMz0liBbNByzSa0tXPgoh4T3Si9KokvA2X72tChDDhXgSa6FAxeZpj5tJJbJx
         6Bk1Gl5R4ltEUw3iNi3xuKgiG3CZ610R3Nr4Ho7HZgbeyq19h7DnLJ8KoblC96IN5fPt
         o2TQ==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788971053; x=1789575853; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=llJmfKpO0IhWkUo1a81HzJzxyl/oJt+VCIX7zmgZbi0=;
        b=Zdwc/ZLT8zHP1yV1bGKEUUTIhfRCBhRzJEfacIbRF28ks5M3ijvFBoHSoPIcM8PMGx
         8uSmig+TgPm9DTUg1SBG8Zj6CgoisJezWMJmOcR9J6C/ZU6gSXM1PtgrhcPH6XvLJ8Is
         IyLF3IZOY1mRyGdgy8Zg/prAriAEs3B5kMEI+JiSkm74XLuoPog1Pl7IYVH+C1AwBtdX
         nR2gDJLtRrFYPfCWVtxOWcYc7NZsxV6h8TLBNS1u5NRylWXL46eeeWpYsDOKBXjf2lXv
         +AisPYNuBuJhJsNGQqSx8JzrmzKhUEqaJiaQmv6S6Q5K7DKLLjLyemUR1jYr9M1pVo6C
         /oGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788971053; x=1789575853;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=llJmfKpO0IhWkUo1a81HzJzxyl/oJt+VCIX7zmgZbi0=;
        b=YBXFmM+7SOGikqE/NPELRJyVaXKWVI4gy/A7GJ7BT/efR2fs/HKPpyL2Zj28SuLgjF
         CpOhc5h+YvwFuMDfLQb+zQY8n0GwkLPXcUpSAVYSHwV/7pmm9DNZYcr91jtCWUK5EmPk
         gnksoLqkLzgVv/TscIAE9KLP2SfEnKun+wCjCBzjo46neYC/O7sNWxVDnqnjH1VaU678
         GjFd6dSCXU48KOiJiejJ9mVztbQy9B0YuLn9jBVla/ncrrmcvjtwZrOY1LgzWKQocPm2
         luISWIB/K06HCs2ip6MUC/pvCIBSyXfMi6ReAd9UlttB3ay7LpmdWBCrb4l0jdHKWaK1
         Hk4g==
X-Forwarded-Encrypted: i=1; AKwUvBzhDoVQSw9w4REF8LfxAlbyz+v8zUj+2Td97jb2ZGN64/kadJIysjPSbJI5j7qls+T3Wh4O5SCz@lists.linux.dev
X-Gm-Message-State: AFuF++lfCJPlWQkHs70lGErIVCrTptL1fDXYaPLj6bN5oAD6G1h4KzAb
	HwgLEeuAegbBfgbRsB6UIQW1pVX9DXprXZItrWhog31MYVVrtfrxQBrevInCGq2cEsOV2PHaJhE
	hBmHLFLzUcxPq+JSPwRC9m16MBW2CdYk=
X-Gm-Gg: AYBFou2RRMvPQ/W/0yiQe9Zvc8xFWxeJnef7qXGIMik/aZHbNqgKDHhUJSb/JJNcH18
	q2cGx1OqPYqidh6P7xku/dVlgc+LksBrTXJZf4Pi8SuabQwYqazEo2ZAGEjcQon53KLajQyTD9m
	K0mHQ7XN8mBcyybw+PVtv3ff9k6ircs0x97t4ZPGhpD6zDbl8mDZUWNE4c/5lGkHz0OaMhILqeq
	CR1XxDhYM12ngT/ARWkasx/KdgMNjt0RaFySi9Q9QNFJD3Qb+NFs/nipSh7whfrvpcNDFPySgGi
	eaXidMCK0d3FktlMXDHc92xykIjtl63Oy90JUgqj4+Leat2+ybk6YkaP
X-Received: by 2002:a05:600c:638d:b0:49d:2450:68ac with SMTP id
 5b1f17b1804b1-49d258dfc8bmr48621985e9.5.1788971053049; Wed, 09 Sep 2026
 09:24:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh> <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <ap-AmsGgDNFYLlw8@mit.edu> <CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
 <aqARgWGWYG5kZW9g@mit.edu> <CAH2bzCSLiyJbJD4dUiCRE192A44Qw9B01vn-oA_6=foi2j3iuA@mail.gmail.com>
 <20260908152921.3c90bdfa@gandalf.local.home> <CAH2bzCQYFDvUXdUwE-vS03=QSqO9TuYdN+=kdrYGhL+ttw=BOQ@mail.gmail.com>
 <20260908191440.65efef15@gandalf.local.home> <CAH2bzCR3_DJOuW+jfkH7tkx-j4KbPJHVx2k2Z6X=+vaS6rmqng@mail.gmail.com>
 <7d1c7f9677b6c5e9abec4d1ebc7c83cbdaa3e1ad.camel@redhat.com>
 <CAH2bzCR_hwxVbH-rfUHzj1-70mU7SkRY=3OgHEe7om5kZ605sQ@mail.gmail.com>
 <9b3e9c8cbdfd657323467079d397792c1ac8959e.camel@redhat.com>
 <CAH2bzCRvGGi_WS4j-5jeWU2uFrFWy_s9ZtMrcT5r+QY+=UdP4w@mail.gmail.com> <20260909121409.62d97680@gandalf.local.home>
In-Reply-To: <20260909121409.62d97680@gandalf.local.home>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Wed, 9 Sep 2026 19:24:01 +0300
X-Gm-Features: AcwNN1XhFOJy1vLkwAko60smDt67ljTICpt_XqCwq8jICiiVIze-RusrCHtPplo
Message-ID: <CAH2bzCS9VGtQEJDK7f+T1yBgxMLGcOg+pD1Df0x+nFYfHPzkRA@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Gabriele Monaco <gmonaco@redhat.com>, Theodore Tso <tytso@mit.edu>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	ksummit@lists.linux.dev, istoppa@nvidia.com, 
	Kate Stewart <kstewart@linuxfoundation.org>, Gabriele Paoloni <gpaoloni@redhat.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 9 Sept 2026 at 19:12, Steven Rostedt <rostedt@goodmis.org> wrote:

> Do you plan on attending Linux Plumbers? This looks like a topic for a BoF.

Shameless plug: actually, I have a presentation [1]

It's not exactly on the same topic, though.

A BoF would be also good.

The reason for the initial post in this thread was to try to establish
a first connection
and see if there was any interest at all, even in the mechanisms
themselves, without the
safety baggage.
Precisely because safety has a very high entrance fee, in terms of
what one must internalize first,
I was looking for an easier hook, like security/integrity.

But if there is any interest in safety itself, that's even more than I
was wishing for.
The catch is that our flavor of safety is more focused on mechanisms
and architecture, than process.
Not because the process doesn't matter, but because it seems that
everyone else is already talking about that.

But I thought (wrongly?) that it was already game over for BoFs ...

[1] https://lpc.events/event/20/contributions/2492/

-- 
thanks, igor
