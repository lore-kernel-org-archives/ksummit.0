Return-Path: <monstr@monstr.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D30A148E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 10:14:01 +0000 (UTC)
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A8E041F9D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 10:14:00 +0000 (UTC)
Received: by mail-la0-f47.google.com with SMTP id pn19so3869503lab.20
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 03:13:58 -0700 (PDT)
Message-ID: <5379D95E.7080003@monstr.eu>
Date: Mon, 19 May 2014 12:13:50 +0200
From: Michal Simek <monstr@monstr.eu>
MIME-Version: 1.0
To: Mauro Carvalho Chehab <m.chehab@samsung.com>
References: <20140509170709.GA9747@redhat.com> <20140511111034.GA6400@katana>
	<53706EAB.7010601@monstr.eu>
	<20140518133839.487d811a.m.chehab@samsung.com>
In-Reply-To: <20140518133839.487d811a.m.chehab@samsung.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="Bki9C0W9M7pdAtfIPuUGARd8IOfrenIFx"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
Reply-To: monstr@monstr.eu
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Bki9C0W9M7pdAtfIPuUGARd8IOfrenIFx
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Mauro

On 05/18/2014 06:38 PM, Mauro Carvalho Chehab wrote:
> Em Mon, 12 May 2014 08:48:11 +0200
> Michal Simek <monstr@monstr.eu> escreveu:
>=20
>> The part of this discussion
>> should be also kernel-doc format checking because a lot of patches
>> are trying to use kernel-doc format but it is just broken - even check=
er
>> is in the kernel.
>=20
> There are several drivers still using other styles for documenting func=
tions.
>=20
> I can be partially blamed for accepting such patches, but, I don't feel=

> it is fair to refuse merging a patchset just because they're following =
some
> other documentation style. We have some really big drivers at media
> ported from another OS using Doxygen style. Fixing them would likely
> require hundreds of hours that could otherwise be used implementing
> new stuff or fixing real bugs.
>=20
> So, I would rather prefer to have a (semi-)automated tool capable of
> converting from Doxygen and other styles into kernel-doc style that
> would make such conversion an easy task.

I have no experience with Doxygen but I can't see any problem.
If Doxygen is used in the kernel in any subsystem then it should
be checked if possible.
I am not definitely saying - use kernel-doc everywhere.
But I am saying when you use kernel-doc format it should be used
and checked properly.
The same is for Doxygen and others.

Warning/error should be checked and if there is any problem patch
should be rejected.

Thanks,
Michal

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Microblaze cpu - http://www.monstr.eu/fdt/
Maintainer of Linux kernel - Xilinx Zynq ARM architecture
Microblaze U-BOOT custodian and responsible for u-boot arm zynq platform



--Bki9C0W9M7pdAtfIPuUGARd8IOfrenIFx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlN52WMACgkQykllyylKDCGhRACgmH7T5Rk/OW6jo2KHC+nDiuuz
2mAAn3U8xhuKRwKk/d51L1cGdjAQeJmp
=+ayO
-----END PGP SIGNATURE-----

--Bki9C0W9M7pdAtfIPuUGARd8IOfrenIFx--
