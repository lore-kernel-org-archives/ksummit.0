Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 95C26D7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 21:08:00 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [88.99.104.3])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1344713A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 21:08:00 +0000 (UTC)
Date: Fri, 28 Jun 2019 23:07:58 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: "Luck, Tony" <tony.luck@intel.com>
Message-ID: <20190628210758.GB5956@kunai>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Pd0ReVV5GZGQvF3a"
Content-Disposition: inline
In-Reply-To: <20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Pd0ReVV5GZGQvF3a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> I don't see why someone in the future trying to debug some problem
> introduced by this commit would care that earlier versions had some
> spelling mistakes or were missing a Fixes: tag. :-)
>=20
> Where substantial changes were made between patch versions it
> would be useful if the commit logs were adapted to say things like:
>=20
>  "We considered using technique X to do this but rejected
>   it because person Y said it had problem Z"
>=20
> That captures for posterity the useful information without
> bulking up the commit log with the blow-by-blow deltas of
> how the patch series evolved across 27 versions submitted
> to the mailing list.

I fully agree.


--Pd0ReVV5GZGQvF3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0WgaoACgkQFA3kzBSg
KbaSsg//QLSCBC4ToZ0ck5qvHwo45CUPf3ceHPXDd8ZKfjGsfEMoI30Een574SBD
axHFvzfkA8hvzFGBa6wVlLAVDoHMU1ZlKyXNeu0i2HSXPi2WAlPfy5fmGwH0OMOy
iWHSG9cGVpO3ytEVCqymy3x46PQXc+PGZ5MzVigo6ZB4sOu5aa5IGoDVoObRf1du
br2XMHOZ7rDNBc0ECMQwv7eQco6U4Y5tk1rbZ59w4sMwd83JkKaIUn9Ynxw1euCN
7YbKEoJ+H/pEJ+2F1uMEYduqVeK22S58oxcEI9vHAQUjOBwmgFzyKlGNquaJGI5S
1oY4kd4S0d55zshCvGHiaOv6DvdWuPUXTtkkUNK4IjUuarFT9j/odJ6ARkjw/a8W
17JXWaePSgZldQk/oTR/+DvKojXw4EiimNSZgnyOFcbHtV0We2GXKf41SDSG1WsF
0KxORr+7ThKxVS1YUb0DuHLteJ9a8CeFCNn/faV+cDw+s/IS13Cvd1brPnr1Ce2a
lAp3FIPhiAUQ+herGsnPnPYxrItzzMJspdVGIywWvhJGvF0XGBfdnLTdqY5qYVUr
Ktg1jIlwPNjT+MdhKfadhZdBf72DBmTchCmXyoNEK6W9XQZPfg+qXisTJM7y0a33
8tIv8jJnClzt+TMwNYVvz0XWdvavsjfFYWl8o1ivkIDsCufNh30=
=Pahz
-----END PGP SIGNATURE-----

--Pd0ReVV5GZGQvF3a--
