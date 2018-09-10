Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8915DC22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 11:10:20 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 02EA771C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 11:10:19 +0000 (UTC)
Date: Mon, 10 Sep 2018 12:10:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20180910111015.GB5856@sirena.org.uk>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<20180906225531.GB2251@localhost.localdomain>
	<nycvar.YFH.7.76.1809071526320.15880@cbobk.fhfr.pm>
	<20180909125554.GB16474@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vGgW1X5XWziG23Ko"
Content-Disposition: inline
In-Reply-To: <20180909125554.GB16474@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--vGgW1X5XWziG23Ko
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Sep 09, 2018 at 02:55:54PM +0200, Greg KH wrote:

> There are other examples of this, spectre fixes for arm32 are not in any
> stable tree older than 4.18.y.  Same for other arches and kernel
> versions.

Not really relevant to your point but just for clarity those should make
it back to the LTS versions at some point for arm32, they've been held
up behind some of the other entertaining backports.  Which is itself an
issue but there we are.

--vGgW1X5XWziG23Ko
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluWURYACgkQJNaLcl1U
h9B9Igf+K127J8eRUpN13kcSOjD0TZQmcJlcKPR9kbjvOWW5vEOrL8wPBNIQ8qX2
EnJPz0wRACZfDTQbExcnjAb/NVc9u26BktGO0mVK2ep+3f8qoE8xpMofXKZU0Xmp
RbMKl0mDsxT4qHpSbB/a7pGw4YrHbih2w86MHaWevoXPKLR3BF3Rr4igCk7l3xmK
LXR+7GDCWicWFSawdxqGvbCwgOCtYrPMNlsynQjDuon2fUmYDJThxta1D1CZ5dBU
o3m2D2QNj4EwdtEIWh8TNssGcB4PxwIsQZrK62U65pseOYGXrryQ5erhc/B5flrO
bJHw/euUw2muJUsid6lL94G8stYwww==
=iUl4
-----END PGP SIGNATURE-----

--vGgW1X5XWziG23Ko--
