Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6173AAF40
	for <ksummit@lists.linux.dev>; Wed,  9 Sep 2026 07:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788939889; cv=none; b=C3jwWguAwHZmxokpNPWinp3fdZNRW7XBhPqTUJitGWYcDEPaib0wytuX8cw9KKseDMh4zVjhOpX1327M9hO0PxU6fCBSi8bS7QAqFoZKs0XnaA8ONvpcH7J1JYLdxSfHrOhAQ09kilAezj8PUzoG8TTeR5wgbmorXQQ7mj0Ny1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788939889; c=relaxed/simple;
	bh=ATkR9O+k4Ap1r5F8cg8Y7Z4P7V6yjISP1QsHNi+lszA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GRoINx6bda4fsO+UlEaVSHRV9iVkP6LqM2AgHaadTQsyLym+RC5ug4NMZQRkyE4nL7w9rWvuh4k+vqJPE21jKGdsTv4XTNf4L7GrePd8iT/i0GzD5LF1wExpj+ATY5cp2cJP7/QGmrEp97WVeNQXk3KkDa9Q5aMF5B9WV8ZOt8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LqCyxiLt; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LqCyxiLt"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1788939885;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=ATkR9O+k4Ap1r5F8cg8Y7Z4P7V6yjISP1QsHNi+lszA=;
	b=LqCyxiLtFnuToM164ecTF358QhXVkpCGa/pGQthUUpKC2d5BsyNPPtmMHbAgnpfyT8eMTD
	idSw254GQUNpSejezXE3i9DavuTc2lZI50gka4ZxBGkv25pOJ7qy8BXUrhtTKCFAHVi3qk
	2Ygb/+Bt/UbUfma1Tv6qk3NCVYgwLv4=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-663-6AfiyDCsMKSB-KYZUDkoiA-1; Wed, 09 Sep 2026 03:44:44 -0400
X-MC-Unique: 6AfiyDCsMKSB-KYZUDkoiA-1
X-Mimecast-MFC-AGG-ID: 6AfiyDCsMKSB-KYZUDkoiA_1788939883
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-48589603501so3389346f8f.3
        for <ksummit@lists.linux.dev>; Wed, 09 Sep 2026 00:44:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788939883; x=1789544683;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :autocrypt:references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=ATkR9O+k4Ap1r5F8cg8Y7Z4P7V6yjISP1QsHNi+lszA=;
        b=oz80RH3k3hkcfnGnvozgz7N8/F6v0qsR/s7KhWybsSfu4EWqqAGiuFnF8977mJz9hx
         e/MqKwhwdrCKh6wRkZo0xm4YlYEH3iLgpA8QRnUGl+lv6FjAjxkd6epSalUoJFcNfc2v
         fbrIRJ5VRXPylGPjxCtRA2kA8jhsQkx7dftPqX5cWfooWOincDjKTwpN6Z7FC9MuAXOM
         umq00ikRMyAA9U/lMoNHSQoeorTHSq3HEg8E82ysUlAqIjSiwCVAMgDw5GMgnKhDAtX9
         zUzVKuLVqXI9gZkGtMkSoDZh6ldZ40Khpw7QUEtB6YcG4iwdkMTA05ML0wojFLilrNE4
         eXeA==
X-Forwarded-Encrypted: i=1; AKwUvByksgPyPv34cYy78Fx1e2y2BDS7HGOh1s+hHgus90bHkPBXJmN1VYR+faFRI5sTVCMRZCf+l02i@lists.linux.dev
X-Gm-Message-State: AFuF++lP/Y5WLkp0+LizFMJOPNXG2+PQueOLk6lAeJybROHkurt7rFku
	Dzfx0OsrSe0/kY7ghMuZLjb93OGYxkvSDNx1d4EdAA2kh9Ci9wrygfarI4S1uqUjapUysML2KFE
	/vwS8ZRFvdfPNGNCUwvro1UgZjY40QNEOOxALgCxfaBEc8QU3qwSST/xkn74=
