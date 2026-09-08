Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D99828DB54
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 13:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788875563; cv=pass; b=aiDCSKim/xTdpFGbDIsRKP7gK+oH4LeM4v9FIXlZb1FvNoXviZ7bCFvGa33ntNzz0ziYknS3oj3iGx1K9kpLrrXjy8W0VSYA/fqAFn47SQhJjjla5GILoeEA9zmGeDcnFocl0BnNePTQfpzjZURb4qbpSX3b7OemiBLeQSi8X4Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788875563; c=relaxed/simple;
	bh=5sHfhg0shQQMQPQI1MTBtThfb4gch6j0Jx37VUH5G2E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Jdu0RmhwPMk7ivMvn8tkwcxUHr6riiqU5CNlUhI3ljeS7q40OKVEpR41WfZYyGF1hN2jodz7pNd8jWNQuxgY+66IKDx7Mkpkc+CkDH9CZOgD8608CBbskO/G0hCoMWt/43BeD65XChdEYEbha0NCUxWdIPrhM9SqDO6veUVTkbA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j77IMimI; arc=pass smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j77IMimI"
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-49557167508so55642115e9.1
        for <ksummit@lists.linux.dev>; Tue, 08 Sep 2026 06:52:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788875545; cv=none;
        d=google.com; s=arc-20260327;
        b=pywHRWN+TdmW/lFnkRpgpB/70YJNNADOrgmqmNpq6ArB6kQ/io1dI1XpFjwhGeeLFF
         S8zO2lKAjH4HmcxEXJ8CyYDgABFjKBMwffKB+WPH5mrk1wVE26Y0LHSYc0QI/TXHxll2
         /2I8OFgEt+b/EPCWC/n6Imn9pCyXKSclIc8y+4+z0NUm1LuCj9w++QDjPuiBXhLGNqNM
         004KXNCg0dUgNqtRP07lb9d4i2Hqivi7Mkj1tDXIK1mfuui93pD2qLUUT6aNHVGgELYd
         1Y8IKhzC4hFP56dQGUmk2dS4zP82pV1IB6oC2vRxb4JuIIU5DRGdgawTP9NjQvJqVm2S
         24Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O2qdEJfaJlTwoWQHTHSPudcKMpf2WlXTghlSz1QO4k4=;
        fh=WnmC9wNr64Q9KJ/f+MJf6S7o47suBDSQlzdwEGD5m3w=;
        b=PJ5oKx8LW/XTAJaj9SoQg5mcaSHk7PiQiif5Kww+lYGEvUCg01x5hlGvBwCOA02VyI
         Ls6GIceN2eyXDT4R5ALhRWT783xPdaKxbV/6xnhXJNy7mqMKIBoNZKrl6qZjgqSEpru6
         LinzvP2K2ztTtbafZQJYOwEnivKQb4hXP4WHdRoKq8OFd3qhjsNGvk0Fcy6x9mjFSt6Z
         TMITJztgdLnYHbD+hJz9ShdkCtevTKmTViIKGYbPdfRyRLFQnERcPF/qCIOrnIP15tIj
         4PnwYDnyzwQBegaR8SnP0/TapY1AOzxcnIscKUxS1MyJ8PAss3TEH3JvU678xV74W9FL
         /Bhg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788875545; x=1789480345; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=O2qdEJfaJlTwoWQHTHSPudcKMpf2WlXTghlSz1QO4k4=;
        b=j77IMimIhQ+I1kSliXsH9Tm9yjKuPW0mXnbxNQuSyOlm9FO/JvrwiPlK5piot6UdkG
         9jmBzYoqLVLKzfgbi1Yg01u3BQaCaIXsLuipxI95g3+Iwmtx6WUnF4YVPT2lerVy6lRE
         gg+nqFgeK/qamBTKvtEURfLegf13qWyzDcIythtijJHbjKP5kuTwtqQX6HPHazLmUgfP
         5nUc0imkf/jW/JgcPTeJmdmxg3Gyp8NkOAKLb0fJOu4IgdDNpSQa8Q2XPbK1eOwh/Ya2
         eaCz2kok1T+2DphH18NSSK5SBPuuzon7JjO8OnjJonDw3GfEppKDj5LtNzM2yo4UL90V
         1cvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788875545; x=1789480345;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=O2qdEJfaJlTwoWQHTHSPudcKMpf2WlXTghlSz1QO4k4=;
        b=oxH1LwIbRGM3fGxOKoRSczYKkiodpt5MMweKAOy/wpHZdRG8RJDedSxdY7BJpDadGE
         4K/11l4h9C4e2WXfCS4qufnbPoiSACNqz3t4RKpGTlS7pVIpztyRJkcnm3J5hOpg8Gyq
         hHQMmBmpYSMhcWfzRnVmm8dl5MQwZ/y0SZ/9g9Yi1/ooaE6Y6G9xyS2x8MMfMC48pgy1
         NRfOd7biNykMHX4xZql40gkHZ6w61XrA+hWo5cbwZpB5+FZCch2xIBBloaRrmZ5n+7Gf
         CSOijCGn9A48GF8fHHLXOpH8tFfrrcwpIM+KlWycKiahaoCxFfWpuxfPGHfBb72yujar
         eDWA==
