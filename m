Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5B43FB0B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 16:36:12 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [89.238.76.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E9FA11F8A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 16:36:11 +0000 (UTC)
Date: Wed, 14 May 2014 18:36:08 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Peter Huewe <PeterHuewe@gmx.de>
Message-ID: <20140514163608.GH12911@katana>
References: <20140509170709.GA9747@redhat.com> <20140511111034.GA6400@katana>
	<53706EAB.7010601@monstr.eu> <20140512093235.GA2872@katana>
	<1400074363.4759.8.camel@jlt4.sipsolutions.net>
	<537374D0.8020307@roeck-us.net> <20140514152224.GA12911@katana>
	<trinity-66028479-dfde-4cf7-8530-4cbe587ae018-1400082294215@3capp-gmx-bs51>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="RwGu8mu1E+uYXPWP"
Content-Disposition: inline
In-Reply-To: <trinity-66028479-dfde-4cf7-8530-4cbe587ae018-1400082294215@3capp-gmx-bs51>
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


--RwGu8mu1E+uYXPWP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 14, 2014 at 05:44:54PM +0200, Peter Huewe wrote:
> > Ditto. I personally use 'C=3D1 CHECK=3D"ninja-check"' which is a wrapper
> > which calls all static analyzers I know of.
>=20
> +1 on ninja-check
>=20
> Care to share your wrapper?

Here, be warned that there will be some output you need to get used to
;)


#!/bin/sh -u
# wrapper to call various static checkers for kernel builds.
# Use: make C=3D1 CHECK=3D'ninja-check' ...
# done by Wolfram Sang in 2012-14, version 20140514 - WTFPLv2

check_for()
{
	command -v $1 > /dev/null
	ret=3D$?
	[ $ret -eq 0 ] && echo "    $1" | tr a-z A-Z
	return $ret
}

# Get filename (last argument)
eval file_to_check=3D\${$#}

check_for sparse && sparse -Wsparse-all "$@"

check_for smatch && smatch --project=3Dkernel "$@" 1>&2

check_for cppcheck && cppcheck -f -q --template=3Dgcc --enable=3Dall --lang=
uage=3Dc "$file_to_check"

check_for spatch && MODE=3Dreport scripts/coccicheck "$file_to_check" 1>&2

check_for flawfinder && flawfinder --minlevel=3D0 --quiet --dataonly --sing=
leline "$file_to_check" 1>&2

check_for rats && rats --resultsonly -w 3 "$file_to_check" 1>&2


--RwGu8mu1E+uYXPWP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQIcBAEBAgAGBQJTc5t3AAoJEBQN5MwUoCm2X/IP/1sobsaMSVybmL551tHBHtoH
JhqPLHQdLMUaJX/ajz2i8gjxyiOs2+HJJIRpoYnU2Eon4n4pvUzMLy53oprhLKGN
tJTgHKxGI4xAS8w4Y8OfXhRj5sjLGPE23VYhwute6kGbK4pPltYpUzj3EgdSH1iW
4CyNK+elgFNR9qawcblFWU0WSjbVqfBBBYZpQcBlSVCVTnZAdJJ1xQzeHv1pZByZ
tdhTP3KhjoEf2nfGM5/tFrPryAE0xdBou2RNASZKbuG11/GhRCOUPOCE2Pzfupqb
mgb/i9ODpGr5Xs5mZF7KrTrYSVKIQDbRDbH+zZ/DradtP5t0SspR/PWD5NfqnXLj
w7nCGWaqLqRT3ABEYcjpuMc0+m25OrHMCoR5bv4xxcPdTYCw9H/EOG40Qxr/odFY
rtc5NmSmIxVyS3g0KL+G9FHkzZj7oNI0KLib4/OSIpvTr4N8pmidKaBufrRQpkJJ
+Ei6Ukqp0OKg+hrPNtrx0qWDeTVDOTGtA+6QDbbDTgdw/4gyp6d0HasKoJYM2YQw
20zbypqX1KA4yBEUZvQqOYwPq84/7/P0O2llevGweHvg+HzSvrtB1AofKeHj6PYG
K6RD2tbuw1AzSXzg5Fg44wRrqTf0/r6Lw8PEI1a8r52Bf2UP91zStJjgBb7D91Ud
p0oJYMozlBOFz0kieGxR
=kjWE
-----END PGP SIGNATURE-----

--RwGu8mu1E+uYXPWP--
