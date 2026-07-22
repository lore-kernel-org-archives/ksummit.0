Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B635D41D133
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 19:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784747781; cv=none; b=N1yKoNbGWY5YAswUrELdK/jrHdtTDRys4KV+Pz7xW9mYTzIIm8QMvlw+0T05rbB3oR+1+k01lXjxDe8CoB2n2bNhSOKDErsIzw0M7Euo++lncZGtOkVkgAywfdCkDJOHLEy8h+Nx7iuj3UbEmgWhvKd/PrFbXise2uI3gfKSdik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784747781; c=relaxed/simple;
	bh=pid0NEjo4xfpAUbKJTdUf+xnP6io4XuQpfwepmDy6kQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HcBg/5s3afyPW5Xb5s6VbhTBad+4+D9nwirvM0mQJu6SZzpzau+2IvnlQ50KRsLR8z/BpzHUofmxp4RHUceO/z0WnbFi2LnvDVZbFzspfA+N2CyMKGlTuNu2RB2KOWznJ0imG4lnw/uwtg99RNUhkQ9T9d430Nz/ZL3FZX7aGeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=QDiUZsSe; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="QDiUZsSe"
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-c15cd3fd760so1459033566b.2
        for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 12:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1784747775; x=1785352575; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=buxSIBrj5vdtsCb2tQ4iEJYikdMw74iJ/7x2Dj3lhyQ=;
        b=QDiUZsSeUpeR8D5BvCcA9wx/9vyX4AmFy5FkMozY/XnjrmvfxUFnj5thV2cIzGpIzF
         KXwd7cStXpnnl9fM2Dnh4rkvASogZKAWgz+QTDYvCJNrLAbywbDCdhI+t7efA4Te2ED9
         y/t9EtQlRtsJhL9nNNj247xsauDkdRf6ri4ng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784747775; x=1785352575;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=buxSIBrj5vdtsCb2tQ4iEJYikdMw74iJ/7x2Dj3lhyQ=;
        b=oAIuzLtNJqk24qJCmq4eLMAB33aE1GJMsHAoiDppKUlM6mQFAVWWjJDo9fP823rGa9
         4WC+urpK2FNWBcTKVOlxLz84id90iStoSL8QhC2nOqfrL1CYgeThQlfCwDoCxaHfJd85
         mUwho5kvLP6aufSXqiOw3pi5FN7xWeORHrdWZAqvNUd5deAgA1IGehjqUqJZxyYvxwXY
         3Y4qJRKtvAqsrH4xsJISIwNEhpeeL9Pmxi5DR1TRUGmcsg7J7LA/kU2kHv95NxXNE3nq
         a8++aqbnErFHRRTL38MQqkUMxNYiOZajjjTWVXYQI/72YLibuupaxun0rSQoLBxGjXcu
         FmIw==
X-Forwarded-Encrypted: i=1; AHgh+RoaaOYBWK9BlDZCHNSLRVnFDipNW7+HBBMSJy85kzsBY5ovxrWCbbyFV/hAE6ukxdhMkGXIjimj@lists.linux.dev
X-Gm-Message-State: AOJu0YzgisRUUEAJO6D+TM9AaEIDk7Sy7aqMKQ6evhD/lczN2fG85qku
	Bt363FEa94N6d63O8YX7sli5bdp5i62NHWlHLhw5AQq6gv9cNqOfc+etq40IlybWadBFyvaRarI
	8vNynPRI=
