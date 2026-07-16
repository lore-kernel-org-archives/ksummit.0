Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D3536AB77
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 16:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784218125; cv=none; b=RypwX3E5v7EvzC9sOKZTx5qqR0ISuYSSqXMtrvppIxJqFd/m6MQqTLRteyTMr/gYzrtu9lmvMEriDOt2v5yebHgaAn8nv5rl68I8H6chsv8F/qiOyM+gxpNmyplCA7cBC0nRO/7XCKG0F3TjG113nTTunwaSd1hT0Qpu+NvJ03o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784218125; c=relaxed/simple;
	bh=hgq7eTvDMZAoVZmTA4nkA6whxQpEM5/qeyglwfUILYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c+1TlKt4PMLkZK+PPeAgZiyjitazK9YadeCPSsnScqExU0R7x1QfGcqaPV3LUQI/0EPaDMRWaMDNy1oojsys7jWgypt+zaQ2Q7wL5k2V55AYUbxdfyieQgB5n0SFV7zs6O1QcPVAVzd/trj64Ay0tt6Wa9Oage6khnXvgnRDCAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXTlhWMO; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXTlhWMO"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4843A1F000E9;
	Thu, 16 Jul 2026 16:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784218124;
	bh=VbQCJ9X5nZUGQ45LkydpBiRslUw+vuV6rGThy7iUZfo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NXTlhWMOdfYnaaqIDqinDOG9YpiMpxjg2C0pbA7jZrWQI6qLSwVB0zCljn6UWop9G
	 wtJeyEggIYrGoGMbxFTEVNpK4raHgCNKZlEWtgvdDsvHaGCWbzCf9kRocnkcYEtv/t
	 PL5hvuJpsFJF0huDc/coP/Pf9zxzNqGRHrx8uXAOsGQ96zuOEUj5gGIQKqhQN3lGYy
	 N9BmiO4VbLpgvgiIg+SSDOL3uzdpFOkrbUBLiJ8QJ2IaEjXDhl8RRVZR/dwOIGEBFp
	 qmLJLqWbBX2giuUlM+SEe+7JomeumiU4HaurWjZQ7D5tkNMYNxRO/EflIRAseNNgm9
	 DPFjSqEDNJNEQ==
Date: Thu, 16 Jul 2026 17:08:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+4z9Ucn7RZRpfmUz"
Content-Disposition: inline
In-Reply-To: <alj4mYFMfZvuarfx@laps>
X-Cookie: The more the merrier.


--+4z9Ucn7RZRpfmUz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 16, 2026 at 11:28:25AM -0400, Sasha Levin wrote:
> On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:

> > - There are many first-time contributors coming in with LLM-generated
> >  patches.  At times, I could swear that every one of them is focused on

> >  Our maintainers are not scaling to handle this new flood, and I fear we
> >  are going to see some unfortunate things merged.  One LLM-driven newco=
mer
> >  recently nearly succeeded in establishing himself as the maintainer of
> >  lib/.  How do we hold the line against this stuff while remaining open=
 to
> >  new developers?

> Shouldn't it be a merits question rather than a tools question?

> If the commits are correct, does it matter if they were written with an L=
LM? we
> can insist more on supplying tests and demonstrating correctness, somethi=
ng we
> seem to be doing quite rarely right now.

The issue (which a number of projects are facing) is as much one of
volume as anything else, the code generation machines are enabling the
generation and submision of volumes of code where things were previously=20
constrained by human factors.  It can turn into a bit of a DoS.  I don't
have any particularly bright ideas here but it's definitely a thing.

--+4z9Ucn7RZRpfmUz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpZAgcACgkQJNaLcl1U
h9DNmgf/esXygnBM8+rh10kMoRTXokZJCGsGLdXG/ej91b52p0wAsN718U9Hj6y3
aRkf2Ek5dbU8bU/BXXCeXVcfRQnCLgdNDCW29fxw0F9RN6mDVhMBiAsjYTpftzln
3NlX5M8rWplLoxo33o64xOgj/KGagtO1UC+C8YwxPppnaekkIMJZYibFVzhHFgl1
8mtaUqInoTz7dmVmfXnVyOyv7tORm9d56LAnSg9WP3z18sLwVUA3eQkswZtQyPZC
x0IcEQRIHYbKD6UEiBZm1Gka3m/P6H7LvXZsk2JoIQAB9ER5cdCq3pWAPwgRSFe6
1k6JWPOMqqrGZD9to6tFS5NABk0ACQ==
=JzB0
-----END PGP SIGNATURE-----

--+4z9Ucn7RZRpfmUz--
