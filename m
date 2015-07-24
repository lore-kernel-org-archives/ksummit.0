Return-Path: <monstr@monstr.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 93AD467
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 24 Jul 2015 09:58:14 +0000 (UTC)
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5E88112D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 24 Jul 2015 09:58:13 +0000 (UTC)
Received: by wicgb10 with SMTP id gb10so21288604wic.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 24 Jul 2015 02:58:12 -0700 (PDT)
Reply-To: monstr@monstr.eu
References: <20150723105711.GB30929@amd>
	<CACRpkdYeud0s6ZyvW8n+0oPQ+S7uP1CTv22wQhvtwfD7iHKL2A@mail.gmail.com>
	<20150723121025.GA29747@amd>
	<CACRpkdaDOUAm_VOd+3H2khDYUsLgNcXKbYMypUTeNL6JbnqCAA@mail.gmail.com>
	<alpine.DEB.2.11.1507231524530.364@east.gentwo.org>
	<alpine.DEB.2.02.1507231552020.7582@linuxheads99>
To: atull <atull@opensource.altera.com>, Christoph Lameter <cl@linux.com>
From: Michal Simek <monstr@monstr.eu>
Message-ID: <55B20C2D.50807@monstr.eu>
Date: Fri, 24 Jul 2015 11:58:05 +0200
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1507231552020.7582@linuxheads99>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="Be9h6pBf6U0nRCOtl04IsJAWbkuvtIPxU"
Cc: Jason Gunthorpe <jgunthorpe@obsidianresearch.com>,
	Pavel Machek <pavel@denx.de>, yvanderv@altera.com,
	Alan Tull <atull@altera.com>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] FPGAs and how to program them
 from kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Be9h6pBf6U0nRCOtl04IsJAWbkuvtIPxU
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 07/23/2015 11:20 PM, atull wrote:
> On Thu, 23 Jul 2015, Christoph Lameter wrote:
>=20
>> On Thu, 23 Jul 2015, Linus Walleij wrote:
>>
>>>>>> People that might be interested:
>>
>> I would be very very interested in the subject matter. Anything that h=
elps
>> creating some abstraction layer that allows the open source developmen=
t of
>> tools on top.
>>
>> _______________________________________________
>> Ksummit-discuss mailing list
>> Ksummit-discuss@lists.linuxfoundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>>
>=20
> Jason is another person who may be interested in this topic:
> Jason Gunthorpe =3D jgunthorpe at obsidianresearch.com
>=20
> My work has been to get a uniform API for FPGA programming into the
> kernel along with an interface for controlling reprogramming.  My
> current patchset separates the two so that if the interface I am
> proposing doesn't meet somebody's use needs, another interface
> can be written to use the API functions.
>=20
> http://marc.info/?l=3Dlinux-kernel&m=3D143714949226387&w=3D2
>=20
> Topics that have been discussed in the mailing list could be included=20
> here:
>=20
>  * At least two different basic use models:
>    * FPGA as hardware (containing harware devices that need drivers)
>    * FPGA as accelerator.  If FPGA is an accelerator, it could be
>      allocated in a malloc-like thing - Alan Cox's proposal.
>  * Device Tree Overlays as an interface in the "FPGA as Hardware" use,
>    where loading an overlay will cause FPGA reconfiguration, bridges
>    getting enabled, and devices being created, drivers probed.  The
>    code for accomplishing all this is actually quite small.
>  * Some use cases are complicated systems that need a lot of userspace
>    to bring things up in a sequenced way (may need another interface
>    with lots of userspace control and FPGA status available to
>    userspace).
>  * Security issues that arise if FPGA programming can be controlled
>    from userspace.
>  * How to control the bridges. Some hardware needs the bridges disabled=

>    during FPGA programming.  How to conceptualize this in the device tr=
ee.
>  * It is likely that these different use cases will best be suited by
>    different interfaces.

user space part is probably the most problematic topic which needs to be
discussed.

Thanks,
Michal

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Microblaze cpu - http://www.monstr.eu/fdt/
Maintainer of Linux kernel - Xilinx Zynq ARM architecture
Microblaze U-BOOT custodian and responsible for u-boot arm zynq platform



--Be9h6pBf6U0nRCOtl04IsJAWbkuvtIPxU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iEYEARECAAYFAlWyDDAACgkQykllyylKDCGahgCdFRJ6tbOpslnaZUKPoKpWBm4s
Wo0An2mhheuL/iiqhPOZ4EQ4ywm1sw72
=GYra
-----END PGP SIGNATURE-----

--Be9h6pBf6U0nRCOtl04IsJAWbkuvtIPxU--