X-Gm-Gg: AYBFou3CTNH1z3UMhBw6ocmpuEgu49zJKGeZ+zbUJ8T+Uaej8xZrfDmcl9f9uz0H+Mk
	Ct7Zu9XYpBlLV3AeNa4KtQCBKLCBTeu6aKJMO9KojMp6VccZikMG0B9fDw4g70yt7WCWxcdBlS3
	CMoj/iP86nKVlKWnI/jd5HUyz/XXENe0V3dm0sSmoXgFP3qXfYWMWHv+/Z8q0wvO2yePONkafOT
	fI88bJbnY3ZXVSr4XTAIygvaHCtDKHuZ+7Qn/B3vpqtPpHJmYFu41bDw3OUWnci7kaX9yE1TECW
	CqKFeOIcU7D/80kY7ROXXws9QL1Q4H8QEZ9B4+OXIqEMRt46xkEy20VfqdG5gWZUTWtTDq10SeM
	kqWqI6Um0vFg3G/CNWZTKvyD5Jabm6g==
X-Received: by 2002:a05:600c:3ba3:b0:49d:e79:612f with SMTP id 5b1f17b1804b1-49d0e79635amr184956515e9.26.1788939883054;
        Wed, 09 Sep 2026 00:44:43 -0700 (PDT)
X-Received: by 2002:a05:600c:3ba3:b0:49d:e79:612f with SMTP id 5b1f17b1804b1-49d0e79635amr184956175e9.26.1788939882682;
        Wed, 09 Sep 2026 00:44:42 -0700 (PDT)
Received: from gmonaco-thinkpadt14gen3.rmtit.csb ([195.174.135.130])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d1fb02bffsm31878295e9.0.2026.09.09.00.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 00:44:42 -0700 (PDT)
Message-ID: <7d1c7f9677b6c5e9abec4d1ebc7c83cbdaa3e1ad.camel@redhat.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
From: Gabriele Monaco <gmonaco@redhat.com>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>, Steven Rostedt
	 <rostedt@goodmis.org>
Cc: Theodore Tso <tytso@mit.edu>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>,  Greg KH <gregkh@linuxfoundation.org>,
 ksummit@lists.linux.dev, istoppa@nvidia.com, Kate Stewart	
 <kstewart@linuxfoundation.org>, Gabriele Paoloni <gpaoloni@redhat.com>
Date: Wed, 09 Sep 2026 09:44:40 +0200
In-Reply-To: <CAH2bzCR3_DJOuW+jfkH7tkx-j4KbPJHVx2k2Z6X=+vaS6rmqng@mail.gmail.com>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
	 <2026090747-carless-trio-ae92@gregkh>
	 <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
	 <ap-AmsGgDNFYLlw8@mit.edu>
	 <CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
	 <aqARgWGWYG5kZW9g@mit.edu>
	 <CAH2bzCSLiyJbJD4dUiCRE192A44Qw9B01vn-oA_6=foi2j3iuA@mail.gmail.com>
	 <20260908152921.3c90bdfa@gandalf.local.home>
	 <CAH2bzCQYFDvUXdUwE-vS03=QSqO9TuYdN+=kdrYGhL+ttw=BOQ@mail.gmail.com>
	 <20260908191440.65efef15@gandalf.local.home>
	 <CAH2bzCR3_DJOuW+jfkH7tkx-j4KbPJHVx2k2Z6X=+vaS6rmqng@mail.gmail.com>
