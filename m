Return-Path: <monstr@monstr.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 91E27990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 06:10:58 +0000 (UTC)
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A5BF52026F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 06:10:57 +0000 (UTC)
Received: by mail-ob0-f172.google.com with SMTP id wp18so294460obc.17
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 04 May 2014 23:10:56 -0700 (PDT)
Message-ID: <53672B59.8060401@monstr.eu>
Date: Mon, 05 May 2014 08:10:33 +0200
From: Michal Simek <monstr@monstr.eu>
MIME-Version: 1.0
To: Josh Boyer <jwboyer@fedoraproject.org>
References: <53662254.9060100@huawei.com>
	<CA+5PVA6sCLej9hhrRtaAw8hgrM7rw_R9-rWrH=VERdHY_fXGUg@mail.gmail.com>
	<53664E31.6030706@roeck-us.net>
	<CA+5PVA4Apnr-V=a3g103RO2L8mRjzVzte_5GH9p0GKRpMC=4-Q@mail.gmail.com>
In-Reply-To: <CA+5PVA4Apnr-V=a3g103RO2L8mRjzVzte_5GH9p0GKRpMC=4-Q@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="ATP0QWUkvuwq00qaioPUGKnkBUaKg81E3"
Cc: ksummit-discuss@lists.linuxfoundation.org, lizf.kern@gmail.com
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
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
--ATP0QWUkvuwq00qaioPUGKnkBUaKg81E3
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 05/05/2014 02:37 AM, Josh Boyer wrote:
> On Sun, May 4, 2014 at 10:26 AM, Guenter Roeck <linux@roeck-us.net> wro=
te:
>> On 05/04/2014 05:54 AM, Josh Boyer wrote:>
>>>> - Testing stable kernels
>>>>
>>>> The testing of stable kernels when a new version is under review see=
ms
>>>> quite limited. We have Dave's Trinity and Fengguang's 0day, but they=

>>>> are run on mainline/for-next only. Would be useful to also have them=

>>>> run on stable kernels?
>>>
>>>
>>> Yes, but I don't think that's the main problem.  The regressions we
>>> see in stable releases tend to come from patches that trinity and 0da=
y
>>> don't cover.  Things like backlights not working, or specific devices=

>>> acting strangely, etc.
>>>
>>> Put another way, if trinity and 0day are running on mainline and
>>> linux-next already, and we still see those issues introduced into a
>>> stable kernel later, then trinity and 0day didn't find the original
>>> problem to being with.
>>>
>>
>> Not necessarily. Sometimes bugs are introduced by missing patches or
>> bad/incoomplete backports. Sure, I catch the compile errors, and other=
s
>> run basic real-system testing, at least with x86, but we could use mor=
e
>> run-time testing, especially on non-x86 architectures.
>=20
> Right, I agreed we should run more testing on stable.  I just don't
> think it will result in a massive amount of issues found.  Trinity and
> 0day aren't going to have the same impact on stable kernels that they
> do upstream.  Simply setting expectations.

We should do more testing on linux-next or individual branches before the=
y
reach linux-next and baseline kernel to ensure that new bugs are not intr=
oduced
in the mainline kernel.
When we have less bugs in baseline kernel you will have less patches
for stable.

A lot of architectures/SoC are using Qemu and others simulators.
Zero-day testing system is doing good build coverage which I believe
is very useful for everybody.
Doing the same or extending it with testing on Qemu/similators
will be next step. Then every developer is able to get message that
the patch is breaking someone else.

In general doing more automation testing via one unified framework
that all new patches will be properly tested seems to me reasonable.

Thanks,
Michal

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Microblaze cpu - http://www.monstr.eu/fdt/
Maintainer of Linux kernel - Xilinx Zynq ARM architecture
Microblaze U-BOOT custodian and responsible for u-boot arm zynq platform



--ATP0QWUkvuwq00qaioPUGKnkBUaKg81E3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iEYEARECAAYFAlNnK10ACgkQykllyylKDCH9BACgiplt7RDbzOWirz36UAq4QNDp
hVgAn0Jeujy/eTyn9/1BLQO1x6TShJw4
=+3Di
-----END PGP SIGNATURE-----

--ATP0QWUkvuwq00qaioPUGKnkBUaKg81E3--
