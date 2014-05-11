Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4506348E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 11:39:21 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [89.238.76.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AB6F21FD42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 11:39:20 +0000 (UTC)
Date: Sun, 11 May 2014 13:10:34 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Dave Jones <davej@redhat.com>
Message-ID: <20140511111034.GA6400@katana>
References: <20140509170709.GA9747@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline
In-Reply-To: <20140509170709.GA9747@redhat.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> Last year I had been doing the coverity scans on an almost daily basis
> for 2-3 months.  Now that we're a year in, I'd like to share some
> results, and show some of the more common trends and bug patterns that
> seem to pop up.
>=20
> [ spoiler: For the most part, it's all pretty positive, but we still suck=
 ]
>=20
> It would also be good to have some more discussion about other tools
> we could be making more use of.  (Nomination: Dan Carpenter for smatch).

I'm definately interested.

In my workflow, I use sparse/smatch/coccicheck/cppcheck before applying
my own work, or patches to the i2c branches. (Oh, and rats and flawfinder,
too, but so far, they didn't point to something worthwhile.)

I am interested in workflows and experiences from other people, how
usage of static analyzers could be spread (gcc inclusion sounds great),
how to make them more robust, etc... And by doing that, get a better
feeling when an issue left the scope of static code checking and needs
some proper handling.

Thanks,

   Wolfram


--sm4nu43k4a2Rpi4c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQIcBAEBAgAGBQJTb1qqAAoJEBQN5MwUoCm2qSsP/0mRCuJAM/gfMZRrs45z1t8x
kaQQ6HY+w00gi6jUgpG0kfphaud/+MmHapym9tOtRY7oh+YTcYEfa/4cz8MxEY3w
v4cMnqKphppsxYUNnfeQA1gS2132K/rfQxtt6L15f085INSPq1yYGNi10f3aBFCm
yX2rb/oe2OV0R+lPSqEAPb3D5gl+m6LAImf8brwkVXGpdkJsethDWmdIlcNsfAnK
A/ZyYvI9oJrRkNmbPLxDKaiSdeAk9q5ddsg85pbmRPTG+qKC9QQ8ZtxqPcRq31vD
9khkLubd1ZnNZm8OyA8E2NnMpTHahnePg+wRVHQqIS/vrWHgEE8z0zRHpuhp1hIx
eYKlSnBzWVKc0yvKPFekQJdfR+HwriF78ZNkoAAiX0VQeENHY/P5BMrCQRZh+L4k
6/0sSptjhEGuTCU8kC5JfmS6PXSd8QYiUOzE7+a7SPPHrZmZiuOepdqxQQw5cHMc
xsczFn9rSqbfy8lRSnMenvSHFwJ1cqFK7BTRIIoTjZOcFas4Mf2rw79GamwMLcGg
6X9njgqWbsAVFjf0vk9vOnqHbLV7nE1UkXocOx1gL6gPY/nWsgE8dlTlfEqErXrS
bJf2N3Cm9bUuuXyhY48spCtcTuZUadgjsvrTEKA5aC7GTm8N2XpwpQ8niOwAAwQ/
oK89WV4PkgwP3lai+hqG
=AhxN
-----END PGP SIGNATURE-----

--sm4nu43k4a2Rpi4c--
