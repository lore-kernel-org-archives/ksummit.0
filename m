Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 93487B50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Jul 2019 21:26:20 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [88.99.104.3])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2507E63D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Jul 2019 21:26:20 +0000 (UTC)
Date: Tue, 16 Jul 2019 23:26:18 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Message-ID: <20190716212618.GB6679@kunai>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
	<20190715170045.GB3068@mit.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CUfgB8w4ZwR/yMy5"
Content-Disposition: inline
In-Reply-To: <20190715170045.GB3068@mit.edu>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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


--CUfgB8w4ZwR/yMy5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > Looking at Documentation/process/5.Posting.rst:
> >=20
> > 	 - Acked-by: indicates an agreement by another developer (often a
> > 	   maintainer of the relevant code) that the patch is appropriate for
> > 	   inclusion into the kernel.
> >=20
> > 	 - Reviewed-by: the named developer has reviewed the patch for correct=
ness;
> > 	   see the reviewer's statement in :ref:`Documentation/process/submitt=
ing-patches.rst <submittingpatches>`
> > 	   for more detail.
> >=20
> > I guess the descriptions are already enough to describe those
> > tags.
>=20
> I'd suggest changing the text to read:
>=20
>  	 - Acked-by: indicates an agreement by the maintainer or
> 	   reviewer of the the relevant code that the patch is
> 	   appropriate for inclusion into the kernel.

This sounds a tad too strict for me, yet I am not into bike-shedding and
will step aside if more people prefer this phrasing...

> That complaint isn't going to change how *I* interpret or decide to
> include Acked-by's, but if we have general agreement on the
> expectations Maintainers should have (and my expectations match
> yours), then perhaps we can adjust the documentation to make it more
> clear.

=2E.. because I fully agree to this. It is one of the reasons I started
this thread. Working on a general agreement. Oh, and increase awareness
that Acks and Revs can be rejected, of course.


--CUfgB8w4ZwR/yMy5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0uQPoACgkQFA3kzBSg
KbZN3xAAqF0sc3GbvPRVfykrMdoWmolXiMtwavfugq7uOpccF4WxyVM2F2zQd22J
+tgAnZl3jaotUoETKWICsYyOVtBDyiN73qsAgq4Mw+52GZXZLRG5SHCSyd2h5ZPp
yTu6aKFmjcPJ6UcFYkgCUiKmG5CLwl5pyWMT9KrfXbP2xZI9n2vZc7f1u81DdkZ5
TeVyNFgcYT0cGZnAy5fU4+4gr6a2RZyzWULDMx/XduiGwpuHNPSxOUaX1i4e5W3V
BTZrhMwciJIeh02CFZOUc2hq7yeX4mcmujaa9hPYLl/bxKbCJHZmiiMfCmZvgrjD
saQlD0ljbTHNrNy1kYYw3ioezGgFICKpcUKG3BgLfNbtZJzTcmvMQ7jxANIBDMUY
VZaR/eyrS26SrpMywwku/MHYXABg11+zs+DyQ6oNmyDLgfAKHRqL8AAFb40fYx80
1AbTuyfbm73l+Wrvn33Ym4ttxvope/uMsmDykqW9frfEy5o7kjhkZhvLrDvZmzi9
CB/dAh/9beImAp8cQJF/GBm2IWDyNoZo76zFxHVI8/QPSVGin7kPajbzj8RSSYm0
J3XYxyIDQNh5PFS9GZ3FAC91skWUP8bNo19ZZF4Zama/JoSoMgeoDBrgSl9JDJ75
BaXHOOkQ109eq/7YfrY0CBS7ICuG2Fd4LGVpPAWuH7pA0ZF1HfQ=
=HFdE
-----END PGP SIGNATURE-----

--CUfgB8w4ZwR/yMy5--
