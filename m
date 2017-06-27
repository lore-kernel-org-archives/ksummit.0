Return-Path: <sebastian.reichel@collabora.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8E22C8E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 11:50:23 +0000 (UTC)
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20CC418D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 11:50:23 +0000 (UTC)
Date: Tue, 27 Jun 2017 13:41:22 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.co.uk>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20170627114122.glrzwray6oi34jla@earth>
References: <20170625104850.GA24717@amd>
	<20170626105451.tv4k7ib2g2kiknah@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z2kmqv7lcc5bwupr"
Content-Disposition: inline
In-Reply-To: <20170626105451.tv4k7ib2g2kiknah@sirena.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--z2kmqv7lcc5bwupr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 26, 2017 at 11:54:51AM +0100, Mark Brown wrote:
> On Sun, Jun 25, 2017 at 12:48:50PM +0200, Pavel Machek wrote:
>=20
> > 2) How to handle GSM audio?
>=20
> Do you have some more specific concern?  This already works basically
> fine upstream, we happily support off-SoC audio paths.  The digital
> configuration could do with being more flexible but it works and people
> ship it.  It would be awfully nice to have some control/visibility of
> the modem side but that's just a missing driver problem.

This is not a general problem, but only with the Nokia phones,
which sends raw audio data to the CPU. Nokia's userspace did
postprocessing on DSP and then played the audio via pulseaudio.
As you mentioned this requires a low latency setup of ~20ms.

@Pavel: The Nokia phones are the only ones I'm aware of, that
are implemented this way. Basically all other phones provide
a normal digital audio interface. On those systems you only
have to configure soundcard correctly and will have working
audio.

And as Mark mentioned modern 4G basically uses VoIP, so if some
vendor decides to drop audio handling from modem again it can
simply be done in userspace using normal VoIP application.

-- Sebastian

--z2kmqv7lcc5bwupr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAllSRF4ACgkQ2O7X88g7
+ppdig//RmGTHDU3PUe3OxKUHlApPRGfUicvKn+s0yWwiuRcS4dvfipDgh90WRZU
I7uN+QgJx9EsCGj0xuviV+c8gAifSUZfA/GjqJcymMctl+IA1L2h7vUJFVrql9dk
klj+n2gfhjD8caD8UJRB+SHnnuWnycF3SgxRmictXZlW6Us3iQetnMNWiTlvPKm3
CCac/ddPs7wtARorUsm2PTxbWzvgYvhthq3UVZ8HY8LQRVL4h8iMQLAX4PYrp/zb
6na13bAsFec3FVCpHD78Cd/5jgZznq22yQm1Hn0tpNXiIcCasbIzi3v/e3cmArrs
gpGzdhozX6Fwn14uQa+0yVbKCZbkma+eO9AcYCb4kKKh+BvHfsRv9XcCJ8tFnNQ3
Vr8PvC2t6cDkeOGAFEucgrsnRdD+uKa6+w2HSl7SgOaYSxgM4WmsJILJfDvaogan
PLM4fo/lPPgKXaAgZWw2XRcoRV+1YOP4DId+3PLT76m5uxAzf5yZxUuPWimvpZWG
cq2CrlP0FgI+Ou5e6AHtKkoKDtRIvoFuWFsWh/5EPEe3DU1EzjTDMOV0Bn4C6NlW
FE/g9svzUNwzpQkfHAPZb6hg/svkTvzK1gVmAlVTW2z7Thr0+Lb+I92bVCqZS52y
jImtCqYoefYiPT2j89OP191n2OAYFVxyuWva/XlNlpXHYfpJYF8=
=hoN8
-----END PGP SIGNATURE-----

--z2kmqv7lcc5bwupr--
