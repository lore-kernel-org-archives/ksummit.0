Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E0FE6F7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 17:10:38 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E2C587B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 17:10:38 +0000 (UTC)
Resent-Message-ID: <20190705171035.GD20625@sirena.org.uk>
Date: Fri, 5 Jul 2019 17:41:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20190705164142.GC20625@sirena.org.uk>
References: <20190703013557.GQ11506@sasha-vm>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FsscpQKzF/jJk6ya"
Content-Disposition: inline
In-Reply-To: <20190703013557.GQ11506@sasha-vm>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--FsscpQKzF/jJk6ya
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 02, 2019 at 09:35:57PM -0400, Sasha Levin wrote:

> - Concerns about how well -stable kernels are tested.
> - "Fixes for fixes" end up being missed.
> - Saner AUTOSEL process.

I'm a bit worried about these, especially pushed together - one
of the things the AUTOSEL stuff does quite often is pull in
driver changes and our coverage of drivers is especially weak.
When a person has explicitly flagged something for stable it's a
still risky but the automation adds that extra level of
uncertainty.

--FsscpQKzF/jJk6ya
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0ffcUACgkQJNaLcl1U
h9AJQAf9ECE7j9MUy7ownZPtwh/yl/Lie5OQ09HucdzE74lAEtzeOeicw6UcY1XJ
8mB/BVio3nqWGO89srAhub9ogOJmxz25BEVpW+g6dP/4oEQjFpOSgjoR1UUFnP+u
biyXc941MdoqXdtwjfBYOfy85cDYFDPTdj20P8ZsKQpK/6iswC4PDVzUm0fif2CJ
fR66mUWNEp0qSRqdoH2cPmzvL6KlAMZYxs4Wx+L73S+akVjQ+PqtIHmh8GYzyCTF
9m7dheiuDfO7FHHWZukcLjVjtyKQIGuzslJOtzXb7y47Mzs93Fmba4q7f3oXX3K3
hi2y/SYNAFw59uOvxWftCS1/Vgm+6g==
=ZKU3
-----END PGP SIGNATURE-----

--FsscpQKzF/jJk6ya--
