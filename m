Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E36497AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 18:52:52 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 78BB38C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 18:52:52 +0000 (UTC)
Date: Mon, 19 Oct 2015 19:52:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <liam.r.girdwood@intel.com>
Message-ID: <20151019185242.GN32054@sirena.org.uk>
References: <1445272350.2481.40.camel@loki>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XBg9NAhDNArbJUtw"
Content-Disposition: inline
In-Reply-To: <1445272350.2481.40.camel@loki>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--XBg9NAhDNArbJUtw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> We are currently implementing de-compiler support to the userspace
> compiler in order to convert the binary topology files into text files
> for debug and development purposes.

> Ideally I'd like to be able to dump the topology data using the same
> format that it used for topology loading. That way we could easily feed
> them into the de-compiler for development/debug.

...this being the topology information for the entire card rather than
just that for the DSP.

[BTW, note that I typoed my address in my earlier reply]

--XBg9NAhDNArbJUtw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWJTv5AAoJECTWi3JdVIfQwgoH/2X/bXkKu0z96IC4rC7DxJM/
0XP+ym7fAPiVfaSn3l5VyBz8uI+KBz9B7c3HjMp8d37PkVbyW+El5WuHzN8/dMiy
Y8auM0jospjVZmBGEm/3Jme2EKidBC3oLnpA3UtKe3UlA5SEeT4C1ZcF446TtgWc
sUym6RKzzhW/eQmOHVz8ZwFtu+AQUR5dJI8oY/GQ2fWvyH56hyzHHeVDtlAeEE9R
RyhHr2V/NFsC9q19ZIe8gmxWPvH27djBdw/BMVd1zyqCDb0YnKcYPNYrYx+EY9Gh
sRgo4OM3T3PAUOha03yFrQ02KJRoBiuNLgKO5Jg6ftEv+EsLYBhov8gAStGwGVQ=
=B7Sh
-----END PGP SIGNATURE-----

--XBg9NAhDNArbJUtw--
