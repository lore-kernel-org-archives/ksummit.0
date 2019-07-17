Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F2BDCE8F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 16:40:51 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [88.99.104.3])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D05828B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 16:40:50 +0000 (UTC)
Date: Wed, 17 Jul 2019 18:40:49 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20190717164049.GA4532@kunai>
References: <20190706142738.GA6893@kunai> <20190714103509.2dd72c90@archlinux>
	<alpine.DEB.2.21.1907141157410.1669@nanos.tec.linutronix.de>
	<20190716211636.GA6679@kunai>
	<CAOesGMgaw3Xq4gCkSsyHW_n8ETkpSKwe5f_oBsz_+s3c+XsnTA@mail.gmail.com>
	<alpine.DEB.2.21.1907170026200.1767@nanos.tec.linutronix.de>
	<bf269ea7-6a9c-25db-5b97-958d9e15bddd@infradead.org>
	<20190717073130.GA1021@kunai>
	<CACRpkdbydfyx8LMG8FzCzAYsTP9n57K0yw9_04wgtDSjm+B3iQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline
In-Reply-To: <CACRpkdbydfyx8LMG8FzCzAYsTP9n57K0yw9_04wgtDSjm+B3iQ@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > Guys, I am just trying to better cope with an amount of patches I can't
> > handle on my own currently.
>=20
> Maintainers don't scale right? :/

Yup, no news here.

> What I tend to do is git log on whatever is affected by a patch
> and then pick some people who touched the code recently
> and just add them to CC and ask them to help. This is especially

I do this, too. I also ask people from the same company as the patch
author to jump in.

> nice with drivers as I can quickly see (by intuition) whether
> they are doing some general cleanup or actually are running
> and testing the hardware, even if they didn't sign up as
> maintainers. Sometimes nudge them to maintain the stuff
> they seem so intimate with by adding themselves to
> MAINTAINERS.

I do this, too, and it works OK. I got a few driver maintainers listed.
Some are really active which is nice, some disappear again which is sad
but not too surprising. Yet, for every active new maintainer, I have to
check how they review.

This is what I mean with "trust matrix getting complex". Lots of new
maintainers where I need to build some trust relationship. Maybe it is
just a workflow thing, yet I feel I need some kind of tracking to do
this. And other stuff I mentioned in my initial mail, especially a short
summary of the review and a higher awareness that reviews can be
constructively criticized.


--LZvS9be/3tNcYl/X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0vT40ACgkQFA3kzBSg
KbbCLQ//V84Aend7qWxbFNf/JA99YKshi8bGamkUE46aeulbCS3GPxNCT1RZjjWm
qdgSnNEhN0p/ggpxy5ymtnHyMUBZ5uahujRqRsUcPzeZ9mIdq77UqEB+MOsMvNZR
vCPs+8/VsN9U3j1bKZgyVE/TCJoOhYgDDYqtIv9wp775CLmsQsMrZsk1rTtRbuDd
HtHD3t8gA1FF+SaVWHejNVXmEUEB8uUnV+8V+8KbWZoL5cXq6Uto5TBlmQf9DkWI
sCh8TFDrVKfHbRbAtWgW4yYAfTbzw+XZYTxzDS6Uw/f3YH3YwlHFBWXwPWrXt0xq
ozs6mttFmBp7/XQYnpTcsYRPCu8W0kPMfiaoLJFg+PRpGShSOaVo1BZ18w3KQPKV
MjfCEpHswN/PIFHT4tT1v6Y+8v1V3aMnGSnnJe3Sfn8VolnbmIUcuiOnKvCA9Jxc
+HzGWZCc86hBl5Ey4bfcEa6WFzM5YAfQrZzXrf9yN/hHKlRe4absvkAy4tSf7uYA
RlRtVDedwwrj38xsxARvcFQ+QqcLz8PKZBGfCTa/jH+D2cIzaCjikCTMPUykzGLY
8FTV6Ly8wSpxNrjd3Msmpg70dGaRcp/qIQDjoPD2AHG5NAubNa+Hkvdhqm2gZ/3P
1bzVSh361jAqrmohG/qPiwhcEv4EniLYjWoJumcsTD5rTiLnbA4=
=nycg
-----END PGP SIGNATURE-----

--LZvS9be/3tNcYl/X--