X-Gm-Gg: AR+sD10JyeUORrt9sCNt0XV5HVHdC4efgu5k9dZ83W2MwC56+bJdrHC78/3HH2DM1Bs
	gZRT1ktVfCTHgtQ666b5xzZ9tiN107zN5fJVmDmRX/qzurriT1ExsQbnGEto2e6B3tw63W3MtRd
	/thkDvDU1qe2chewndLOBEolPhVlvuZlo6qtVO4K2cvhcPIDNPx3iKJGVnmwN0I5tJdzxJLJG1x
	FFCNmI8Tcd7TFcIuYFa2BgWnM/Z+4fCCPMb9Sbw27l78gHY6Wob9GpC7vHNely9epf+TZNrfATQ
	MMYUjYjAPCSNWxtYShwuMnnaf7pnkaZqKi3wxM2lp2wZr37+PHt5bAUhSmIJys+7OwRRxsSJloP
	Gz6bYOA1ZodZlxaeaGwi5sIqmqN4x+Zq8mCWse/lbHyRoYGKle1YtOzl1iglsjL5ItalOiypI+n
	Ha1WBwfEm3rN4Kl1WE55PmpJXz4gwL+4HMP6x8pLS//oL6GTZllio=
X-Received: by 2002:a17:907:b045:20b0:c12:12b7:84de with SMTP id a640c23a62f3a-c1c5091a44bmr4924966b.17.1784747775259;
        Wed, 22 Jul 2026 12:16:15 -0700 (PDT)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com. [209.85.218.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32a7ad1esm142140966b.3.2026.07.22.12.16.14
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2026 12:16:14 -0700 (PDT)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-c15d111ca99so1369226966b.0
        for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 12:16:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqU8jAKq5Opc/qFCj0yZt3NiLO9Z/XJ4L47+BnDhJCvev1B8LUzNRmKeUH3RNE8LiJtg2zEDER+@lists.linux.dev
X-Received: by 2002:a17:907:e1c5:20b0:c11:ff2c:4f33 with SMTP id
 a640c23a62f3a-c1c50bf2302mr3607466b.45.1784747774114; Wed, 22 Jul 2026
 12:16:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <87wluv7yzc.fsf@trenco.lwn.net> <alj4mYFMfZvuarfx@laps>
 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk> <alkFzdJobnnMjJ4v@laps>
 <amAEIpVXxJbVgT2Z@lt-jori.localdomain> <CAHk-=wgbGarE7Ozw4VG6oUKDj9pk-8DRoDiX00bo1MwEMm9UWQ@mail.gmail.com>
 <20260722-uncovered-clam-of-bloom-03ebed@meerkat>
In-Reply-To: <20260722-uncovered-clam-of-bloom-03ebed@meerkat>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 22 Jul 2026 12:15:55 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiNRpRj_pTuoxT3POuRW3F2qg-rM_yafh5oc20LmZF2JQ@mail.gmail.com>
X-Gm-Features: AUfX_myYaoCXZGI8lZmvWiBBuJdZO_OK5scyHdgeqOf4nuwyiVeGFYrd_dgFVTw
Message-ID: <CAHk-=wiNRpRj_pTuoxT3POuRW3F2qg-rM_yafh5oc20LmZF2JQ@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers, etc
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: Jori Koolstra <jkoolstra@xs4all.nl>, Sasha Levin <sashal@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 Jul 2026 at 10:48, Konstantin Ryabitsev <mricon@kernel.org> wrote:
>
> At the danger of introducing some kind of "karma system," how do we want to
> build this trust?

I really don't believe in automated trust systems. They'll just get
gamed, and once trust is automated, it's not trust any more, it's
something else. That's not the kind of trust I'm talking about.

The kind of trust I'm talking about is purely personal: I trust
submaintainers (or, in the rare cases these days where I apply patches
directly, I trust some patch because I looked at it myself).

Now, that's different from the notion of attesting your identity and
showing that you are who you are: we obviously have systems for that,
with git signatures and kernel.org ssh keys etc.

So I guess "trust" is a bit of an ambiguous word. You do need
infrastructure to build that trust up. Tools to show that kind of
identity attestation and "this person has been around and has been
trusted by others" is obviously a *step* in turning into that personal
trust.

Greg has been involved in that "decentralized trust" project that at
least tries to do some of that infrastructure.

So projects like that exist, but that's not ultimately the particular
kind of "trust" that I was talking about.  I don't think anybody
should blindly trust any technical infrastructure, even if it can be a
_part_ of why you then trust somebody (the same way you shouldn't
blindly trust AI).

              Linus
