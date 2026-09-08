Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C848252FE5D
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 11:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788866789; cv=pass; b=g/pTn+pQ+9rv/afpmhBHdZuVfeVOwvcynTzMR44oSeZbATy2GyB3Aa9dPhq+pEOyj3hhUZfq0y6tBOXCKyuJxYM3SN0rUZe/1b2fljiljEgBoSzS85yiF3zuLYhC5Bx3nz2hcNJYOUi599/aNRH8G9SHIRhT4Pt2L5TDhkPZjiM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788866789; c=relaxed/simple;
	bh=yS8rKa8izzuK0oIO1eBx7aBDB0qwkdrUOXQlalIooyQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zrm7NYc1gJoTsc2SGcMeNEs2ueZJs76/DC6tsOTlaXASU+/H5PpRclvjdUUtumZe+ji/r2LMKzhMTAB3C8pQCcjR4Hx8GOdie0t3jNgFmCdrwnVzCEgefoz0011V1xxxSNzCcZIDH6DttragyMuSieCGnfAYRZhg1xvayunfN2Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pUZwDvhb; arc=pass smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="pUZwDvhb"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-49557167508so53906855e9.1
        for <ksummit@lists.linux.dev>; Tue, 08 Sep 2026 04:26:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788866777; cv=none;
        d=google.com; s=arc-20260327;
        b=NuA8YIy0BY5LrG1c82m3zMHhIuW3Gl1qt4UYzoMGyvS1uNbxiNgBxlt/FgzqRPbaft
         p1SzLk6rPhMKY9bSSDaphJTPoOUrnQrGBEZm/5X3vwyZNOWj/U5+JHQVQqgNQOHcACKS
         hoHA+N70zOputpl3c1vT6wq4lYHXsMYoZQENpq929eF9+bSSPzguPvK4wOYGpkgpW4kU
         4fxV481LoRPShlgS7lkD2MsNdADUVtqYIlls9wPSQ0sbXoTuhA63dlHJh9cSi6x/W3pu
         qy903AwDzpjcWWBgCeSospFrJc/UKhoeLp548uVDxsYYxFzyleVX7Z5NjNggxBPwYBl7
         eWyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yS8rKa8izzuK0oIO1eBx7aBDB0qwkdrUOXQlalIooyQ=;
        fh=shJsB4eIPJoPNbM/5kyB/AoB8oenWb/YFdDySMmnacI=;
        b=Y7TcCBtS0SAFeIQB6nfmwC5UYkTGfDAdSSFmW/Bv7X12XSFCCmJN5LAFRsR4nuRc2D
         Uw5Zs6RPorzUll7dnEix1vUXB3E09vOs2Lnn8O4O+VMvTrYRPxs/NUtzXQOkxxQI3OVv
         dBijcOCd8Ig0/TovsMei0652iFnqlKFU5Xr9X8M89m8hjPnCCIVoiA+kgtvCxVThwggr
         jNG+bAaHKIESKZ4cixxpJr6nyTMQyNouHuAubGOZEOjxDhvPrchP07k7bwltIB1K6gOM
         ieoYJPQV/V3MaMgOTJRK5EovjK5ckjQueMY2QnN6mBhO7N4BLvaLtzYUy3Cr9n/DLdZG
         YZIw==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788866777; x=1789471577; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yS8rKa8izzuK0oIO1eBx7aBDB0qwkdrUOXQlalIooyQ=;
        b=pUZwDvhbLcCtn0BGQD45o4iK2PawGkMqdNXa22yKgwKeND7WPrTrF+Hofu/u0eXqix
         5wmIaHxoBdNOr9yVOjT+ml6bvH1TEaL9ZXtmSl5pVEOBJ98cqELNa6wsJZ7e5ZP0hHMc
         WW8QO/2KAKqpwbeQ7DSpVjH7GpjR4KQ2T2/Ulu273U4LjVg4egknKqYCcYOnsy42WtVQ
         HLGtxSyfVtX/9WC/oBnDIwZDcQjRlkc4id9zJ/1U6XjBEHOaijPbeQXESglNlbUHozSj
         4U7CiQGpukILSOvDhLgn4plF6OmrCCiQ1oQG/yKpPpwzri6dLNj/ZGFXtGQZhiCFRu/q
         Ax+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788866777; x=1789471577;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=yS8rKa8izzuK0oIO1eBx7aBDB0qwkdrUOXQlalIooyQ=;
        b=J2oM/qsk+MCc/ixpNIXk8zG2h6y/7Kksnrih46T5K1NtdtOMKPXVSyI6+HloEqIC1w
         7uWx3De+R3+8vMi72ZRWsGnH9+KHg3E+PpCIuGjYJMFqTRZUn1q32dQBzalQPy7zuxtj
         FL3B7/O90G9ZsHyuYB+su/tWVMHRStGezpF8RokaEpqnx8Iul4ZCuEV/g7ijuVcdJ17j
         554LkLP5T+r9ia2NqBvq/5yPhrGCb2Kx93OBTzCV+1RdFZKi/uA0xhbWrHVeynSBivU+
         TNnABvoGlT6lLC8cVfUvl4u/TMk+APnT1l1iTchZllyaIq48s2QoBAz+041gbLhqhZLZ
         a/gw==
