Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A11F63CB
	for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 00:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784332905; cv=none; b=dz7B1G12JHBDSAFH2lLI6FsJro4CQfcVDVCpMpIsf8ZdzqG+O/aWumfhzYdzCy3wb1UsTPEM08m0o0/1O2bhOPOZMCkX1FLI8paB7ynQ4hCl/Xot4o8eBqANAtUGAHcDjuu33uGOdDLSYjD9oRfKOSuUsYIJq1tM/oTi97ZcAVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784332905; c=relaxed/simple;
	bh=FDJIDqx54HTIAVwFwx6N2WDbrH3KnR7tNhVpMqEzLtw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tCC1FsOTDAYAEOwHGcJOIDsbi6WzEBapenQTAwmbAAJ+SHiSnS1MKCinMaSI97mUIU3tbSQ0Ah2QqqqKUjhPgRGEptbraQgu5CspxmzANt9AzOq3q3DtufHvHG9IMX4fLXDTYsCoQ/lxdlMSVHPX4bCTLwD01MX7cgPAwvd3mkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=To4NOqJu; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="To4NOqJu"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA4401F000E9;
	Sat, 18 Jul 2026 00:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784332903;
	bh=8VMBlD6xsTGlu4I9qw9+MkdfxwBT5Ce4PZYuCcNVuqk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=To4NOqJuv6UZkrN8nL86YUxY4599/BZ7TzCuYWdUFqqvK1C6Kaq5+AnwYKUYGvHMX
	 ZJr85eQ7DJtPcWIURKqZM1Npf0xMdnn828I2Iw7/nNfQANnbQxtfR1hOmNUO2+GLV1
	 R8euvW5fQ6H0NVQ71qEH/hJuB1kOvXGMJBljHK0gghnIBDcsvAOoS3vLZz/9W3fIiG
	 O/kWbhvMg5NRKrZJiPSHT3jf9l1O0VyjIMLfAfxlE0NmKp1W+9ZU1czrEcowBIKl7y
	 eTXpq/t1R8Io9d2Tub3xlgwrv9ztFAQmiOplm/pGKY4wDs7dKPN8urSZrHbcDSXrEa
	 bLG5sqChnm90A==
Date: Sat, 18 Jul 2026 01:01:39 +0100
From: Mark Brown <broonie@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Roman Gushchin <roman.gushchin@linux.dev>,
	Jason Gunthorpe <jgg@nvidia.com>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <8c893db9-4c35-4dfe-b680-750099f4bf16@sirena.org.uk>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
 <20260715185757.GA191552@nvidia.com>
 <7ia4pl0oymo0.fsf@castle.c.googlers.com>
 <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z1dY/mCA8vxE/Ock"
Content-Disposition: inline
In-Reply-To: <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
X-Cookie: Enjoy yourself while you're still old.


--z1dY/mCA8vxE/Ock
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 17, 2026 at 04:17:06PM -0700, Linus Torvalds wrote:

> This whole "Sashiko found a pre-existing issue when looking at a
> patch" very much smells like the same pattern.

So much this.

> And I don't really think that "we'll have a database of it" is going
> to fix it. Sure, at least things won't get duplicate reports due to
> it, and maybe it won't get forgotten, but it's still going to result
> in the same kind of friction and stress, I feel.

> It requires human effort and tracking, and it's a lot of work, and
> it's by definition not really very interesting - so people start doing
> it because it feels worthwhile, but it's just not motivational for
> anybody.

We do have a contingent of people who like fixing small issues, they do
things like find or make some tool and then go fix whatever issues it
reports.  It's possible that collating all these issues might end up
working like something like Coverity did for example (that did have a
false positive rate to manage too IIRC).  I agree that there's issues
with any individual person working on it long term but it does seem like
a useful thing for people to have, it definitely seems better than just
attaching them to some random other review.

As well as your patch generation idea (which does make me a bit nervous)
potentially there might be something useful in like mining for repeated
patterns or something too, given that every report is custom generated?

--z1dY/mCA8vxE/Ock
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpawmMACgkQJNaLcl1U
h9CP8gf+PTUantyjru/nSO7OGzYQA09b+xQpAVvOmgzbExJS2Mk39QpgH59C9G7N
+cevHploddYyTgmqk5xL8CRB7b6ulxA1CkGKL0uezVCkGkiC0fp6ifPluwtIEoAg
HBqWF3NHgap6olRvlJPoFEtyZtECMXIcKnO9e9GXcqPfWttE5J4bMYhDy6tJDdJU
Mo2CeZJdcsFx0Uml9ZT1G0ofgzjcr95/vM8E6yQO3p/8NHmIyxQV/4nRv7fW7ZP7
OpN/Cr3fTLiGoP/oiQ9N4tcKugyVGqI9e+5NbRA0+GccHudNxKzm7pS1KR2+t1pY
p3UKLP7Z315YeVXvtBEKGB3pxIX0vQ==
=k38U
-----END PGP SIGNATURE-----

--z1dY/mCA8vxE/Ock--
