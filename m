Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2562972A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 07:06:47 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 409D1CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 07:06:46 +0000 (UTC)
Date: Tue, 27 Jun 2017 09:06:44 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Message-ID: <20170627070644.GA16256@amd>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626083407.GA9621@amd>
	<20170626222314.fo4hs4mymdjtuobu@piout.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline
In-Reply-To: <20170626222314.fo4hs4mymdjtuobu@piout.net>
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


--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue 2017-06-27 00:23:14, Alexandre Belloni wrote:
> On 26/06/2017 at 10:34:07 +0200, Pavel Machek wrote:
> > So we currently have GPSes on serial, producing NMEA. Gpsd there may
> > be good enough. But then we have different hardware, not producing
> > NMEA (GPS on N900 is exposed as network packet over PHONET
> > interface, there's drivers/usb/serial/garmin_gps.c with who-knows-what
> > interface)... and it would be nice to have good, "native" GPS
> > interface which would work in this case. (We'd like timestamps for
> > incoming data and lat/long/alt + speed in lat/long/alt + error in
> > lat/long/alt sampled at the same time, at the very least).
>=20
> garmin_gps is actually not desirable and is better handled in
> userspace, see:
> http://wiki.openstreetmap.org/wiki/USB_Garmin_on_GNU/Linux

Well, yes, you can put usb drivers in userspace. And in garmin_gps
case, userspace driver currently works better than kernel one.

But in case of GPS not connected on simple serial bus (USB, serial),
that will mean two drivers, one in kernel, and one in userspace, and
that's wrong.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--NzB8fVQJ5HfG6fxh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllSBAQACgkQMOfwapXb+vLx5gCeN5faJJkzjDrDCAsgT9Xc77/5
amEAoLGxtZl06yfvggZLXQMZyu6uh4yx
=TapB
-----END PGP SIGNATURE-----

--NzB8fVQJ5HfG6fxh--
