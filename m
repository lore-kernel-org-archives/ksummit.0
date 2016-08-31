Return-Path: <maxime.ripard@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1DCC5360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 31 Aug 2016 09:28:52 +0000 (UTC)
Received: from mail.free-electrons.com (down.free-electrons.com
	[37.187.137.238])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6EB51143
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 31 Aug 2016 09:28:51 +0000 (UTC)
Date: Wed, 31 Aug 2016 11:28:49 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20160831092849.GB14379@lukather>
References: <20160826193331.GA29084@jra3> <201608301733.36149.arnd@arndb.de>
	<20160830160450.GC26785@roeck-us.net>
	<201608302144.40679.arnd@arndb.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EY/WZ/HvNxOox07X"
Content-Disposition: inline
In-Reply-To: <201608302144.40679.arnd@arndb.de>
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--EY/WZ/HvNxOox07X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 30, 2016 at 09:44:40PM +0200, Arnd Bergmann wrote:
> On Tuesday 30 August 2016, Guenter Roeck wrote:
> > On Tue, Aug 30, 2016 at 05:33:36PM +0200, Arnd Bergmann wrote:
> > >=20
> > > > Anyway, like I was saying, no one from Linaro ever contributed
> > > > something meaningful (except some cross-tree patches, and the usual
> > > > "maintainance" patches).
> > >=20
> > > I'm not surprised at all. Most of the kernel work we do in
> > > Linaro is intentionally cross-platform (so it benefits all members
> > > equally), or it is done on those platforms that the members decide
> > > are important upstream.
> > >=20
> > One may wonder how your Linux kernel patches and merges are classified
> > per the above.
> >
> > Thank you for all your work in the Linux kernel. It is anything but
> > meaningless, and it obviously goes far beyond "some cross-tree patches,
> > and the usual maintenance patches".
>=20
> I'm sure Maxime was specifically referring to mach-sunxi specific code
> here, but it's clear how that could be interpreted differently, or
> taken out of context.

Yeah, sorry, I wasn't try to reduce or deny the huge amount of work
Linaro is doing on the whole kernel.

My point was just that, on the Allwinner specific code, all the work
done was on code that was already there, not on any new code.

Which doesn't prevent us from using a lot of Linaro code everywhere.

Maxime

--=20
Maxime Ripard, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com

--EY/WZ/HvNxOox07X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJXxqNRAAoJEBx+YmzsjxAgdToQALROjZxF7lc9NdoxC+lIyBlg
MEGg/Ld99ERglBMMxsNLrP5tUxw9b1UTpvrxjx2kn1WnIwAYTxW9v+JUE/T0bjXy
RW0oG1wn+/BntyK81cDeeS1H+R4bXVyndBXqsv3TZek/F8g4js0dTbjwx17QNR3M
XMi0rFi4iIT0KCwbxgxiqwCsxpLNfi/WKGDvVnkO3YvDFsq3zO/hsj/W84qg84F8
2E3Y3k1rJd5I9rEHEVuHEHX86e3Cm7wwFHz6i8/Q72vJrWA9cK/EYJ7KGDHgr0Ma
d6vasCE5tRFsT+5HyeZIQ1+IsfpY+ur/+UxPrT+dQlzLGYG4JQLWLPeSEtngnaLm
2f84wmPy13nx5gjHBZHpt0OrOVeTT6jlXzt5rTzfcs8TV5mYdExqMHhZ77gmBAFs
VkWMm9QJKlMTBsYLujFowY7HcyTgJ5f0hA8B2b/ygZ2JjRLERj1aFHL8t9IC4cmX
kAlSXY8vRxbRLrEYzvg1Q9W73vntcr8WZ57jh2lJJdgxz5+ducgG4GX2jDudXfVA
VmijKtrHGG3BGaflAoP9siU5b9hEWHGZoGZg0JLmPtkmAwhBnwWU1XZ57pw53pFR
zKzxI2C0K+HO6dDMYv13n+5uaFYkssqTuVy0UWw9qn4OExW18scbtQvd4NPQdJ3/
ZEzEVIaJ6CFIr3pVlsR5
=aMjY
-----END PGP SIGNATURE-----

--EY/WZ/HvNxOox07X--
