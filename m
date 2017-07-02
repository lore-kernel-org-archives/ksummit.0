Return-Path: <sre@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7FAC06C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Jul 2017 12:11:08 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DA211A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Jul 2017 12:11:07 +0000 (UTC)
Date: Sun, 2 Jul 2017 14:11:04 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170702121104.azcq3jhx3hmjphq5@earth>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626083407.GA9621@amd>
	<20170626112052.oze7qxmxiyu67wzh@sirena.org.uk>
	<20170626122224.GA11441@amd>
	<20170627114026.iwsqbbwytleyurmi@sirena.org.uk>
	<20170628183756.GA30277@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="etg75cr7hhrzxovq"
Content-Disposition: inline
In-Reply-To: <20170628183756.GA30277@amd>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--etg75cr7hhrzxovq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 28, 2017 at 08:37:56PM +0200, Pavel Machek wrote:
> Right now, first priority is to get useful quality of the voice
> calls. If Nokia is the only one, then this is perhaps not a big
> problem.
>=20
> I'd like to know how Pyra handles this (
> https://pyra-handheld.com/boards/pages/pyra/ ).

It provides a normal PCM interface, check
20161116-DragonFly-MAIN-4G-sch.pdf, page 11 from here:

https://pyra-handheld.com/boards/threads/power-memory-and-schematics.78631/

The Nokia phones are really special in this regard.

-- Sebastian

--etg75cr7hhrzxovq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAllY4tgACgkQ2O7X88g7
+pr9jg/+OIRRhslU1TEbIyNbyDZjxN7sbuiI/K2XSJqkUI9ZCHfS/u54hnFvGqYm
zh0r+qH6wcVG17g/krFuysoojrnC5yRkIKCP8NdhWBo33ZmIELqdb1iLIIO7GgHv
3jajpK1/25tYCiYXnrUKHU3Gg/9dApJ4Em52l1/NpLYTlVtHJCiU7JYi6jJbizuI
v6/3X0O6aoWTLqiK9mqPHY9istsQl+fu5E+B3iWp2hGfUlHVfVB0uO7+dI7FPgoa
ntBVbwI63avxssNQorxxAwSpNonI5jF1a5mgVUqe4wrsipCE1c45sGfnl43S8OXD
Pd2d1YqTvMV+A6WUHHBruw+KBMs2b+MTHUkkLyT1CgtGhXaesYN90Eyoooph9Ktk
xqZ/lWP1qs8qrgAzwWgNVYGWUo7DWrjMWwXGrLHiUxJvbVnxaQNV1jFJY7d27eBG
mwooQfhL9YdBDKOfaSwLxW6UlSDQjtEbpcpR6iofnz6GxZgIFVirj1yNYD7O1W3Z
cWBnqwwTBL9gMf/iNiLA2sEPLtr2wpO52TbvJUCX9CyE3b9KCA29FJcCqPPhwbD6
EuVBlRC6SRevlMjthdDBYlgo/Rb+3k2R2YorXRbSHHTz2XNzxRwBx2yCUL1c11Oa
NT09/P+SIwqEz6hN1sPMM4Vgi5FCRec6Eix5hiRjVreGofOZ/3g=
=3hN0
-----END PGP SIGNATURE-----

--etg75cr7hhrzxovq--
