Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2F9967AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 15:21:10 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D4BCC289
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 15:21:09 +0000 (UTC)
Date: Mon, 1 Aug 2016 16:20:52 +0100
From: Mark Brown <broonie@kernel.org>
To: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <20160801152052.GU10376@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<98eb563b-5d62-74df-692a-f2aa4f7b07b8@xs4all.nl>
	<20160729111303.GA10376@sirena.org.uk> <2525670.QGOuaEkzC4@avalon>
	<93f7ce34-c2e9-583f-2e6f-1f23ae76a761@xs4all.nl>
	<a4640467-d916-d52c-a905-152a53251f94@metafoo.de>
	<20160801105531.2687069a@recife.lan> <579F6049.9030408@samsung.com>
	<63f6e3b4-3a48-182f-e8d5-87e720b60d5d@metafoo.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qa1NXTiqN6KSzHv0"
Content-Disposition: inline
In-Reply-To: <63f6e3b4-3a48-182f-e8d5-87e720b60d5d@metafoo.de>
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


--qa1NXTiqN6KSzHv0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 01, 2016 at 04:54:46PM +0200, Lars-Peter Clausen wrote:

> Another option is to teach the device core about critical resource
> dependencies so that a consumer is automatically unbound by the core if any
> of its resource dependencies are unregistered. The device can also
> automatically be re-bound once the critical resources re-appear.

This one is what ASoC really wants to be able to do with the current
model it has - unbind the card and go back to waiting for the components
to reappear.

--qa1NXTiqN6KSzHv0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXn2jTAAoJECTWi3JdVIfQNUgH/jKAwoGZazgBGpYmO/Qs2Y5I
MlBsgf9TNTyhpr9lZhvUvgHWxSgM3kjBjqnbJEJjesFvBbOyPAzmaBeMjAspU7e3
QAFCXt3OtSdsQNPyUgAjKnO/yemtzLco5yCXbqusFi0h/4u74ATn8Yf0a7DFrw9K
Oi9aaq71uAQhGkoXwM+BO9y+7OapKBUEj/8ia0kr3BqCza+TOmAPVQrazUUkvV7Y
1LcXQhLdEoYr/cmJkGReKae42Mv+TnZjCU3CoDWSl6/qgdBmyjn89aovU7rFM2tu
/GKn2HYrEIkV9GyGwE4xfYR1ei07rDpeTTZivwHGWaGVzjHWtIx/ZFU0KBnDz+w=
=ltzN
-----END PGP SIGNATURE-----

--qa1NXTiqN6KSzHv0--
