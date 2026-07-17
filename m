Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D213B39281B
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 14:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784298344; cv=none; b=WcsB9ySKYuveJZmse2c+ueLmpXZ3v9EU3K7S9C5dAKiTxCWawpEuhYOCNTqCc61MlBDMhzgqFA7BPeLH6cmp+CNtBZfgsVFu1BsS1p+sLl0CzUwr6Q8mIp0EYFrh2LPiM6PMZLJrCaDJ8G8bDDFPX6+kqAkLOvUdyzXawg8SLUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784298344; c=relaxed/simple;
	bh=M7GUmACCkZpW6OEXrXwVbQJpnJVnxz79VUHXlVc9hzE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FzbtbBF8WZUsxj5fyUP4/0Olrg7Q425t0d2vk2JdC8T3byWwD14LbqsP8ggYUKkmYuFePCbh1POxnQz3AWjCZa2rYaCwnRgU9yWgyFl+7T/AgbZJCqPvetbeFc7dudyrtLhCMx9xdv9gMAbEIDe/P0MdCRlBmdli+v4YmA33SsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCEQadjp; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCEQadjp"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0FC31F000E9;
	Fri, 17 Jul 2026 14:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784298343;
	bh=62GjtwsPlVOZue+WDq55J+uP1/To9nF3cBIDfwsfNME=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MCEQadjpa5P4n+i6tXt6Xum8KgK1duTKqVyptlCQBMPV9Wb/pMTDPqX7XN04KLlBN
	 hNGCZ7VN8ZBbfz6/ENjigV5Ihwak7MBLmjkmexh/kh0TwVld5skEGhFLbRI00ZnktU
	 umIm6aKYrNTCxGsB3AGZGwVspOwUXEI5ENnhsPqN9q127DkHIuVnPndzmOsFV8ui0C
	 DL2K3dNRiKKiBzxrcbhP2FVl0ByXBIBXQgXqbMpkKnNqKwnPpxasWI23GTZjNTMMPj
	 VrWZ9T3oPyDawDKUu49V5Q+ur/RJYLalfoeXw1ahYgLcEcfc1VGc5n9e6THjDKGyQv
	 HTd8w3zj4Zt9A==
Date: Fri, 17 Jul 2026 15:25:39 +0100
From: Mark Brown <broonie@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <68cac6b2-fba1-4c07-a987-cdc25bcf2276@sirena.org.uk>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>
 <alkFzdJobnnMjJ4v@laps>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aJJ62qiVOp1Pxomb"
Content-Disposition: inline
In-Reply-To: <alkFzdJobnnMjJ4v@laps>
X-Cookie: Enjoy yourself while you're still old.


--aJJ62qiVOp1Pxomb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 16, 2026 at 12:24:45PM -0400, Sasha Levin wrote:
> On Thu, Jul 16, 2026 at 05:08:40PM +0100, Mark Brown wrote:

> > The issue (which a number of projects are facing) is as much one of
> > volume as anything else, the code generation machines are enabling the
> > generation and submision of volumes of code where things were previously
> > constrained by human factors.  It can turn into a bit of a DoS.  I don't
> > have any particularly bright ideas here but it's definitely a thing.

> Sure, we're seeing quite the increase in patch submissions, but I'm trying to
> argue that the issue isn't a new one: lack of maintainers, trusted reviewers,
> and maintainer burnout has been a topic at each kernel summit for as long as I
> can remember. AI just kicks it up a notch.

> My concern is that if we focus on the AI aspect, we still won't be solving the
> underlying issue.

My experience is that the AI stuff is qualtatively quite different to
the general pattern there, the human factors are a big part of it as is
the fact that unlike other tooling it's not doing anything regular or
predictable so you can't develop confidence in the tooling in the same
way you might otherwise.  This all makes the back pressure that helps
mitigate things less effective.

> I'm hoping we can figure out how to get maintainers great tooling, testing, and
> community, rather than figuring out how to block a developer who uses LLM.
> Maybe AI would actually be a great catalyst for that as well?

There's a money question there of course, I note that my own out of
pocket expenses for non-LLM tooling are non-zero and there's an
economic concern among the various concerns about the LLM stuff.

I do also think there's a place for a conversation about trying to get
the people using these tools to do so in a way that's easier to deal
with, a huge portion of the issues people have with them are to do with
externatilities that they create.

--aJJ62qiVOp1Pxomb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpaO2MACgkQJNaLcl1U
h9DcXgf/SdEAKAJuw2LNXUMjEbWT03fsbiNeaBZG7oK4d2H1VkSNms+Qnk5UnhVw
NBoIZTmespc/gOiFaf6HJiU38bmciOSvpCLvH7VFDyOx9Oh2VL6z1a7U0sFFAgW+
rn4TyDOxciJugyKD6f0c1+BlhY3f4YpOYBfvwWEQC8oC0OavwbVQXiLq/fc1xc34
HT6KJoawFdj6BdzFiYKQZUpCNUpA/qoEvTu+wu28nsu1+LdKyW8dTYV6jPTraxjz
2B6rxMZcvcVLW+a8dGWEvaaDDweHUKOj7lhPZZpf7NRpaRwIi90mKyfsdJXMIyAi
qKyttFLDCBpSR2/oziQHLN+hN8p8JA==
=VDKN
-----END PGP SIGNATURE-----

--aJJ62qiVOp1Pxomb--
