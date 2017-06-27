Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 80C60B7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 21:57:31 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9B395183
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 21:57:30 +0000 (UTC)
Date: Tue, 27 Jun 2017 23:57:27 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Sebastian Reichel <sebastian.reichel@collabora.co.uk>
Message-ID: <20170627215727.GA5250@amd>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626064947.GF23064@atomide.com> <20170626111207.GA11688@amd>
	<20170626114931.GG23064@atomide.com> <20170626131401.GA11980@amd>
	<20170626134904.GH23064@atomide.com> <20170626204932.GA19396@amd>
	<20170627071835.GJ23064@atomide.com>
	<20170627121455.tljtekx6bmzlezxa@earth>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="k+w/mQv8wyuph6w0"
Content-Disposition: inline
In-Reply-To: <20170627121455.tljtekx6bmzlezxa@earth>
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


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > Is GSM connected directly to the audio, or does it need real-time
> > > task, similar to N900?
> >=20
> > The audio mixer is on CPCAP PMIC, and I think mdm6600 modem audio needs
> > help from the Linux kernel on the applications processor as it probably
> > goes to it first then to CPCAP PMIC. I guess it's possible that mdm6600
> > audio goes directly to CPCAP PMIC too.
> >=20
> > I believe LTE modem is connected to the second SPI interface on the
> > CPCAP PMIC and can use it directly for audio depending on how Linux
> > kernel configures the PMIC secondary interface device access. What
> > seems to be a similar PMIC for the CPCAP internal devices is documented
> > in MC13783UG.pdf on NXP site so that might be worth looking at for
> > the audio overview.
>=20
> GSM audio is connected to the audio codec using digital audio
> interface. The audio data normally does not flow through the CPU
> (but as far as I can see it could be routed that way, if desired).
> So no need for any low latency stuff on CPU side. Actually no need
> to do anything except for proper setup of modem & audio codec :)

Thanks. Droid 4 just got more desirable ;-).

> > > It looks like nice machine. OTOH N950 looks like a nice machine, too,
> > > and N900 is actually nicer because of the resistive touch, battery,
> > > and friendly bootloader...
> >=20
> > Sure, my n950 just got so worn down I was afraid I don't have any
> > replacement. And we need some kind of potential community upgrade for
> > n900/n9/n950 anyways while waiting for better devices :)
>=20
> I think Droid4 and N950 are almost on par regarding to mainline
> support. N900 is has better hardware support in mainline - actually
> once your camera bits land it reached basically 100% with just the
> GPU missing. OTOH it's quite slow and has only 256MB of memory.

Well, the camera pieces only work with 1.2Mpix resolution... and still
need a ton of userland code to be useful. But yes, major pieces are
there, with exception of ... useful audio for voice calls (and tons of
little omissions and flakiness and bugs).

Oh, another major piece is DSP coprocessor that is there. Unlike
graphics, we don't even know how support for it should like.

And actually, N950 has working Bluetooth, which gives some interesting
possibilities, too.

Best regards,

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--k+w/mQv8wyuph6w0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllS1McACgkQMOfwapXb+vJT0ACeIuow0OnEvoqYLTgplCGadOlU
HVUAn02gpO6areTDar1+8KFNZ4dJ8zF9
=AzDX
-----END PGP SIGNATURE-----

--k+w/mQv8wyuph6w0--
