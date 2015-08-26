Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 39BCEB90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 00:12:41 +0000 (UTC)
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DD627EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 00:12:39 +0000 (UTC)
Received: by pacti10 with SMTP id ti10so67035755pac.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 17:12:39 -0700 (PDT)
Date: Tue, 25 Aug 2015 17:12:31 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20150826001229.GE5772@localhost.localdomain>
References: <20150825061208.GA13186@localhost.localdomain>
	<2185734.lNGgzKaky2@phil> <20150825235518.GA31163@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="hoZxPH4CaxYzWscb"
Content-Disposition: inline
In-Reply-To: <20150825235518.GA31163@roeck-us.net>
Cc: Zhang Rui <rui.zhang@intel.com>, Jean Delvare <jdelvare@suse.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] [CORE TOPIC] The three ways of
 temperature sensing in Linux
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--hoZxPH4CaxYzWscb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 25, 2015 at 04:55:18PM -0700, Guenter Roeck wrote:
> On Tue, Aug 25, 2015 at 11:31:46PM +0200, Heiko Stuebner wrote:
> >=20
> > So far I always thought hwmon was some sort of grandfather to the therm=
al=20
> > subsystem without any specific api, but I've also not needed one at all=
 yet.
> >=20
> Yes, I have heard that before.

And that is a misconception, I would say, as both have different design
goals. Keep in mind that my original proposal is to discuss what touches
the monitoring part.

>=20
> Its scope is quite different, though. One does thermal management, one mo=
nitors
> the hardware. Monitoring the hardware is a bit more than just monitoring =
its
> temperature. It also means to monitor and report voltages, current, power,
> energy, humidity, and fan speeds, as well as associated alarms. Thermal
> management takes an active role, hardware monitoring by its nature doesn'=
t.

I agree here. Also, keep in mind that the scope of thermal subsystem is
not only monitor temperature, but also cover what needs to be done when
the system state changes and needs action, typically on top of
temperature thresholds/trip points.

>=20
> On top of that, many devices report much more than temperatures.
> System managers may report and sometimes control all of the above. SuperIO
> chips monitor voltages, temperatures, and fan speeds, and often implement=
 fan
> control. PMBus devices primarily control voltages, but may report literal=
ly
> everything except for humidity (including fan speeds). And so on.=20


There are discussions to have power / voltage / current (and humidity
too) inputs to the thermal subsystem. And that's probably where the issue
gets worse. Another take we could have is to centralize the hw monitoring
part of the problem in, well, hwmon, and make thermal a user of it. Then
we would move the thermal drivers, at least the sensing part of
them, to hwmon. But then again, we still have the IIO case :-).

BR,

Eduardo Valentin
>=20
> Maybe just have a look into drivers/hwmon/pmbus/ltc2978.c, and let me know
> where you would like to have this driver (and all the other PMBus drivers)
> moved to.



>=20
> Thanks,
> Guenter
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--hoZxPH4CaxYzWscb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJV3QRnAAoJEMLUO4d9pOJWVeEH/24Ar7WMcdKkyOwIeIFMlGoy
9pXePOx8bznAIyDZ5zIMz7LtVRCf/EY4zEvEzF0QfKCKDzcoeapaHvgNhqn5x7iR
x8NkMcrju79boBiMs2I/sOKJzc1n6Gv0OoYWy1OF8s9wYnPTELft04ZSFCVR5Jft
yUbZQH/w+Ux1uT4zlwlu3lfcea63307qEMiwR9hp0UCb6UYpX/ANv51R1549ngT2
VPn09A7mKdN5dluqjAmArLknuHZbyNdF2ZBTn8RZbUfQneqUQvtVqB+70uEOE2fM
DjTpfNzSH0KXO25YuZF2L6+YQ5T86zJwJY5BbmiX0qETK+IkbAMGQoAfR1ji8gM=
=pjz4
-----END PGP SIGNATURE-----

--hoZxPH4CaxYzWscb--
