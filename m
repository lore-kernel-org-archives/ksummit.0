Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133D0324B33
	for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 17:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784828027; cv=none; b=hPGYVwWQ3vP1dBHoBUHkmzPxM9F4HT1Ve5XwbCQfQFW0HKYJh/v+2B7raILz07rGCff4gIAXXHPEX92/ihFO0WyC8gywFtJvqN12/lnJWM6U+8I0UYpbx1asRfHUYTkDKkRwZPZIlFOqmGHB4m/Gmr1/qgx1/xxxIU2Sb/Pqmew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784828027; c=relaxed/simple;
	bh=y4ANVkq+ZLMFBkN9MwD9f657XuGzrgpovzpvzl+naLw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fda/ZTt9R6JacXUCBYhmR3tIXRsEipnnNxbZfw2xYagpStMmZ5xom3zS+NugaQ6zZDwqQhfxT80FzP58eKsXRoI36M7mdtHqvb5LLvOrfK6opVdhbjuC+5rHLxTHuPqntLgdKgPMwVmlb5Jje1jVpekJBAoW+Sk81OimJytxs4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CD421F000E9;
	Thu, 23 Jul 2026 17:33:44 +0000 (UTC)
Date: Thu, 23 Jul 2026 18:33:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Guenter Roeck <linux@roeck-us.net>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Roman Gushchin <roman.gushchin@linux.dev>,
	Jason Gunthorpe <jgg@nvidia.com>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <cddf924b-c63f-47f4-80e3-53751c660d84@sirena.org.uk>
References: <20260715185757.GA191552@nvidia.com>
 <7ia4pl0oymo0.fsf@castle.c.googlers.com>
 <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
 <20260718010949.GG1889304@killaraus.ideasonboard.com>
 <CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
 <efdce5c5-13a1-4dec-9823-bb2a37084538@roeck-us.net>
 <20260723084954.42e6a6e4@foz.lan>
 <65fe52a8-d6e1-4c5d-ac74-6c731874db15@roeck-us.net>
 <4d27a17a-ddd9-49c0-8d6c-e044b28ffa0a@sirena.org.uk>
 <amJKmqYT3AU3MOex@intel.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UF0bDZ5JprLErxBE"
Content-Disposition: inline
In-Reply-To: <amJKmqYT3AU3MOex@intel.com>
X-Cookie: (null cookie


--UF0bDZ5JprLErxBE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 23, 2026 at 01:08:42PM -0400, Rodrigo Vivi wrote:

> I agree with Guenter approach here and in a matter of fact, I had just used
> a few minutes ago. I had to review a series where I noticed Sashiko had a
> couple of true finds. So, I just asked the developer to look to that report
> and fix that before I waste my time with reviews that the tool could already
> spot.

> But I was already aware-of and okay-with this entire code design idea and
> approach and this review would be more about the correctness.

Yes, I think that's a very different submitter experience to something
where there's no human intervention at all and much more reasonable.

--UF0bDZ5JprLErxBE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpiUHMACgkQJNaLcl1U
h9BGPwf7Bh1esE3RdotSkWF3hvOVn5T2wy0OZCR0aGMEZ8ALageGC6rMMxsNAf+e
G5mkz0W1GfXcP7cSua8BKJix85igBWWrubQOwnDG6KWxZfkhDJ/j4xY20XNlySfS
WdHg69lDivbaGj3jT8yELzQaqlg2B3qfueol0Q6+kPL0o+ND1S17L13uyfKtG8qv
O3wbe/FXCRZcrBwOU0UFswgntcSB/DIuN5tCundF7EQOLhxVf4xIwYex+QO/vkgS
ODXEqaJrqMD6D60Ke/S+zrk/kLphi8BEkKN3B/vUj3xBWyFgB7GzwpZcXOR7CG4I
y0BG9eC+wK7OWDwUQJfB0+cLty75MQ==
=IL7R
-----END PGP SIGNATURE-----

--UF0bDZ5JprLErxBE--
