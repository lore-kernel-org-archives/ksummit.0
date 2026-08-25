Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CE43E63B2
	for <ksummit@lists.linux.dev>; Tue, 25 Aug 2026 09:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787649795; cv=none; b=BJ/FZAIzu06Hich8uoGSQcL+UI5y8xXAyq8+z2Qb5Ka2iPlpX5CcWEytJ4bjrAgXG+FYX0lEZh2dML3cxGeQEUvjFrAUzN3C1/trX4vPCAV34QIrl1CaIKkmBUDOHOCQQnxXVTcx+wgXG63R2KEq8JrtoeSAdRB1U91mH6zfbi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787649795; c=relaxed/simple;
	bh=OdtyIaUquOmAEJcOSQTNn5PmcZNeDFtguVHqT9/uYdw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KS6ZSjS28iFfb7O9s95adglq2hGoB7SzkJwLAZ6vpKG1rJfyKmwkM0g/5dod52gxeq2/Sb+25+Bm9TFAU5a12WIsu0fiJGGJul2ao0A1JKbd61H9Wp/xVaclaDx4W6ctIrMnMnruFOCyI+TP+VZQzmC6CiT8VruW/5SV09MpxKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=NJ5yx5h2; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="NJ5yx5h2"
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-c167aa9500dso686344966b.3
        for <ksummit@lists.linux.dev>; Tue, 25 Aug 2026 02:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1787649790; x=1788254590; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=XX5K81ve7+LZjWOS81IJEJu4RVfjdI4dGeLBPWUtyo4=;
        b=NJ5yx5h2KqNJtU2iaS4Bgqo1tD7K63eREgPMmipV7axEtZlJsfKk2ZFSAUcps0QIQl
         Cf7EGWiY6IB/rq66HLkd2rcat3OXuVmMRHsObU8n6/lZFm4Hz1tqMyAxkDFyQWBCFUbv
         uyK2MBKrkaZlnq80vdQ8V1NAJIEc/9MGj3F9VNRAN3Jg5XNs+IvYkQL8/mtpm4UTTlmt
         o5W6HD/Ep2s2JbdwrMykEi5Z4+1eso/a1K/XmaKdS/3TrBmkqJK2hZix6zi61PjwhR8P
         CPzy7hmK3VOFusAn4hr7SVtLg0ksJddniDoxc4IuYFFogvi0tEtwo5073Z0sHh3mdc2Y
         NzIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787649790; x=1788254590;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=XX5K81ve7+LZjWOS81IJEJu4RVfjdI4dGeLBPWUtyo4=;
        b=s18Dla+2QqGnuan1EoOQKovh6mfNDDPVHNLBEe/IoHtL3rM+voXwWXxAR0KDPtNJBl
         sBsNeuAaCUMvM64J0JZf/x4Jti+TbsLI15Nf+hIGAAAiGJMPQUi9lyjHIr5ftVPITOoi
         bfRIZIr1ubPwlJWsSZXsaC7LaIznIjFTd9d6xrsy/O54dXCiOh9J5YzmDi4IkZqdrmfR
         q5VjwUYV5wBSF+bhFqZLIqNv8Kuu/N+XJDb+XkkjVF89ksQL4DgMr0lHHBH8878B/rdU
         e+hKTaOGSPtJqGRHlZSGxVHccpKDpMi6+79VvnoC1UsGLIh8vdLkc2dgp3Hwq9TwFVe9
         DNmw==
X-Forwarded-Encrypted: i=1; AHgh+RrMV1lnLKUFace0BabutzyV6XLAGi/ynYYwHb3rWKziqP6vHTDlV5Wosj/53KmZebS+QjGFvX8U@lists.linux.dev
X-Gm-Message-State: AFuF++kXkRg9nArXyV5aFCCoLN/oG1p9/vRCR7qjIMOsOhAzdke1i62E
	K8aj01i0llCbGddsYA9yu27PftUUPYLJi5mCJMqX3syooJ5sX0n1mO2jJ+xyxC8/Hog=
X-Gm-Gg: AR+sD13uJyXdd+xtEzQfmwMXjhXPqrBPM9VdRBAbU7Ceqx1rEcWudGXUobMw+xrj90k
	FEOeyuHGICv8FdPnYtypAOzw6VvDjNCX+1SqthX7d7xUABDGDIPBmMmyeaBAxnL2vl/TBTs7A7b
	qPsfGExPwWNYpU4mAesgGYS3iMY+V/pKQ2wRpnQRDkab5rt9Xio/J+ypAlbUFDKWveDJTNyXRBO
	K+RCqr8eFE8gl1FoeUI3djFfzHHZmXBlGpC0buyT/c5VlW/Ofad1DLyb8qUAKA4sJ1q9c2jBnya
	6WIFe8KW6516eexgo2cc2Pch5P1gS2mPpKy9mHkNxGRMe1p6e6x0aZQ1Br5hvPvDHkVdEXFfCH8
	mMs7/P54NNchcbcCQHq6XgujYesVjzsIzLq9TYk0h0fmr7W01UWHw1JkgWuDnFE3Y2a6aV2JN+T
	XPHgUW6s+tCo4woNRd9yRh+NylpQUVW834gQSmx2OmEM5ykFo1oB0QWeC+YV6v2HkkMTCYsmbmj
	Ibt+dxEwdb4UgPCkt5xegMC99BWJ8u7YJg+7/xWAUtqA1p97A==
