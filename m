Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59C1FB78
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 18:26:43 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DAB693CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 18:26:42 +0000 (UTC)
Date: Wed, 28 Jun 2017 19:26:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170628182629.wyep53pvfkf7kx5s@sirena.org.uk>
References: <20170625104850.GA24717@amd>
	<CACRpkdYA6Tai+dAJ8Q2w_xEJonuDtHdUnTeJze_8JyX43KntPQ@mail.gmail.com>
	<20170628162502.GA23902@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yq2erdobzqhmdg5f"
Content-Disposition: inline
In-Reply-To: <20170628162502.GA23902@amd>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--yq2erdobzqhmdg5f
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 28, 2017 at 06:25:03PM +0200, Pavel Machek wrote:

> > The problem I have in general, is that I got this development board
> > at DesignWest in 2012, and already the Qualcomm people are sort of
> > indicating to me that they consider the product so ancient that it
> > is

> The problem is called "Qualcomm". Other vendors actually care about
> mainline and support their boards longer. (TI).

> And yes, that means I'm running hardware from 2009. And yes, TI
> probably regrets me getting that hardware :-).

It's hardly just Qualcomm here, by and by large it's everyone outside of
the general market embedded and verticals that care about long shelf
lives.

> > the case for Android devices. Having upstream drivers and using the
> > kernel ABI as the hardware abstraction is the key to achieving that,
> > and it's weird this is so hard for some to see. Google definitely have
> > a role to play here.

> Well, Android already has ABI abstraction layer, even projects like
> Jolla and Ubuntu phone use it, IIRC, basically running Android in
> chroot.

That's not exactly a stable ABI...

--yq2erdobzqhmdg5f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllT9NQACgkQJNaLcl1U
h9AopAf/WXFicwSx3ASf1zj0e/rU7Izwec+Ml+szHBo9tkEyWUu8x2mZNSLO5uJl
NN4GV8rm6as9KOE36Jn7l5Oc1UGmVqbbMWzkLW+kBVnh+y9ghkcRb/JF7QE5i2BY
qYeiHQvJL8hk1MW9d3oS2yJRmzWki+NWWJ++o59J/AFkhxFtyhK2vT6OHn8gLTfo
1YC5q3LlyNqlIMbIhNEmS8UiIJAxUOqkZXfoIC0XuKKeNtDpepc8OvXGCsTp1zep
QfdHr5O0ErZdy0VxND3ujPAKWtaU61+ESr3OqWb/AK925f0eRi60RQehfE1DqoI1
7uVykan/K7Hw3fMl3gAiW+6Twp37tg==
=bq2T
-----END PGP SIGNATURE-----

--yq2erdobzqhmdg5f--
