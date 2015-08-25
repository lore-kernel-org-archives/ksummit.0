Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4BB5EC80
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 21:13:33 +0000 (UTC)
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 610EB186
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 21:13:32 +0000 (UTC)
Received: by pacti10 with SMTP id ti10so62806887pac.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 14:13:32 -0700 (PDT)
Date: Tue, 25 Aug 2015 14:13:25 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Message-ID: <20150825211324.GC5772@localhost.localdomain>
References: <20150825061208.GA13186@localhost.localdomain>
	<55DC0AA3.6010801@samsung.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="KFztAG8eRSV9hGtP"
Content-Disposition: inline
In-Reply-To: <55DC0AA3.6010801@samsung.com>
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


--KFztAG8eRSV9hGtP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 25, 2015 at 03:26:43PM +0900, Krzysztof Kozlowski wrote:
> On 25.08.2015 15:12, Eduardo Valentin wrote:
> > Hi all,
> >=20
> > [Not sure if this is TECH or CORE, as it touches more than one
> > subsystem]
> >=20
> > Not sure how late it is to post this, but I am trying anyway.
> >=20
> > During LPC 2015 last week it came out the topic of the interaction
> > between the thermal subsystem with HWMON. On top of it, we also got a
> > proposal [1] of having thermal exposing its registered devices as IIO.
> >=20
> > I know the three subsystem coexist today for some years. They also have
> > their own design goals. However, the fact that we have three different
> > subsystems for doing very similar task may be confusing, for the driver
> > writer, and for user space too.
> >=20
> > Another aspect of it is the possible code duplication. For example, it
> > would interesting to get board temperature sensors, typically registered
> > as hwmon devices, to be available in the thermal subsystem while
> > constructing thermal zones out of them. Some user process would expect
> > the opposite though, to read the thermal zone sensors as hwmon devices,
> > or as IIO devices.
>=20
> I would rather expect using only one subsystem for exporting this
> information to user-space. If the susbsytem lacks some features then it
> could be expanded.

Yes. That would be the best scenario. I agree here. But in practice, we
have three different subsystem doing similar things around temperature
monitoring. Then, the topic is really to discuss how to either converge
to having one (which at this point, I doubt it would be that straight
forward, specially considering the fact that we must avoid breaking
userspace) or at least having the subsystems having a better interaction
between each other.

>=20
> Some power supply drivers (fuel gauges or chargers) also provide
> temperature data. They use the thermal for that. It would be weird to
> export them through IIO...

Agreed here too.=20

>=20
> Anyway from that point of view the topic is interesting to me.

Cool!

BR,

Eduardo Valentin

>=20
> Best regards,
> Krzysztof
>=20
> >=20
> > Therefore, it would be interesting to have a better convergence on how
> > these subsystems talk to each other, and how this is exposed to user
> > space.=20
> >=20
> > The involved maintainers are:
> > HWMON:
> > M:      Jean Delvare <jdelvare@suse.com>
> > M:      Guenter Roeck <linux@roeck-us.net>
> >=20
> > Thermal:
> > M:      Zhang Rui <rui.zhang@intel.com>
> > M:      Eduardo Valentin <edubezval@gmail.com>
> >=20
> > IIO:
> > M:      Jonathan Cameron <jic23@kernel.org>
> >=20
> > BR,
> >=20
> > Eduardo Valentin
> >=20
> > [1] - http://comments.gmane.org/gmane.linux.kernel.iio/19627
> >=20
> >=20
> >=20
> > _______________________________________________
> > Ksummit-discuss mailing list
> > Ksummit-discuss@lists.linuxfoundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> >=20
>=20

--KFztAG8eRSV9hGtP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJV3NpwAAoJEMLUO4d9pOJWggcH/3EmJOvaCx6wpGmTrtB4wBgo
y/FgHuceSE/inkPpIYgppZutbg1D2a6FRADAX7d5ebGDyy9AP0hrJk7JJ6jHHKnt
AjYeqEfHK5iYqha6Mwfe749zPg/qNHsdEnU+hP2f/0fcPxjQhzsfCW+d0sIz+4cb
OIMxYTypffvBtca64rOmGc91N70D/TqwPEYWORBDa0DfWVgQzuyepTp+Hsl/x61u
IyTkDx2nddCpzXsnt/Unm1LZtBrB8EinqolbAl5U6Lp9roG6ch43Cte54jQxndDx
K9wRwgZenxxjRiCrwYjnunzFQC2hNV4McDqYFMxTecM64rlVQoUTXuo/rGLsW6k=
=PXd/
-----END PGP SIGNATURE-----

--KFztAG8eRSV9hGtP--
