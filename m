Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 73EC694B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 11:13:28 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EA4BD23B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 11:13:27 +0000 (UTC)
Date: Fri, 29 Jul 2016 12:13:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <20160729111303.GA10376@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de> <579A7DFD.60305@metafoo.de>
	<98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline
In-Reply-To: <98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 29, 2016 at 09:45:55AM +0200, Hans Verkuil wrote:

> My main problem is not so much with deferred probe (esp. for cyclic depen=
dencies
> it is a simple method of solving this, and simple is good). My main probl=
em is
> that you can't tell the system that driver A needs to be probed after dri=
vers B,
> C and D are probed first.

> That would allow us to get rid of v4l2-async.c which is a horrible hack.
>=20
> That code allows a bridge driver to wait until all dependent drivers are =
probed.
> This really should be core functionality.

> Do other subsystems do something similar like drivers/media/v4l2-core/v4l=
2-async.c?
> Does anyone know?

ASoC does, it has an explicit card driver to join things together and
that just defers probe until everything it needs is present.  This was
originally open coded in ASoC but once deferred probe was implemented we
converted to that.

--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXmzo9AAoJECTWi3JdVIfQcN8H/R/errPo2kIbfX4kNsCQyDsD
5dsOPC6u1+Z8g20pDUftRtmzzLzTgICB5z08H7Ao6lgDofLRGPOKOWoDH7XAGK+P
5hajjiNHiqeFpF6JaW6I3e7Cv/eJifha8smsuOHphFWA9O0BUkT58Z5OeYyLl6Wm
DpRO2Cy8RjiJnTPD8EF/79LzmkBThCCfzcHMt/3cQE0OpNFTKRDa/LftPbNictU9
EAUcKnEf3sX5qDbTEnj3MXiOKYoiIJHdzpIGEfRc7BjrC6LPe9qErrL6634Qlegw
EFZMP5n9/jd//od+JVxOH5wQcWQ5R16EFHKjxUSdD62QNwYElPl1giWGyKw3e5w=
=2tpL
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--
