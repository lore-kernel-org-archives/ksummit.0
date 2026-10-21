Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792610300;
	b=wkkoGGVGaq41XhIl4FxDozd+MFXYefSVIIcv9bY9OYIM1ctWnuYrFmJbds638WIlEDd+
	 WumVkqji3G9q4UIkXsmI/jY3V9M/BrIK+Vw3LuqYDdppMAYpYwxc77g+73RFt5Gd1OfMj
	 Iquc3T6VR2CKJq5o0fUuSXV7iBN2exLGNiNcdWEF3Y9lGUoVjZeJwY+NBymGSLyu5EgJ0
	 OkYMJVOUkzrVhqlL3Ayn6yh646BrFZT3mDh+wDREOtOA5glbaDVi+TbfXe/EcO0bUFx0Y
	 js7b5OXPEapQ+KhxBTjnDA+xNsB2OllI0qiqcjhy0GBIuz03paT7NZ3t0ALcrIOleUA==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792610300;
	h=Received:DKIM-Signature:Received:X-Forwarded-Encrypted:
	 X-Gm-Message-State:X-Received:MIME-Version:References:In-Reply-To:
	 From:Date:X-Gmail-Original-Message-ID:X-Gm-Features:Message-ID:
	 Subject:To:Cc:Content-Type:Content-Transfer-Encoding;
	bh=+WAg/a2wjM+HQnO+KN3z2uGrEVKlKJo7mwtuhKG4iMg=;
	b=0r5LcBLAh6h8ex13Pvt4G2R7ua0+pRLpiIAqXfqqM1uRSIPCzDBC/yOa/7WsATn6bP1W
	 p10Frf077FXB9QwhaqFkJbF95MZnFFZaj4H7UVJDVoDxPnIE/dAGYYm9jvw15kZIAN9to
	 8VzsyiUtMti/MM47GtbWPczDhh/9wukZu9MaQARnuna9Hjz6zbvAKmDgbE1x7zq6ZgKbJ
	 sphsCSCQytIRF9dY2EfF/yES+XZLpsMDwx7+balaXAwRKNGhH+5DFjl1O/8Bk9oH+nvE/
	 7V1+zuj8PrPZL8FXe+9QmuURkuZTxwsWn53lRXC6zVVLZmR37fw7s0/Wrw9nqGiboew==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=K0nUu0mK;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C850C606A319
	for <ksummit@lists.linux.dev>; Wed, 21 Oct 2026 19:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=K0nUu0mK
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EB241F000C7
	for <ksummit@lists.linux.dev>; Wed, 21 Oct 2026 19:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792610299;
	bh=+WAg/a2wjM+HQnO+KN3z2uGrEVKlKJo7mwtuhKG4iMg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=K0nUu0mKLJ6KU2LBpJkhrBnNU3DoLhGUC+/2yDa/NV3qU3x03i+QRyU1Fj8uynEjI
	 IRIzzOQmgsFFWK5envVok05icT4y40bSwXnf0Y5oXIfmTXOwt4W7joIxgmyi5ITxIh
	 VCvANXQDPG95NqT73nmdjbJUNlHicZSBmleM/A3qdt1aduhpahNVpl4g0iBe9Ii9x8
	 eHGzqRVYvUrknzHyeEj8n5Pjnd9z7AfqFWt/mtG18cnBWBi5U+K7pOS/Nd9ACo8F2m
	 27CpdIyVtub3hfJhA0CG2RSl4R126bh5erlch/+CCZos8oa1ViEYjbt0jdqMaPJGel
	 uFJ4YnbgCbWxg==
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5bce4e278baso338772e87.0
        for <ksummit@lists.linux.dev>; Wed, 21 Oct 2026 12:18:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBx4/NFD0gb/7sFPtXKaV2ukHeukpTlet3JrsL7PmQ9WmRHsmYAHiyMf3FZ/dHcBnHgblSX5xTIW@lists.linux.dev
X-Gm-Message-State: AFq9FYLipgI8r5KdBhDT8lvqp7Zg5F/NCHyXT7U9DSN3f8ZcfLQtGeWb
	1zYVL1gWYbPHymzTtKC0AdkOjCtkWHG1QWPhdXT1X/btOXXJkCxZKzal88JPkMfCMdJROXwP9DS
	daCzWXCH5h0GlD5W906MM9c8sn8ZhO6A=
