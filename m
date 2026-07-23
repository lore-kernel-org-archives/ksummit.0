Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27859337105
	for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 14:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784816118; cv=none; b=G1Ci5QPntOVKfdjesttRp96XTc9Ayd+NWFhVUWZyDJ9+9V+y2WBdnUpP04+Qeb1QVaQbb3pj1hcpe2FWOr+XLabTxGxkOP++8vLdTkQ+D8wdlcroy7cY+sdTEuFGqoP7TEbSb4UdvfQolU9f+vSZK2SI1K8czR+k78aXFCm8T8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784816118; c=relaxed/simple;
	bh=bW0pKNrG17LK8ue+JEgOSlf+dKrbanbOywnshdlfbGw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ljs8ApIjlio5kCaTHiB3mVEeeHJ7U6nzzUFQev8BOLo/dfFhgw5orxrCbNwsX+eDeJyYWB/Du7k8Zbb8xtYHT3F9l1MI3bFuLshHJCj636LEFgX0cn0+1neDpP2DMIa3rEa04tBccYKe1+1/yYZa2AC21Ik09DbZVtHb7b8d908=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSdR6hlu; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSdR6hlu"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA0251F000E9;
	Thu, 23 Jul 2026 14:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784816113;
	bh=OWKsnexHiJ9/Lo7pka+a4sYmQrUcuy/hT6ZP9RGMrns=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lSdR6hlub5MyYT8TcEjjBkA+3z5Wang2/BXIH+d1EX+QNmFy08Z8lVPjhcjIoD9/3
	 r0d1+PgY+kPJgqRJsS49tsVJzpyPUEFFGUN0iWjl1SHRFy0ppWW9n9B3WpK6+BQf/o
	 YYMdltCpzGc/Uv1J/pXigbKDiHiRMDLm8FS2b95n1E71axX3k3a3WCXl25bLt3j9lk
	 nxEBMOc2y/hczenF71Zlg8eL9RFqZElhHw7kSHTiFtfGEtQcKgVaCaOYDCZnSziWAk
	 qzGXwws7jvMw878AaLLIqLzbzA4yQzweF5u6YO1ZAiALQRXPOfmVRrujAVrwiGvMF3
	 /uCZsLVVhX03w==
Date: Thu, 23 Jul 2026 15:15:09 +0100
From: Mark Brown <broonie@kernel.org>
To: Trond Myklebust <trondmy@hammerspace.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Jori Koolstra <jkoolstra@xs4all.nl>,
	Sasha Levin <sashal@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <06c8d81f-765b-4a0a-8c32-f229165204c6@sirena.org.uk>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>
 <alkFzdJobnnMjJ4v@laps>
 <amAEIpVXxJbVgT2Z@lt-jori.localdomain>
 <CAHk-=wgbGarE7Ozw4VG6oUKDj9pk-8DRoDiX00bo1MwEMm9UWQ@mail.gmail.com>
 <d9d0249b0932a6b219e1406312de30287ff5b640.camel@hammerspace.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="M//rVEmCGvuCPPZK"
Content-Disposition: inline
In-Reply-To: <d9d0249b0932a6b219e1406312de30287ff5b640.camel@hammerspace.com>
X-Cookie: (null cookie


--M//rVEmCGvuCPPZK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 22, 2026 at 10:20:55AM -0400, Trond Myklebust wrote:
> On Tue, 2026-07-21 at 17:57 -0700, Linus Torvalds wrote:

> > And the corollary to that basic issue of trust is that invasive
> > contributions from unknown people should be much less likely to be
> > accepted.

> > (Here I define "invasive contribution" as something that is hard to
> > verify as a patch - there can be large and invasive patches that are
> > easy to verify with tooling, so it's not necessarily about the size
> > per se).

> In my experience, "large and invasive" hasn't been the biggest problem.
> It's rather the fact that the people submitting have no understanding
> of the subsystems they are patching, and so they (and the AI) overstate
> the claims of importance. Suddenly, I'm seeing a slew of "security
> vulnerabilities" that are Cced to the stable kernel channel, and
> sometimes the security channels, and therefore scream "Drop everything
> you're doing and look at me now!".

> IOW: the problem is intrusiveness onto the maintainer's schedule, which
> also eventually leads to fatigue. Particularly so, when none of those
> claims actually stand up to scrutiny. The patch itself may be nominally
> correct, but it's never a "drop everything you're doing" issue.

Or just simple volume of non-repetitive but generally perfectly valid
changes.  It's not even that things are invasive, it's just that there's
a lot of them and you don't get the benefit of pattern matching that
tends to happen with determinalistic tooling.

--M//rVEmCGvuCPPZK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpiIewACgkQJNaLcl1U
h9DJ5gf/c+8AwIEhYYuQ7o0jdMzhwzM4HG7MKUudpNLRGVa7iDk9x13BPkZ8s6ub
+DLC03VmkcyrUgrfIOobnA2h/lsN0oxgG//ujVsbXT0AcNMDBDzLHVO78BhJnsbJ
Hpu9JD9d8yFj87Bpm3EsZ51mDR8tGIe9AXFbBIxmCeTyJSDVR70B7Cmz7Oe9gAei
+1uhaIeoCFOwcWcMcfTE+RePexxquQmT4jKb4sCudlgeJEWmjvX9K2nEEKXP7B5E
V3bfKXsC+VUhZ5YDuqqKCeYlXUaLKifMxRLJGEtduscoDKXVTYbDbNDbsFCofYNJ
KnCquEYLTr03zfOM2csLeau0TZHzug==
=R7d8
-----END PGP SIGNATURE-----

--M//rVEmCGvuCPPZK--