Autocrypt: addr=gmonaco@redhat.com; prefer-encrypt=mutual;
 keydata=mDMEZuK5YxYJKwYBBAHaRw8BAQdAmJ3dM9Sz6/Hodu33Qrf8QH2bNeNbOikqYtxWFLVm0
 1a0JEdhYnJpZWxlIE1vbmFjbyA8Z21vbmFjb0BrZXJuZWwub3JnPoiZBBMWCgBBFiEEysoR+AuB3R
 Zwp6j270psSVh4TfIFAmjKX2MCGwMFCQWjmoAFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgk
 Q70psSVh4TfIQuAD+JulczTN6l7oJjyroySU55Fbjdvo52xiYYlMjPG7dCTsBAMFI7dSL5zg98I+8
 cXY1J7kyNsY6/dcipqBM4RMaxXsOtCRHYWJyaWVsZSBNb25hY28gPGdtb25hY29AcmVkaGF0LmNvb
 T6InAQTFgoARAIbAwUJBaOagAULCQgHAgIiAgYVCgkICwIEFgIDAQIeBwIXgBYhBMrKEfgLgd0WcK
 eo9u9KbElYeE3yBQJoymCyAhkBAAoJEO9KbElYeE3yjX4BAJ/ETNnlHn8OjZPT77xGmal9kbT1bC1
 7DfrYVISWV2Y1AP9HdAMhWNAvtCtN2S1beYjNybuK6IzWYcFfeOV+OBWRDQ==
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6bhSdtwbDqMfeAZQ1Z5Qb8ACQjyqmJhSlgUYtcLT7mc_1788939883
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2026-09-09 at 02:48 +0300, igor.stoppa@gmail.com wrote:
> Monitoring is a way of doing it, yes, and I am familiar with the
> runtime verification monitor.
> We actually did consider it, some time ago when we were feeling the water=
s.
>=20
> But it won't cut it, for most practical safety cases.
>=20
> In order to detect a deviation, first of all you need to be able to model=
 it.
> Modeling it adds extra complexity and detecting it adds overhead.
> Even if minimal, once it starts to be applied to potentially large
> targets, it adds up.
> And that's for the drivers.
> If I have a SR (Safety Related) process, it is still exposed to interfere=
nce
> from the kernel through the linear map.
>=20
> Adding monitoring to pages worth of data used by the process would kill t=
he
> system (and I'm intentionally leaving out code, but that's exposed to
> interference as well).
>=20
> The humble MMU is the simplest and most effective way to protect things w=
ith
> minimal overhead, once one has in place the support for individually sele=
cting
> which memory map any given kernel thread needs to use at a given moment. =
And
> for marshalling allocations so that SR data gets backed by pages that are=
 not
> writable by non-safety-qualified code.
> We happen to have it.
>=20
> The other problem with these sort of readily-available components from
> the kernel is that usually they take freely from any available API (and w=
hy
> shouldn't they, if it is compatible with their intended purpose) which le=
ads
> to a dependency hell when it comes to qualifying the code supporting safe=
ty
> goal.
> Because they would pull in more than half of the kernel.
>=20
> Qualifying rigorously a single kmalloc invocation would spiral into endle=
ss
> work.
>=20
> BTW, "qualifying" means reviewing the code and analyzing it and "proving"=
 that
> it has no bugs that would be compromising the intended safe behavior.
>=20
> Frankly I would never even entertain the idea that we could seriously
> claim to have done carpet review on the kmalloc function call graph and p=
roven
> that all of them are safe.
>=20
> So, we intentionally limit ourselves to having, as dependency of our
> custom fences, only functions that are simple enough that we can honestly=
 and
> credibly claim to have reviewed adequately.

About this last point you make, RV was originally designed with this specif=
ic
idea in mind. The simple Deterministic Automata have very few dependencies =
and
the code path is as simple as possible to be verified.

Monitors can, optionally, add more bells and whistles like timers (most tim=
ed
automata) or a dynamically allocated hashmap (per-object monitors).
Those are not even compiled on monitors not using them.

There is also Linear Temporal Logic that sits somewhere in the middle, with
slightly more complicated code but still few dependencies (bitmaps).

Obviously all types of RV monitors rely on tracepoints, that's how they att=
ach
to kernel code and it isn't negotiable.

You may be aware of it, but the issues and requirements of RV in the safety
domain was discussed in [1].
Whether RV can be made free of interference to fit the functional safety us=
e
cases is still an open problem, though.

And of course, as you mentioned, in some cases RV just doesn't fit the
requirements, but where the logic is complex for hardware-only solutions RV
could help, if we figure the other issues out.

Gabriele

[1] - https://github.com/elisa-tech/Safety_Architecture_WG/pull/14