X-Received: by 2002:ac2:4c4e:0:b0:5be:5994:7b8e with SMTP id
 2adb3069b0e04-5bfa729d647mr62859e87.16.1792610297927; Wed, 21 Oct 2026
 12:18:17 -0700 (PDT)
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
 <atO3pCuUxI950ftN@mit.edu> <3354ebda-5158-489b-a577-5cb10e5d5fb0@oss.qualcomm.com>
 <atZ4J86j7CXF82HX@mit.edu> <2fef166e-088d-4ffe-8d0a-0143aebc1b26@acm.org>
 <ate8oESqneK-3sQJ@mit.edu> <7e473af8-2f7a-4a36-a926-e756873c9c52@linuxfoundation.org>
 <atic3bbDeyJI6MJs@sirena.co.uk> <atjlUoEmTagZjrYI@mit.edu>
 <atjpS__OwjZ-Q_Fh@sirena.org.uk> <20261021114524.4c2ea2a31a9d527b78e78768@linux-foundation.org>
In-Reply-To: <20261021114524.4c2ea2a31a9d527b78e78768@linux-foundation.org>
From: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Date: Wed, 21 Oct 2026 21:15:59 +0200
X-Gmail-Original-Message-ID: <CAJZ5v0gKnRFdJQpP6SP5buNb2ikv7WqKBJLgrVy5mQVZxyxd2A@mail.gmail.com>
X-Gm-Features: AclHuK9UJK4aZlKjABWPtlBhu5xhlxku8llJbfp_5y7BRDeWB59U3M9AN_TK5Ig
Message-ID: <CAJZ5v0gKnRFdJQpP6SP5buNb2ikv7WqKBJLgrVy5mQVZxyxd2A@mail.gmail.com>
Subject: Re: Patch pre-submission to Sashiko
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Mark Brown <broonie@kernel.org>, Theodore Tso <tytso@mit.edu>, 
	Shuah Khan <skhan@linuxfoundation.org>, Bart Van Assche <bvanassche@acm.org>, 
	johannes.goede@oss.qualcomm.com, Jiri Kosina <jikos@kernel.org>, ksummit@lists.linux.dev, 
	sashiko@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 21, 2026 at 8:45=E2=80=AFPM Andrew Morton <akpm@linux-foundatio=
n.org> wrote:
>
> On Wed, 21 Oct 2026 17:33:15 +0100 Mark Brown <broonie@kernel.org> wrote:
>
> > On Wed, Oct 21, 2026 at 12:20:43PM -0400, Theodore Tso wrote:
> > > On Wed, Oct 21, 2026 at 12:07:09PM -0500, Mark Brown wrote:
> >
> > > > TBH having seen some LLM patches that come with LLM generated testc=
ases
> > > > the testcases are much worse than the patches themselves.  Open cod=
ing,
> > > > weird structures, asserting bizzare things without explanation - ju=
st
> > > > generally really hard to understand what the test is trying to
> > > > accomplish and why.
> >
> > > I recently posted a patch[1] to add KUnit tests for
> > > fs/ext4/extents_status.c.  It was completely AI generated, and used
> > > these instructions which I gave to Gemini Pro[2].
> >
> > > [1] https://lore.kernel.org/all/20261021031231.40107-1-tytso@mit.edu/
> > > [2] https://lore.kernel.org/all/atbZWze194QiSOTe@mit.edu/
> >
> > > I'm obviously biased, but it seems to me these test cases were pretty
> > > good.  I'd appreciate criticisms and suggestions for improvements, bu=
t
> > > if your experience is test cases written with older models, the lates=
t
> > > frontier models have gotten way better.
> >
> > Yeah, it's not that you can't do it but rather that I'm nervous of how
> > much of a useful gate it is to require tests - my general feel is that
> > if the commits have problems then any associated tests tend to have mor=
e
> > problems.  One example I reviewed earlier today is here:
> >
> >    https://lore.kernel.org/r/ed22ebf64ed00a56d5e1eff31ac639fef00dcae6.1=
792179433.git.ivanrwcm25@gmail.com
> >
> > which will get the issue it was looking for but isn't something I'd wan=
t
> > to maintain long term.
>
> If someone's fixing something I don't see much value in
> retaining/maintaining a test case for something we've already fixed.
> This is considered good engineering practice but why bother - we fixed
> it!  Move on.
>
> It is good to see testcases during the fixing process though.  In these
> cases I prefer that the test code be included below the --- with a
> brief mention in the main changelog.  So interested people can later
> chase down the Link: and find the test code.

Exactly my thoughts on both points, thank you!
