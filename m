Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CDDDFADF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 00:15:05 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C13DB202B6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 00:15:03 +0000 (UTC)
Date: Thu, 14 Aug 2014 01:14:50 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20140814001450.GW17528@sirena.org.uk>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
	<20140813180743.GB16662@roeck-us.net>
	<CAMuHMdVEYEsk1EtBbAAinJ=7m5SRh-w4DZb=_N0gaMgpvtRadw@mail.gmail.com>
	<20140813224507.GA29606@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="db1SyKLOwRAWUpJ/"
Content-Disposition: inline
In-Reply-To: <20140813224507.GA29606@roeck-us.net>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] RFC: Kernel tinification - kernel config
 reduction
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--db1SyKLOwRAWUpJ/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 13, 2014 at 03:45:07PM -0700, Guenter Roeck wrote:

> > The few allmodconfig/allyesconfig builds on
> > kisskb.ellerman.id.au/kisskb/matrix/ are actually not in such a bad shape.
> > Shall more be added?

I can't get that site to load...

> I don't think there are any you could add, at least none which actually build.

arm64 should work most of the time - I've been building it daily and
reporting the results, it's also pretty clear of warnings which is good.
There's a couple of disappointing problems at the minute though.

> arm:allmodconfig was quite useful, but it has been broken since 3.10 or so,
> and I don't think it will ever get fixed.

Why not?

> > You also only build some of the allmodconfigs?

> Never "only". I always also build defconfig, plus at least sometimes a couple
> of additional configurations (if available) to improve coverage of conditional
> functionality.

allnoconfig is interesting too for similar reasons.

--db1SyKLOwRAWUpJ/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJT6/93AAoJELSic+t+oim9tmYP/j9w5lB4UAmML0i4DN2+5rAw
vFZz9pwjX/uyLteFpA+7G3eGbI0NeOsTCOw0FMx6jehKSe/o2TwaSHtqaK/DO10Z
emgBfK5zoe7aoh9hs3XLp9E6Y+/TdIX15d/iT1UEkfnT5eGLddN8haNohhPflY1U
h/bT0g+nzJ89WKpaV1xC2RRgCGp/CIwTjUhgiPRjaWANUkFIHARAnAt/utO5E+7r
grE7MtMgbAxkfS3OOa3mpHFNtTgq+IsmOFxYlu+yyGoaB53SiK7EFmW3IUTTOYTq
fPmP7v9AUvsoxpqve9cAY1ZTPONokKifIr3zvJzigiZtSSmn8jnCszolyW7iMlLA
HHYHaZXbKwYGCmJVeEtEuRCrGBCqAKrDpSvmUnZ5fAbMMEJH2zCeqAE1y9ZsJU7/
6hgcTexTS4LcwyMBulN0RR5goneVODksXg0nWDOUicpNFY4BAgTqcpf3YMQs9Q2t
YJU+NvIm66DTwWd8Sq6AqaB+k7aQr5qoKQKbeltM97KpA6TzuT4CNEkfKL2LeGni
8BnBJYek7pt0yUqLYsJLAtrUmhT9YCSuMDxciN1EDswU7TJwxhYYPQooaYUc9l2i
SF2EKfCvHjWgVnEqcJ8Y8jhWrUOOR7B8fDizidZjNvsc17/k+KcLvX6tetJsmjAN
V0iZ/OLdb2GLoenSd4bS
=12cn
-----END PGP SIGNATURE-----

--db1SyKLOwRAWUpJ/--
