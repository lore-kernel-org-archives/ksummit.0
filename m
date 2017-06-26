Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 05640AB9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 12:38:57 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6491F3CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 12:38:56 +0000 (UTC)
Date: Mon, 26 Jun 2017 14:38:53 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20170626123853.GB11441@amd>
References: <20170625104850.GA24717@amd>
	<20170626105451.tv4k7ib2g2kiknah@sirena.org.uk>
	<20170626111422.GB11688@amd>
	<20170626114946.bw35etwxa2nungsi@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8GpibOaaTibBMecb"
Content-Disposition: inline
In-Reply-To: <20170626114946.bw35etwxa2nungsi@sirena.org.uk>
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


--8GpibOaaTibBMecb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon 2017-06-26 12:49:46, Mark Brown wrote:
> On Mon, Jun 26, 2017 at 01:14:22PM +0200, Pavel Machek wrote:
>=20
> > > Do you have some more specific concern?  This already works basically
> > > fine upstream, we happily support off-SoC audio paths.  The digital
> > > configuration could do with being more flexible but it works and peop=
le
> > > ship it.  It would be awfully nice to have some control/visibility of
> > > the modem side but that's just a missing driver problem.
>=20
> > Well, I was told gsm audio is different, because it is packetized, has
> > additional timing info, and does not transmit silence.
>=20
> Those things are true, however this is all handled inside the modem so
> nothing else in the system sees anything there.  Even if we were to see
> things this is pretty much just VoIP over a funny carrier (some of the
> 4G standards are just SIP AIUI) which isn't too hard.

I'm still asking for one example of system that's properly designed
according to you.

It may be "VoIP over funny carrier" -- but how do you suggest we
handle it? ALSA is for soundcards, not for VoIP so maybe
/dev/cmtspeech is okay after all?

> > So we have /dev/cmtspeech instead of second sound card.
>=20
> That's just whatever random thing you're working on.  It really
> shouldn't be a second sound card on a well designed system, the phone
> audio generally doesn't go anywhere near the CPU for latency reasons so
> the whole system is one sound card.

First, where can I buy example of such well-designed system?

Second, no I can't agree. I certainly don't want baseband CPU to talk
directly to my speakers/microphone, for security reasons. Then there's
an option to process the sound between sending it over GSM, record
calls, etc. I quite like the flexibility, too. Latency problems are
solveable in software -- N900 with Maemo has reasonable call quality.

Third, I already have the system, I'm asking how to support it cleanly.

> > Is there any GSM audio driver that actually uses sound framework
> > properly?
>=20
> The modems tend to just be stub drivers to Linux as the audio port
> doesn't vary configuration at runtime but I'd be a bit surprised if a
> modern phone wasn't broadly aiming towards the right thing, this stuff
> started appearing in flagship devices in about 2012.  The speyside
> system in mainline isn't actually a phone but models what's going on.

Well, the flagship devices are have 1000000+ lines of diffs relative
to mainline, due to Qualcomm, right? :-(.

								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--8GpibOaaTibBMecb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllRAF0ACgkQMOfwapXb+vKEtgCgkI3d2R+T9AS/mWQhr6Pvttjz
ZfkAmwQkCxRCpf5i24ORbg77xi1h81yC
=/Bpc
-----END PGP SIGNATURE-----

--8GpibOaaTibBMecb--