X-Received: by 2002:a17:906:f246:b0:c21:61a6:8821 with SMTP id a640c23a62f3a-c246a6cd384mr2998570766b.23.1787649789639;
        Tue, 25 Aug 2026 02:23:09 -0700 (PDT)
Received: from localhost (p200300f65f19a904037016a565660d5e.dip0.t-ipconnect.de. [2003:f6:5f19:a904:370:16a5:6566:d5e])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-c24966f6ad2sm1761257366b.30.2026.08.25.02.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2026 02:23:08 -0700 (PDT)
Date: Tue, 25 Aug 2026 11:23:07 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Vlastimil Babka <vbabka@suse.com>
Cc: Mark Brown <broonie@debian.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, ksummit@lists.linux.dev, 
	Thierry Reding <thierry.reding@kernel.org>, Breno Leitao <leitao@debian.org>, linux-next@vger.kernel.org
Subject: Re: [MAINTAINERS SUMMIT] Any feedback for -next?
Message-ID: <ao1a6qatPjiHmOAS@monoceros>
References: <1025da50-3e21-43c7-a761-4f65ed5e5069@sirena.org.uk>
 <anxTFWS4KAMqGNGT@monoceros>
 <1a34c486-2fb5-41e3-991f-23bf82468412@sirena.org.uk>
 <CAMuHMdVEejuG-Dyr4DXgg3MhtDY6n5cDYPotRiGXeSGv0AcA+g@mail.gmail.com>
 <a0e4b0ac-41d1-40bb-b704-67ba71e8ce43@sirena.org.uk>
 <b1adf43b-f37c-4c8b-8370-d5f8f179678a@suse.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bqu6vbso3orcjmxb"
Content-Disposition: inline
In-Reply-To: <b1adf43b-f37c-4c8b-8370-d5f8f179678a@suse.com>


--bqu6vbso3orcjmxb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [MAINTAINERS SUMMIT] Any feedback for -next?
MIME-Version: 1.0

On Mon, Aug 24, 2026 at 12:07:08PM +0200, Vlastimil Babka wrote:
> On 8/13/26 14:36, Mark Brown wrote:
> > On Thu, Aug 13, 2026 at 09:31:58AM +0200, Geert Uytterhoeven wrote:
> >> On Wed, 12 Aug 2026 at 18:44, Mark Brown <broonie@debian.org> wrote:
> >=20
> >> > > The advantage is that if commit B breaks something there are less
> >> > > intermediate trees that don't contain B and you can still test on =
e.g.
> >> > > D+E.
> >=20
> >> Sounds like a nice idea to me!
> >> And you can put the trees that usually cause the most conflicts in
> >> the same subgroup ;-)
> >=20
> >> It may also help in bisecting an issue.  I have the impression "git
> >> bisect" on linux-next (against Linus' tree, not against yesterday's
> >> next) shows me more "a merge base must be tested" test points than
> >> expected/optimal.
> >=20
> > IME it tends to walk down the linear history of -next until it find
> > which branch introduced the regression.  I've never investigated in
> > detail but my feeling is that the inefficiency is more driven by the
> > size of the branch it lands on.
>=20
> When bisecting -next, I actually use the "git bisect --first-parent" mode
> first explicitly to find the culprit branch (or precisely, its merge), th=
en
> do a second bisect only within it. It avoids wild changes of the tree
> between bisection steps due to the differing bases.

TIL `git bisect --first-parent`, thanks.

> The suggested binary tree merging approach would make this strategy somew=
hat
> more difficult.

The argument could be somewhat weakend by first merging linus/master
into each next tree and only then start merging using the binary
approach. (Then bisection could be done without the base changes, `git
bisect` wouldn't necessarily do that though. It could be directed to do
that by marking all trees (i.e. before merging linus/master into them)
as good for the first run.)

Thinking further, having $tree+linus/master for each tree can be
beneficial in some situations. But that could also be done with the
current merge order. Not sure though if it's worth the effort.

Best regards
Uwe

--bqu6vbso3orcjmxb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmqNXvkACgkQj4D7WH0S
/k7kKAf7BZLO6jM1RNhY7qyVZd6l2nJ4ZOecq9fRoxofDFqABj1jP6PI1cXChRkh
+fOzIapXV36O9v3cy5/rZdvwlg+CR1RoreBal/zmeoWKlDiy2m9z1pVbXhRFIxcQ
rmP1PFbxlovGNvm/bChKuiIyvgplfuAmx+BiwRaugBQaQYJz0s77BX7w4M+Yb9eE
j4pA3NuBwSf84k4VzuocfLpDz1Kb/0sJrOhJMAraL5fG2ZihuEbbk/1vHVVZSuRA
cxmV+GUxWUDTghbOpO3eIsGSvm+0Iijt/QOpHgNju7LZQns9AnA4NGwSgZ+8IW5a
pUr4rYKRIKajSc/m8L1RvzegqcKj6g==
=ikiV
-----END PGP SIGNATURE-----

--bqu6vbso3orcjmxb--
