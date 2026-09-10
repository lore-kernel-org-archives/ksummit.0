Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD3C229B12
	for <ksummit@lists.linux.dev>; Thu, 10 Sep 2026 10:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789035063; cv=none; b=MZu/LtIHRXrBQvgQBO1ltHsVmrE5I/oyw9Gq46DaDzser7KKCVYgHTKHGT400OjsUMRupLaYmgCQ1y4oKo0EcMgEt2PNk5OY59YgHwyu7iJyax3F+Pc96UU/vn689CgWz9qXn76+wgNU6ykYA2gVQScfpi0woPkTEwywnShPBdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789035063; c=relaxed/simple;
	bh=9KjQ8E07GlNNCdB5z7Hr5JHFBbe7f04i7aaJZfeDM5A=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qHTeokjpZ/0elFPjo+xyId5UMwJ1nD2jk7Fs7kb37ur4fTHeHMOb7vFkwdr2kSiMzLzThHXogcvdE8ifK1+HQ+XQa3E7r4NXOoWtwSb61P7fvCGgLQn/Ho2b91jz2mUGBaSQ3kSHTc9l68FZL+kgMHEpQ4OZA5yLDFgA2AsId9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WdKOMpKg; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WdKOMpKg"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1789035058;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=9KjQ8E07GlNNCdB5z7Hr5JHFBbe7f04i7aaJZfeDM5A=;
	b=WdKOMpKgCBglXdxp9mKpHKBvBsWNjGdFX5gFCh8DrtoQTBM+joRYzZW+tMcOrQz4nZNq7F
	62FY8rv7fDKq3GBsAmJyZy/loZcglojrCkM9pddCKjSP8WqdjP3qPg2NRkAeUpNZilQ4ZK
	sGPL1ny3w84MKhrqWEwKDYAM+QFVyGM=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-658-4yaUQCASM-CsMOhf3G_Onw-1; Thu, 10 Sep 2026 06:10:57 -0400
X-MC-Unique: 4yaUQCASM-CsMOhf3G_Onw-1
X-Mimecast-MFC-AGG-ID: 4yaUQCASM-CsMOhf3G_Onw_1789035056
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-c255e9a2282so564170266b.0
        for <ksummit@lists.linux.dev>; Thu, 10 Sep 2026 03:10:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789035056; x=1789639856;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :autocrypt:references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=9KjQ8E07GlNNCdB5z7Hr5JHFBbe7f04i7aaJZfeDM5A=;
        b=b1jeg3VIZC/qK1svet9YuZ+4avsz6qGvPef8UcyEf02d3iDuvTKDKZC8dhf8fw7uds
         X8tCb+CswZB3kZBI2oJ4DuJskx5X9cII2hqY4GMfRGTvdP7shrWMcNaeCM7fzHToKdDW
         QShd2t7eDlCaPZOrNtczoi4W/BZuSJ0jsQ3tfBm+adDhL8vUFx3Cr2+N2nbBgIyHU/Yo
         kP+FHyhKbqyUm/A0Lyvt99Eonoo3PiZHVXwfO0Gfty9Xsl6+MlH923IDJ1O9MUgF/ikj
         ZCizGCvOYzhhFrZ1982QA1fcXdgr8LYS8/zNENec0OwaUgjdA+D0R/bGqevUjKn8d1Q1
         U86w==
X-Forwarded-Encrypted: i=1; AKwUvBwOqj+h4BjSudEJzwAQlwIevqnwnZHFELri7lEpQTR4OqzhHfGyG966LLmWn8+Ypp3+buMAzkvx@lists.linux.dev
X-Gm-Message-State: AFuF++ndvSar8NClzLcXDFtZUgtISO+KKRVfKIbQT6sjFu7y0HZAupqt
	vam6DDQWcfE0CnPOHiYccARr7XjltDZrJgvAMG53kBn1Ks80dGaCxGQxL++PlIRviuaJZ2czuOx
	TI2hffpN+lJKJZDp1104LtUQcpRE25kaSjsVknlPyscs0nX1C3K8DZB46QhE=
