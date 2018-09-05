Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 79EF1DDF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 11:37:18 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 00CEC8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 11:37:17 +0000 (UTC)
Date: Wed, 5 Sep 2018 12:37:15 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180905113715.GJ9781@sirena.org.uk>
References: <1536142432.8121.6.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hABqaeELJqnDDeDE"
Content-Disposition: inline
In-Reply-To: <1536142432.8121.6.camel@HansenPartnership.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--hABqaeELJqnDDeDE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 05, 2018 at 11:13:52AM +0100, James Bottomley wrote:

> The first suggestion is that kernel builds are pretty much automated
> and we try to make every commit buildable, so could we automate the
> machinery that allows a customer to do bisection simply by installing a
> kernel package? (we here, obviously means the distro, but going from
> git bisect to kernel package would be the useful link).

Improving bisectability would obviously help with other testing efforts
too - we have existing users, Guillaume Tucker implemented automated
bisection support in KernelCI which is incredibly useful providing one
can actually bisect.  Right now it works pretty well a lot of the time
but there are cases where it gets messy, especially when you add boot
issues onto the buildability ones.

--hABqaeELJqnDDeDE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluPv+oACgkQJNaLcl1U
h9BBZwf6AriMg8QWw64DE76/kUhR+zdgrdfYEaQ+M7K+ZG97mKS1j6qJJEpzGg4m
CK3FD5HWP/VEyEXt88imJm8KfaFI46HNzmt17uCQwOaHckDDE88LChNUza4HFxsi
e6f622oeGhojd84K3eyt0TwIZJnG2uv8b74cVDJPq4Y6sb6sFaQnHeUrRYXEf9MN
h6Wj2b5EM2g1cz//PuBdjVs47bU+s1eGWKTJKj0MiwB+T9REVf+adPe/Gwt0DEwL
35wnWHlAjaBeP6gXCuJcSHzf3+sqKJw6pR2OTLO2vHUXfOCn4u5qnq9NlOl4AX/X
WRFBBHO4RrUv9U+dobW6V3+Fy7Jrwg==
=uacL
-----END PGP SIGNATURE-----

--hABqaeELJqnDDeDE--
