Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E3F8E480
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 10:48:53 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 17A0FE9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 10:48:52 +0000 (UTC)
Date: Sun, 25 Jun 2017 12:48:50 +0200
From: Pavel Machek <pavel@ucw.cz>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20170625104850.GA24717@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="vkogqOf2sHV7VnPd"
Content-Disposition: inline
Subject: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--vkogqOf2sHV7VnPd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

Situation around mobile phones is only improving very slowly. We now
have hardware that is supported in the mainline kernel in useful way
(Mitac Mio A701, Nokia N900, N9, N950). Graphics acceleration is still
missing.

But there are major pieces missing: first is userspace. That's not for
us to solve. Then there's some kind of hardware abstraction layer;
kernel currently does NOT provide enough information for userland to
autoconfigure everything.

There are big questions about kernel / user interface. We have whole
subsystems missing. They include:

1) Who is responsible for shutting machine down on low battery, and
not bringing it up unless safe?

2) How to handle GSM audio?

3) How to handle differences between GSM modems and between GPS
receivers? Is AT commands/NMEA good enough? What about AGPS upload?

4) How to handle accelerated RGB LEDs?

5) Do we need suspend-to-RAM to handle power management? If so, how
can we handle automatic sleep an still be compatible with Unix?

6) Do we provide compatibility for old v4l2 apps on complex hardware,
or do we wait for libv4l to get support? How do we provide information
such as camera aperture to the userspace?

=2E..and probably many more.

Plus of course, there's a lot of work to be done to get different
phones supported.

Best regards,
								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--vkogqOf2sHV7VnPd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllPlRIACgkQMOfwapXb+vKu1wCdHoGz1I+mRlHo51xCubuS8luZ
9rEAnjIW4FP6aPMjtKrrTDhN+VnnwleP
=b5d9
-----END PGP SIGNATURE-----

--vkogqOf2sHV7VnPd--