X-Gm-Message-State: AFuF++n0sjw3u/CadXZzRjE01bXx4VogtPnB8r/r8yVFW8pP+rFnF6Gw
	RlCAO7WrAskHSkqFbVSPs0Ks7TAyg8H/0/wnsHid6gK30cfnp58OMiudltLGgpzN2eZWrOVR+xD
	eDHtzM66fD6YDJ98XMYHek+wKiQiqJuI=
X-Gm-Gg: AYBFou2sf7PN+EbsfybL+t0BJFoEozNi9otAsZ/SqRo6mUqHKyRLCuUAeQqdqzWxlu2
	QFx0k+n+In9DNT0QhrRup/6tHXxZZRdmIIyIKTpcdGxt+GI+u8Lhhk/r1cUjkM1DFvl2vXFBgbL
	Xp22yLJgJzUOvuJGwOR3hjc1vT1RyRgWffg6HvlpEyD/hAlC9WBbUrx1Sh+9gTlUK+hWw0PgK5Y
	cni8W9GFEvLVk4Xft+bmt5W5iyvL3jFSHEvjOQpDBInr43hyu/wvK878eDTcwWQkA/yk0IaYNMP
	9Bn+UPIWUJMadMEo20mhQoxbLlU6oG6d10kFUwtJWZQhZg==
X-Received: by 2002:a05:600c:3b01:b0:49b:4d64:bbc4 with SMTP id
 5b1f17b1804b1-49cf81f1592mr483781065e9.8.1788866776548; Tue, 08 Sep 2026
 04:26:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh> <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <2026090810-yen-tablet-8843@gregkh>
In-Reply-To: <2026090810-yen-tablet-8843@gregkh>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Tue, 8 Sep 2026 14:26:04 +0300
X-Gm-Features: AcwNN1WtwsGoI3TFwK4oipqTV7wyVoeSRciWL0CtdaU7rcCmMVtUWjCrwZUXDws
Message-ID: <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Greg KH <gregkh@linuxfoundation.org>
Cc: ksummit@lists.linux.dev, istoppa@nvidia.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 8 Sept 2026 at 08:05, Greg KH <gregkh@linuxfoundation.org> wrote:

