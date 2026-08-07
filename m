Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D07447A89F
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 13:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786110185; cv=none; b=rVdBIudxT0puEimRqIrVhOV7RQcnyTkzKyt/8ZmbZCGxbWLQTfMlGkruVxu5CajeVd0omrWBTCUgQ3wzipXCkWcePhFrLk3Sv6nPEi3ZOx6jA2nzmGvG+qaArdfNGQQBVZRq7+t3T4rsgshtqjnvPS58sAdKeF6QvCPBydMxALE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786110185; c=relaxed/simple;
	bh=U5w//mre5BW4/MAI2Ys3+Rgvgc4M8oWT7k7Vh0OO/vE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r6OXPycV2kS5NkEamQyFhTKBhcQO2rjYXndohnPE0sVvfIEhuVlr7wKcVESSfkgwOqfL/UU+9gLOoyIw805GlhjkcFAMRZUHjY4NWXlv2R+qta7JryRifL/Lj8PPbIYsnPrIu6zf7K1gtRUKBGQymOmUCLQ14K9LB4c/IU+HEqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmP6NGJk; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmP6NGJk"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F8C81F000E9;
	Fri,  7 Aug 2026 13:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786110170;
	bh=d77w5zpH8HqGcoZMTxd3EgG+2wtlQDoIkCi1sncq67g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JmP6NGJkDNHkAGz8ouHwlldWySUZEDrfeHntijJWXUK1wHu7dg4Ayj2DZ7t6gmUhp
	 j5Uy01WpG5hNZIjdcOS2rFU4LLUvo395lJGy9W7r+c1BWalxe+xNcX69xYkzAw1WFF
	 N8y+la9fr4VL8/bGKgQ+TpWyYrHrdklqnct0LKvWTBCR0VI29Hvv0ZKQYBecj+d4sM
	 ezmTQmGMejzJZntzGsBNvQNBGQ+9FpjRkchOGZ5C5ZH+AKBNsX/wBhrIOqGCwBn7JU
	 U4BgDbN78dg88kid8g35zEiJ7FuvFYBC9kH1HglYzCs9enEy58ORVQ39utVGfcIJ1U
	 r5EIob9m1yEBg==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id 0DF1A1AC5739; Fri, 07 Aug 2026 14:42:48 +0100 (BST)
Date: Fri, 7 Aug 2026 14:42:48 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Matthieu Baerts <matttbe@kernel.org>, Theodore Tso <tytso@mit.edu>,
	Dan Carpenter <error27@gmail.com>,
	Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>,
	Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <anXg2MBsc3qIkFkL@sirena.co.uk>
References: <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
 <anThWLhqipEM34kg@stanley.mountain>
 <anVK-qkUOaIJkt9M@mit.edu>
 <78ee9f53-09b1-4934-82af-25f3652b108a@kernel.org>
 <20260807115603.GH2201016@killaraus.ideasonboard.com>
 <04b4e9abab2831b177228752860bedab1f15a736.camel@HansenPartnership.com>
 <20260807124017.GK2201016@killaraus.ideasonboard.com>
 <9190410e0173138f9cc95e6e7f68c4ca14b2d333.camel@HansenPartnership.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="F2CGSFo1PXdvo0sS"
Content-Disposition: inline
In-Reply-To: <9190410e0173138f9cc95e6e7f68c4ca14b2d333.camel@HansenPartnership.com>
X-Cookie: Swap read error.  You lose your mind.


--F2CGSFo1PXdvo0sS
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 07, 2026 at 08:51:50AM -0400, James Bottomley wrote:
> On Fri, 2026-08-07 at 15:40 +0300, Laurent Pinchart wrote:

> > Then the author could pick any base commit available in Linus' tree
> > the relevant subsystem tree (typically an upstream release of the
> > next branch of the subsystem). Would that have any drawback compared
> > to not specifying any base commit at all ?

> It's just pointless hassle given the maintainer workflow is ignore the
> base commit and do git (or b4) am on the current branch and only if
> that rejects either try and upport based on the base commit or ask for
> a respin (the latter being the most common course of action).

While I routinely don't actually use the base-commit that people provide
it does come in very handy whenever it's hard to work out how to apply
their patches, obviously you can ask what something is based on but it's
easier if the information is just there.  I'm not sure it's worth doing
by hand but it's a great thing to have in tooling.

> > > and secondly because the series has a dependency on another posted
> > > but not yet applied patch series (i.e. no published base commit at
> > > all).=A0 At least make it a Maintainer decision whether to insist on
> > > base commit or not.

> > Isn't that what prerequisite-patch-id is for ?

> Dear god, absolutely not.  I can't match a patch hash to a series, I
> want the lore link of the prerequisite series in the cover letter.

The lore link plus something like the title of the series/patch so the
mail can actually be read directly and you don't have to open a browser
to figure out what the submitter is talking about.

I assume at some point it'll be possible to do something automatically
with the patch IDs at some point.

--F2CGSFo1PXdvo0sS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmp14NcACgkQJNaLcl1U
h9AMUwf/Sx+kTTz8RHoBDCyU5kyehCFh+qhhKjqR4bHdr/WT5hTIFmHMLFmga2WQ
3dVoDkCuVXKnb0uf+jwe45IQoj+MAyZuuvdhhIoKJZaOdFmoAVxVjeVHrSs4Hv3T
6kBjopAntYzXLxqcFHZcUrFo8yb5JaN7TccPJX5BAegwSbw5wPiy09161ilxJH8l
7KROXdIWwcqWGAAb9/pk8nDFLsL2w6Tm/oem+8Uhu893agrrC5WCFFsVf5X+Zz7N
zY7/bEblkToGRH6EPoy9Ks4WV4V5vmKsfX1xICgfSmn72qKL0pdKsH532+KN9rC0
+Jo2oaBMyquzQXA2TQZzWrj2szfUIg==
=p1eb
-----END PGP SIGNATURE-----

--F2CGSFo1PXdvo0sS--