X-Gm-Gg: AYBFou0KBsVLCxIJ1m2u5C4wwflrLMyfPcYb7hV5hbMMh8qsF8IEXf8scU1RQPjy/5w
	MgHXkqYHzB8EeK6LpiTyRSxeFs2fCUz81+QZEyr6A6M92/MxmmfckAR34dVmFAqMKFlQV7dvrqu
	xQxzkwA73YhFrqO4wUfPfyd83F5EHUFu7zxIBoZ0HAMmunAkjXxZaaQ37uoT5sQXxadyoeB+x9J
	/f2q0tMrTolzDnIVQZmPSUilRJbKUpXm75nltnW5T2a77bQh2qTqnYjUDj/f6K+MKkOi1rieOWr
	4pakf6U4mZ0NLqeAog9fADqXkx+hpkpVKRZhAzyW2fsU0onu1p7meCryN9FtjwzGzFNe8G83bXU
	Kv3YvpFvaU5YppCe40eDQe9INj0qiew==
X-Received: by 2002:a05:6402:3789:b0:6a6:32f9:e9ee with SMTP id 4fb4d7f45d1cf-6a99cd157f5mr4835808a12.17.1789035056028;
        Thu, 10 Sep 2026 03:10:56 -0700 (PDT)
X-Received: by 2002:a05:6402:3789:b0:6a6:32f9:e9ee with SMTP id 4fb4d7f45d1cf-6a99cd157f5mr4835776a12.17.1789035055597;
        Thu, 10 Sep 2026 03:10:55 -0700 (PDT)
Received: from gmonaco-thinkpadt14gen3.rmtit.csb ([195.174.135.130])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a995a42765sm1992278a12.27.2026.09.10.03.10.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2026 03:10:55 -0700 (PDT)
Message-ID: <a8e733d2c5dfa78fbe45a7d82e502788f4c4cdba.camel@redhat.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
From: Gabriele Monaco <gmonaco@redhat.com>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Theodore Tso <tytso@mit.edu>, 
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Greg KH
 <gregkh@linuxfoundation.org>, 	ksummit@lists.linux.dev, istoppa@nvidia.com,
 Kate Stewart	 <kstewart@linuxfoundation.org>, Gabriele Paoloni
 <gpaoloni@redhat.com>
Date: Thu, 10 Sep 2026 12:10:53 +0200
In-Reply-To: <CAH2bzCRvGGi_WS4j-5jeWU2uFrFWy_s9ZtMrcT5r+QY+=UdP4w@mail.gmail.com>
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
	 <7d1c7f9677b6c5e9abec4d1ebc7c83cbdaa3e1ad.camel@redhat.com>
	 <CAH2bzCR_hwxVbH-rfUHzj1-70mU7SkRY=3OgHEe7om5kZ605sQ@mail.gmail.com>
	 <9b3e9c8cbdfd657323467079d397792c1ac8959e.camel@redhat.com>
	 <CAH2bzCRvGGi_WS4j-5jeWU2uFrFWy_s9ZtMrcT5r+QY+=UdP4w@mail.gmail.com>
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
X-Mimecast-MFC-PROC-ID: RZbIygi81dte6TLvdocCUc3rRtjLdZ5NEDhkTcp1ggc_1789035056
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2026-09-09 at 19:07 +0300, igor.stoppa@gmail.com wrote:
> On Wed, 9 Sept 2026 at 18:22, Gabriele Monaco <gmonaco@redhat.com> wrote:
>=20
> > In general I feel anything that tries to validate the kernel from the k=
ernel
> > itself will have this kind of problems. It cannot really be isolated fr=
om
> > what it tries to verify.
>=20
> Well, that is where I beg to differ. We have implemented such a mechanism=
.
> But I've been repeatedly told that I should provide first the code,
> which right now woulnd't really help much, because it is far from being i=
n a
> reviewable shape.
> So I won't get back there.
>=20
> You can look at the references from the root mail in this thread,
> or we can move the conversation to a different place, if you want to
> discuss more about it.

Right, I didn't think I had access to the entire conversation but it's all =
on
lore.

Now I remember, you discussed this at last year's LPC.
RV is indeed not quite a fit for this.

I'll be trying to follow your presentation this year. Also a BoF on this so=
unds
interesting to get the ball rolling.

Thanks,
Gabriele

