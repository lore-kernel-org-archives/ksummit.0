Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AED4EB3F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 06:12:14 +0000 (UTC)
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3AA621BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 06:12:14 +0000 (UTC)
Received: by pacti10 with SMTP id ti10so42250517pac.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 23:12:14 -0700 (PDT)
Date: Mon, 24 Aug 2015 23:12:10 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20150825061208.GA13186@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline
Cc: Zhang Rui <rui.zhang@intel.com>, Jean Delvare <jdelvare@suse.com>
Subject: [Ksummit-discuss] [TECH TOPIC] [CORE TOPIC] The three ways of
 temperature sensing in Linux
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

[Not sure if this is TECH or CORE, as it touches more than one
subsystem]

Not sure how late it is to post this, but I am trying anyway.

During LPC 2015 last week it came out the topic of the interaction
between the thermal subsystem with HWMON. On top of it, we also got a
proposal [1] of having thermal exposing its registered devices as IIO.

I know the three subsystem coexist today for some years. They also have
their own design goals. However, the fact that we have three different
subsystems for doing very similar task may be confusing, for the driver
writer, and for user space too.

Another aspect of it is the possible code duplication. For example, it
would interesting to get board temperature sensors, typically registered
as hwmon devices, to be available in the thermal subsystem while
constructing thermal zones out of them. Some user process would expect
the opposite though, to read the thermal zone sensors as hwmon devices,
or as IIO devices.

Therefore, it would be interesting to have a better convergence on how
these subsystems talk to each other, and how this is exposed to user
space.=20

The involved maintainers are:
HWMON:
M:      Jean Delvare <jdelvare@suse.com>
M:      Guenter Roeck <linux@roeck-us.net>

Thermal:
M:      Zhang Rui <rui.zhang@intel.com>
M:      Eduardo Valentin <edubezval@gmail.com>

IIO:
M:      Jonathan Cameron <jic23@kernel.org>

BR,

Eduardo Valentin

[1] - http://comments.gmane.org/gmane.linux.kernel.iio/19627


--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJV3AcxAAoJEMLUO4d9pOJWf8AH/RbKjGzMn0SLyqZTc8yMcKYr
OQc1OLERmSWBy9T/A7em6RDEEYGWgdOJBB6dxBkR7FrJKusaVEewqF7+bjgqECef
BiLZe1/7QeaO+ata86cVNW0dp/rSdoMUo/3RqfUiU64OwcV4RZXVHykl8mo290P9
+ceh+eU56dF90XIOoztr/Xxq/QSpdoiiH7eWCRFq7ZDZVnT0Xm39HcxsfPen+vOU
fB1w2POcAS2ZIjPw6Mg1DEnY0zwqXQpxUcSCjoA8KJqpGxzFevaUOKMwO85BHfTc
fCAeh4NV+rbNtMOtoRrGH/ZavpFpdaaHWew1OEIhOlzqcDTobFFqhH5xeSf1tC4=
=yDnb
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--
