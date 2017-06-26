Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16D32970
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 11:14:25 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9C4531D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 11:14:24 +0000 (UTC)
Date: Mon, 26 Jun 2017 13:14:22 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20170626111422.GB11688@amd>
References: <20170625104850.GA24717@amd>
	<20170626105451.tv4k7ib2g2kiknah@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gj572EiMnwbLXET9"
Content-Disposition: inline
In-Reply-To: <20170626105451.tv4k7ib2g2kiknah@sirena.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--gj572EiMnwbLXET9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon 2017-06-26 11:54:51, Mark Brown wrote:
> On Sun, Jun 25, 2017 at 12:48:50PM +0200, Pavel Machek wrote:
>=20
> > 2) How to handle GSM audio?
>=20
> Do you have some more specific concern?  This already works basically
> fine upstream, we happily support off-SoC audio paths.  The digital
> configuration could do with being more flexible but it works and people
> ship it.  It would be awfully nice to have some control/visibility of
> the modem side but that's just a missing driver problem.

Well, I was told gsm audio is different, because it is packetized, has
additional timing info, and does not transmit silence.

So we have /dev/cmtspeech instead of second sound card.

Is there any GSM audio driver that actually uses sound framework
properly?

Best regards,

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--gj572EiMnwbLXET9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllQ7I4ACgkQMOfwapXb+vJOgACgmblazZPr7Ve4Ny3VQILz0ZiV
rhgAnRlHJBmlsHq19u/FctBA/Bkg7RIC
=tQgV
-----END PGP SIGNATURE-----

--gj572EiMnwbLXET9--