X-Forwarded-Encrypted: i=1; AKwUvBxYlTec0AuwPUM5wzfZ7MKEzbHvB2ygT8EWpPYu7KVWIkGeqzPihLX31CQlsGmoAc4/zfNwQM0J@lists.linux.dev
X-Gm-Message-State: AFuF++mSF31MJA4aldmg2+u9btRKVQX7q3RJNSH9qVrHiZDZ8ZZkvUkG
	16s+pO1I16RGZRmqIWPEqEAj1W0W/23D7VTX9TEpq1pga5UXhnDCQg7UJ17GOAZ+VfyLn4ObxVE
	AfWTglboqwhd+uQVKXkvq2kxBQNMaeD8=
X-Gm-Gg: AYBFou3T6GFHydBm7A1dBPiGc6Mb7dB+LHvek2RDYzLIRRyRtD/IFaATpufaK+JMdR8
	nE/Ysl4KtgphVHgBYrg1NarR/aGg6eEmoBlFHmJnYZ3aqsRJ8Wwf4KGIz8cQoD2xWrWLHNoxmky
	mC4aXjYvNyLHUbaw6cqPQ9h9Vrf69S7pKWv31kQgFrpZesJhcS3tXqGxvKhFBtQHHhkHhbclFri
	dYsZcE9yAptB2vk2wWgj4U/3f/QSbnMsMaa9nfni0lw/HLbP8Mq4sBPz1rVzR7yJOdxOX5hDgQc
	o8ZzTFSzZbOocFWNcBDaaz5gRlJbW78lfhyATAiOy21Ctw==
X-Received: by 2002:a05:600c:4712:b0:499:7a15:fcec with SMTP id
 5b1f17b1804b1-49cf8248cd3mr481342065e9.13.1788875544362; Tue, 08 Sep 2026
 06:52:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh> <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <2026090810-yen-tablet-8843@gregkh> <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
 <2026090825-scallop-pushcart-830c@gregkh> <CAH2bzCS_LHff_RLyYP2bKAmJOZEJNBJyBsZKnG6E=7JRDLjLng@mail.gmail.com>
 <CANiq72nep9_Cd7CcgrxNehN=-ZETZRjsQzJnSR9MV3B_R3khJg@mail.gmail.com>
In-Reply-To: <CANiq72nep9_Cd7CcgrxNehN=-ZETZRjsQzJnSR9MV3B_R3khJg@mail.gmail.com>
From: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Date: Tue, 8 Sep 2026 16:52:13 +0300
X-Gm-Features: AcwNN1XM4kr9RgwQ9BJJqVbT1l4GEeAJykIEteKNIYmIg4W8qqkZZi_J5r7PQe8
Message-ID: <CAH2bzCRTnb+A=HLhFzENBgFgsyjJ91sTLyOoxPgtFjhv+Gjcow@mail.gmail.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev, istoppa@nvidia.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 8 Sept 2026 at 16:11, Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:

> I think what you are trying to say is that your process to retain
> qualification would require some changes in the upstream development
> process (even if we assume the code is merged). Is this correct?

In a broad sense, yes.
The actual development itself, no.
Nor would it entail any generation of artifacts.

Many safety-oriented approaches have tried to steer upstream processes
toward safety-oriented practices. With little results.

We don't need that, because we simply put the portions of the kernel
that are not safety qualified outside of "fences" that they provably
cannot silently cross.

OTOH the fences themselves are what needs to be provably safe.
So they must meet various requirements about complexity, etc.

The change, or rather extension, would consist in broadening the
concept of what constitutes a regression.

Presently, if a new patch introduces either a vulnerability,
or a regression in either functionality or performance,
it gets rejected or at least it must be fixed accordingly.

We would need the safety-qualification criteria to be added to the list of
properties measured and preserved across releases.

> It is
> at least what I would expect, just guessing from the little bit I know
> about functional safety.

Yes, you  sort of hit the mark, but in reality I have a feeling you might
have been expecting more draconian requirements.
One of the advantages of not having a purely monolithic kernel anymore
is that we require less cooperation from the subsystems.

> If so, the issue is that you will have to convince everyone else to
> adapt, at least around the relevant subsystems.

It's mostly about tolerating the fact that the fences will be implemented in a
sort of self-contained way, and they must stay like that.
Adn recognising it as a regression, any attempt to change that property.

> It will be hard, and
> you will have to be quite clear on what you are aiming for -- it is
> unclear to me what you will exactly need. For instance, will you need
> the kernel to run a certain process before every release, or to
> maintain a traceability matrix of some sort, or...? Will you do all
> that on your side only for certain releases instead? etc.

Ideally, the kernel could become safe out-of-the-box.
Once the code is published, there is no value in retaining a standalone fork.
It's mostly a necessary pain.

> In any case, before any of that, what you are being asked to do is to
> show what you have so that maintainers can understand better what kind
> of changes (on the technical side, not the process side) you would
> intend to put on the kernel.

Yes, it's a bit of a chicken-egg problem, in the sense that not having a clear
short term visibility on even the possibility of said qualifiability takes away
momentum from any public work.

We will get to that point of publishing the code, eventually.
At the latest, when the forked tree gets published.

> That will likely clarify matters, and if
> the technical changes aren't suitable, then there is really little
> chance to even attempt to adapt the kernel development process for
> what you need.
>
> I hope that helps...

Yes, thanks.
Having the technical aspect behind, what seemed more problematic was the
normative side. You mentioned you have fusa experience, so you know
what I'm talking about.

-- 
thanks, igor
