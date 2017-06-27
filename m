Return-Path: <sre@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B7ED92F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 12:39:53 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E15E1D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 12:39:51 +0000 (UTC)
Date: Tue, 27 Jun 2017 14:39:48 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170627123947.krne6a2saolcndih@earth>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626083407.GA9621@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="urzt7uvvvocmxb6i"
Content-Disposition: inline
In-Reply-To: <20170626083407.GA9621@amd>
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


--urzt7uvvvocmxb6i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 26, 2017 at 10:34:07AM +0200, Pavel Machek wrote:
> > > Situation around mobile phones is only improving very slowly. We now
> > > have hardware that is supported in the mainline kernel in useful way
> > > (Mitac Mio A701, Nokia N900, N9, N950). Graphics acceleration is still
> > > missing.
> > >
> > > But there are major pieces missing: first is userspace. That's not for
> > > us to solve. Then there's some kind of hardware abstraction layer;
> > > kernel currently does NOT provide enough information for userland to
> > > autoconfigure everything.
> > >
> > > There are big questions about kernel / user interface. We have whole
> > > subsystems missing. They include:
> > >
> > > 1) Who is responsible for shutting machine down on low battery, and
> > > not bringing it up unless safe?
> >=20
> > My laptop hibernates when the battery level gets too low. Why should a
> > phone be any different?  User-space monitoring and policy seems a
> > suitable answer.
>=20
> Phone is different... and I'm not talking orderly_shutdown here.
>=20
> Boot your notebook with init=3D/bin/bash, and launch fsck on low
> battery. It will blink, it may beep, but in the end it will power off
> abruptly at maybe 3.6V per cell, before battery is damaged. Now try
> the same on N900. It will not blink, and it will run battery down to
> less then 3.0V; various components will fail, you'll get screen
> flicker, and presumably your MMC will be _really_ unhappy. Eventually,
> CPU fails, machine reboots, and machine will attempt to do _the same
> again_.
>=20
> Basically we are missing one layer of protection here, compared to the
> PC case.

It should be fine to add something like Tony's orderly_poweroff to
the rx51 battery driver.

> > I think the "not bring up unless safe" decision needs to be made in
> > the boot-loader.  Once Linux boots, it tends to turn everything on,
> > then the unneeded things back off.  That is no good if all you want to
> > do is start the battery charging.  Changing this approach would need
> > a lot of work and buy-in from lots of people.  I doubt it will
> > happen.
>=20
> Problem is that bootloader does not even know about battery charging,
> and is far from having required drivers. That's why I'd try to get
> buy-in ;-).

Actually Nokia Loader does know about battery charging and does so
for really empty batteries. Once the battery is full enough it tries
to boot operating system with better monitoring capabilities,
though.

> > > 3) How to handle differences between GSM modems and between GPS
> > > receivers? Is AT commands/NMEA good enough? What about AGPS upload?
> >=20
> > My limited exposure to the different varieties of GSM and GPS protocols
> > that are supported suggests that this needs to be done in user-space.
> > There isn't any suitable abstract protocol that we could implement in a
> > kernel interface.
> > gpsd handles multiple GPS protocols and meets a lot of needs.  If it
> > isn't perfect, it can probably be improved.
>=20
> It is not perfect, indeed.
>=20
> So we currently have GPSes on serial, producing NMEA. Gpsd there may
> be good enough. But then we have different hardware, not producing
> NMEA (GPS on N900 is exposed as network packet over PHONET
> interface, there's drivers/usb/serial/garmin_gps.c with who-knows-what
> interface)... and it would be nice to have good, "native" GPS
> interface which would work in this case. (We'd like timestamps for
> incoming data and lat/long/alt + speed in lat/long/alt + error in
> lat/long/alt sampled at the same time, at the very least).
>=20
> Its similar to mice, really. We used to have gpm, now we have real
> drivers.
>=20
> Plus there's still issue of AGPS data upload.

On N950 there is an unsupported gps connected via i2c iirc (with
unknown protocol that needs to be RE'd) and TI's WiLink provides
GPS on a shared UART link with bluetooth-style header using yet
another protocol. I agree, that we should have a GPS subsystem.

-- Sebastian

--urzt7uvvvocmxb6i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAllSUg8ACgkQ2O7X88g7
+podGg//QJArREPh765zb2R4/4enB1VJWYsY9L3SFciiXpnyJsrUCfvYq6wGEp/h
ZjaM9u3PAlPVErVAgtKJUP1ypeuJtc4PUaaBqefSzqI1WDTdVIBNXgJh9FjBvw3B
PRkKa9yAWDJ9UOmaJU5lbVOKEJYuL3Eitn9thF2uShVS5385R/tBu0Fpxq44VjBm
KztKxo6J8ubbHGi+leVExp05LIiwMMAs9WIXgGQOd+8Ilau++xfOFdFZe8+ymMXW
dERGbSYfGYPBw3oAsx5oobnw/Sty0rIp5bAGFbG2VG9oGOHlY2SWoE2tGfXREEaB
268RcqWFm1gppCF1NlvCWGqtukBZnR54JaouDj4tpF2Xt2ZwT2UEP0SSBTyU6SoM
5pG/TCj8PuORzRUAuiT3PAsACXZV8oOwPRJH8XdIFADfREqDFxtv7RacFoPFL3DQ
9LiPiC71wicBilBP2TKgEvT1iUv0uyNVWwPzs0aJX1o+lBcZjt8mTHCdhKn1xxbL
R8v4Fshs0O666iFPjVpjJ2FZT4DBdkDVElGiH1eVjXFQqLAf59flt0hHOSzi99ei
F3xQj7iNLf45ZoKCAaM0MpKoGKQdvdmxkJKvcG1gRuViVKS36jvuzVs2/u69dNjZ
7GgCo0qicTLcv3S+TbqEnkxcdEhsOm/jnmLkXXqNGlIIJnx9qCY=
=nYnY
-----END PGP SIGNATURE-----

--urzt7uvvvocmxb6i--
