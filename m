Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 559B89C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 20:14:55 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E16CA203B8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 20:14:53 +0000 (UTC)
Date: Mon, 12 May 2014 21:14:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20140512201438.GE12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TYUwb/23X2F3rAeM"
Content-Disposition: inline
In-Reply-To: <1872038.43ncqEMWSx@avalon>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--TYUwb/23X2F3rAeM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 12, 2014 at 07:43:22PM +0200, Laurent Pinchart wrote:

> The problem is not limited to IOMMUs. We have similar dependencies at=20
> suspend/resume time with camera interfaces for instance, where two comple=
tely=20
> unrelated device in the Linux device hierarchy (a camera interface platfo=
rm=20
> device in the SoC and an I2C camera sensor) need to be suspended and resu=
med=20
> in a controlled order. I'm sure many more use cases exist.

> Whether we can (partly) reuse existing infrastructure for this is not cle=
ar.=20
> I'd like to gather use cases, to first find out exactly how widespread th=
e=20
> need is, and whether we can come up with a common solution or we are real=
ly=20
> faced with different classes of similarly looking but distinct issues.

This is something ASoC has been resolving since forever with the machine
drivers, Russell King recently created a generic version of the code
that does the dependency deferral glue (see linux/component.h).  It's
not a model of elegance but it ends up getting the job done.

Anyway, I'm definitely interested in this - a couple of the subsystems I
maintain are affected and it's something I've thought about a bit.

--TYUwb/23X2F3rAeM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTcSurAAoJELSic+t+oim9aLcP/RkUOsoMqQmXPA6cqu0x05FL
y5on8m3Sz8BhsfJNrqh2zIPHozT3vDTwewbpeWfCiZIvkarY1Z7hcWmMA7inJRFc
MQibM/MurSWvhIjQrKEOHI0iwYjvJwgHZYaCU6OhalMukQaM0J9uTpVzzp/4FlBJ
FEKx/lrv7c1efNBxX28+6zYiuBaXAQwlHoKT6cGl9m49FOcLqSkNRpqvNTwBcft3
KiqSfoBMgdOPKdp/h8IuRHwYBc+JJN+grDeZLFniZXGMOAmBJ/L/SbviViYQ1Ukg
9OuFVHdoZKG1KhRohl5QFbB+Pb8aQUS9//DoSfho4x92tD2z8BN7/+vB6bg+vip0
ujHybJ9szSeiWjj9Xj51han19Aops0lu2g/x/W4TJ5bKy5enjqywPYLPX6IUoBUc
AJFGbdqaTVdRnhdXSeNLuUG20SaS9+o9kc47+9t3LAUzxXPDvRTyP1crc7dk9G4Z
pRDcgwWBDhai49zm6XjqB0B+kBAR2VxiycpFXYSe1+4PzZjw2YTnCr3vDee75gA5
D1Z23QtSS5SWMEEqJt1fGnokIfyE8zF5IgKWeJrdzzKKNOEHklZhYfuddujnO5Tr
h1D0rmQpKnljnBPn+z6f1YBOUGkGctLFmTXVidC0DmwdTPJOYxBVOCaXOY8YDqoO
ODUhK4+twKllIPsmF3zo
=T66I
-----END PGP SIGNATURE-----

--TYUwb/23X2F3rAeM--
