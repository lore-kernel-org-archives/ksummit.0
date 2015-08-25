Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8253FADC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 21:26:51 +0000 (UTC)
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ED3DB1A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 21:26:50 +0000 (UTC)
Received: by pacti10 with SMTP id ti10so63110110pac.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 14:26:50 -0700 (PDT)
Date: Tue, 25 Aug 2015 14:26:30 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20150825212627.GD5772@localhost.localdomain>
References: <20150825061208.GA13186@localhost.localdomain>
	<55DC0AA3.6010801@samsung.com> <55DC75B7.2020806@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="iFRdW5/EC4oqxDHL"
Content-Disposition: inline
In-Reply-To: <55DC75B7.2020806@roeck-us.net>
Cc: Jean Delvare <jdelvare@suse.com>, Zhang Rui <rui.zhang@intel.com>,
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


--iFRdW5/EC4oqxDHL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Guenter!

On Tue, Aug 25, 2015 at 07:03:35AM -0700, Guenter Roeck wrote:
> On 08/24/2015 11:26 PM, Krzysztof Kozlowski wrote:
> >On 25.08.2015 15:12, Eduardo Valentin wrote:
> >>Hi all,
> >>
> >>[Not sure if this is TECH or CORE, as it touches more than one
> >>subsystem]
> >>
> >>Not sure how late it is to post this, but I am trying anyway.
> >>
> >>During LPC 2015 last week it came out the topic of the interaction
> >>between the thermal subsystem with HWMON. On top of it, we also got a
> >>proposal [1] of having thermal exposing its registered devices as IIO.
> >>
> >>I know the three subsystem coexist today for some years. They also have
> >>their own design goals. However, the fact that we have three different
> >>subsystems for doing very similar task may be confusing, for the driver
> >>writer, and for user space too.
> >>
> >>Another aspect of it is the possible code duplication. For example, it
> >>would interesting to get board temperature sensors, typically registered
> >>as hwmon devices, to be available in the thermal subsystem while
> >>constructing thermal zones out of them. Some user process would expect
> >>the opposite though, to read the thermal zone sensors as hwmon devices,
> >>or as IIO devices.
> >
> >I would rather expect using only one subsystem for exporting this
> >information to user-space. If the susbsytem lacks some features then it
> >could be expanded.
> >
> >Some power supply drivers (fuel gauges or chargers) also provide
> >temperature data. They use the thermal for that. It would be weird to
> >export them through IIO...
> >
>=20
> I agree, the current situation is less than optimal.
>=20
> There are bridges from thermal and iio to hwmon, but they are not
> perfect. Resulting hwmon device names are odd, and iio doesn't support
> limits. The thermal-hwmon bridge only supports one trip point, and
> it doesn't pass alarms.
>=20
> Both the iio-hwmon and the thermal-hwmon bridge break the hwmon model
> of reporting sensor data per chip, which makes it difficult to convert
> drivers from hwmon to thermal (if that is suggested) without breaking
> the userspace ABI.
>=20
> At the same time, there is no bridge from the hwmon core to thermal.
> Currently hwmon drivers supporting thermal register with both hwmon
> and thermal, which is really undesirable. Implementing a hwmon-thermal
> bridge in the hwmon core would require implementing a new hwmon registrat=
ion
> API. That is easier said then done, and would require more time than
> at least I have available.

Yes, we do have some bridges in place, and more coming (as thermal-iio
RFC). I just would like to have a more coordinated or a better overall
agreegation of these bridges. Specially to avoid breaking
compatibility, as you mentioned in the existing thermal-hwmon, and
iio-hwmon cases. This is the original motivation of this proposal,
define a clear path for this overlap.

>=20
> This, I think, is the core of the problem. Somehow would have to go in
> and create that new hwmon registration API, if that is a solution
> acceptable to the thermal maintainers. At the same time, the thermal-hwmon
> bridge should be improved to export provide available information to hwmo=
n.
>=20


I don't think this is much of a concern from thermal subsystem, mainly
because most of the work would be first at the hwmon side.

On the other hand, I definitely agree that we need to sit down and
architecture what are the needed shared information between the
subsystems. And on top of that, how do we present them to userspace?
To avoid, for instance, having a half baked hwmon device showing up in
sysfs, if that is coming from thermal.

> An alternative would be for thermal to 'take over', convert all hwmon
> drivers to thermal drivers, and retain a compatibility layer to provide
> the data as hwmon device data to user space without breaking the existing
> hwmon ABI. Again, someone would have to do that work.
>=20

This is more in the direction of having a single subsystem to perform
the task of monitoring temperature. The amount of work will be similar
in either cases above, I would say. There is no simple way out, we would
need to touch all drivers.=20

Of course, this is a view in the hwmon <-> thermal case, but we need to
consider the iio interactions too. This is why I though of starting this
topic :-)

I think a first step would be to clarify the data that would be needed
to be shared between the subsystems. What are the involved callbacks,
and monitoring modes? Once that is clear enough, we can properly design
and write better bridges across the three subsystems. A latter step
would be to discuss the convergence, if needed at all, to a single way
of monitoring temperature (within kernel and userspace).=20

> Guenter
>=20

BR,

Eduardo Valentin

--iFRdW5/EC4oqxDHL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJV3N1vAAoJEMLUO4d9pOJW/nEH/iUE/yt7LMim60lzfZPolYnl
WZiEVGE5PAX+OBJe2arjI1D+8+EgrqqS/Xtu7ahOoZ+fy+YavYb8LmSymNC2APUP
4GzFzdRn1NOkXGMJMjE05U7bKPl6MW+heErjB5QhvmURpLLEl/K/mmUPKO+0vBMc
lmDtrFJF7qR7TvHe38Cst0kwrcleoGG9yucuAnFgrskJu0VkCJAppke66p88N63U
b3UF+t1yO+6020k0prXj0lc4CokjS1G1BRqjlzqJMmvBtWh3Cb4ewEBUEfmS5mj5
yDF69WBbwf+NoFU/tMK6EcRjL7bWV4asJa7y8iTYG6mR2yoP+uuXQyxM9XOiOfw=
=UAbc
-----END PGP SIGNATURE-----

--iFRdW5/EC4oqxDHL--
