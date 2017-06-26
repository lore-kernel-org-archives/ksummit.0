Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3EDBD728
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 12:22:28 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 58983CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 12:22:27 +0000 (UTC)
Date: Mon, 26 Jun 2017 14:22:24 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20170626122224.GA11441@amd>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626083407.GA9621@amd>
	<20170626112052.oze7qxmxiyu67wzh@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="nFreZHaLTZJo0R7j"
Content-Disposition: inline
In-Reply-To: <20170626112052.oze7qxmxiyu67wzh@sirena.org.uk>
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


--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > > 2) How to handle GSM audio?
>=20
> > > What is the issue here?  Isn't GSM audio just another audio source/si=
nk
> > > which user-space can send where-ever it likes?
>=20
> > It is somehow packetized, and has timestamps and gaps in it, I was
> > told. That's why we use /dev/cmt_speech, not ALSA. Probably ALSA
> > should be improved.
>=20
> No, such systems can and do work absolutely fine with the existing
> frameworks.  You just have non-upstream drivers that don't make any
> effort to work within existing frameworks.  Most of the vendors came
> round to doing the right thing on this some years ago.

Take a look at ./drivers/hsi/clients/cmt_speech.c in your favourite
kernel. It was merged in 2010 AFAICT.

									Pavel

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--nFreZHaLTZJo0R7j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllQ/IAACgkQMOfwapXb+vKrTQCgsz5JvUMbAZB99c2/Q5YHOYD+
UwMAn0DkmLAPdU+EA4Fj6vuMDkGpQnHm
=Xb5K
-----END PGP SIGNATURE-----

--nFreZHaLTZJo0R7j--