> If you don't even try to create something that can be upstreamed, and
> submit it for review, then there's nothing that we can ever say other
> than "I guess they never tried" :(

The problem is not that we don't want to try.
The problem is that the ways it can go wrong or in the wrong direction
are too many.
And the hope was that we could prune a good deal of dead branches upfront.
But I will try to explain it better a few lines below.


> But that's what we care about, working code that solves a problem that
> you have, in a format that we can discuss.

There are 2 aspects:

1. working code that solves problems that we have, but those are for safety
2. working code that solves problems that upstream has, for example
integrity and security

Here the proposition was about discussing #2 and see if we could leverage #1
Sort of win-win scenario. We don't really expect much interest in #1 per-se.
Not even trying to promote it, at this point.
Hence the more open-ended approach.

But you make a valid point, here below.

> I didn't see a specific feature, nor how it was implemented, in your
> email, just some videos which aren't really "reviewable" at all.

Fair point. For good or for bad, I got so used to interrogating some tools that
I didn't consider they would not be used. Sorry about that.

But it's very easy to fix =)

What we are doing, in a nutshell:
On ARM64, we are enabling per-core, per-function, selective transition between
different kernel memory maps, with different write capabilities.
Kinda of MMU enforced rings.
And we pair that with the ability of controlling memory allocations, so that
specific allocation requests are served from matching memory pools.
The same is extended to userspace creation, of course.
Scheduling and other stuff are involved as well, but I hope this gives
at least a generic idea.

Why?
For "our" use case (#1) we do it because we need to protect selected processes
and/or drivers data from the kernel at large.
This part might be controversial, but in a functional safety world,
the specific user process is what matters, and the monolithic kernel
is assumed to contain
lurking bugs that at some point will bite.
Unlike the security scenario, where a malicious agent is required, here
the simple assumption is that - statistically - if one or more bugs
are present, they will bite.
Given e.g. a large amount of cars (any car, not necessarily self
driving ones) circulating over
a large period of time, the number of failures climbs fast. So,
something needs to be done about that.

But what I was hoping to discuss at the ksummit was "your" case as in:
"would the kernel community might find anything useful in what we
have, to solve some of their open problems?"
This is where I wouldn't even know what problem to tackle, that might
be considered worthy.
Or I'd rather hear it first from those who would then review the patches.


> So, along with what Ted said, turn your ideas and proposals into
> something that meets your and your customer's needs,

We will do that. No worries.
But this round was actually about upstream's needs. Not (only) ours.

> I don't see anything "special" about your topic from any of
> the thousands of other new Linux kernel features/additions that warrents
> a change in our development process, do you?

"special" tends to imply "better" - in that sense, no, we are not special

but "different"? perhaps that we are.

AFAIK we have a few constraints that are not typically present in
upstream development.

The "special" constraint here is "sustained qualifiability", or the
ability of obtaining and preserving
a certificate from a qualified entity. Which is what is necessary, to
support business.

Without getting too much into details, in order to obtain a
certificate, it's not only about the development
process, but it is also about being able to demonstrate how the actual
code fares wrt defects.

As an example, one of the parameters involved is complexity,
which acts as a proxy toward the confidence that whatever analysis
done on it can be trusted.

In practice it means that not only we need to have certain functionality,
but also that the code providing it must be of a certain shape.
Which might not always be aligned with what kernel common practices expect.

As a practical example, the entire memory management we do not deem to be safe.
We work around that by introducing additional barriers and validation.

This might sound bad (and I hope it doesn't come across as
disparaging) but, in reality,
it gives us the opportunity of actually following upstream much more
closely, because we
do not need to put too many expectations (in terms of safety) on the
bulk of upstream code.

The price we must pay, though, is that our add-on code needs to be
kept more isolated
from the rest, so that we can claim that it is unaffected by potential
bugs that might be present there.

Again, AFAIK, this sort of constraint is not addressed by regular
kernel practices.
And even less supported by regression testing that might follow, once
a feature was merged.

We would like to discuss this perhaps "unprecedented" rather than
"special" situation.

Because, while it is true that upfront it makes things harder to
merge, it also offers the opportunity
of tackling problems like enhanced availability, or improved security.

E.g. write protecting certain (meta)data from accidental scribbling,
or preventing an attacker from
gaining read/write access to special kernel (meta)data (keyring?) as
soon as a foothold in the kernel is established.

For us, it's a side effect, because we would normally protect things
from the kernel rather than the kernel from
other things (or itself). But what we have are mechanisms. What to
protect/hide from what is policy.

Preferences about these targets for protection would go a long way in
directing the potential development for an RFC patchset.

With the caveat - as I mentioned - that the mechanisms introduced
would have to remain in a shape that
can attain and retain qualification.

--
thanks, igor
