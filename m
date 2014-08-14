Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BF9A046
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 15:34:05 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B7F4E20320
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 15:34:04 +0000 (UTC)
Date: Thu, 14 Aug 2014 16:33:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20140814153346.GZ17528@sirena.org.uk>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
	<20140813180743.GB16662@roeck-us.net>
	<CAMuHMdVEYEsk1EtBbAAinJ=7m5SRh-w4DZb=_N0gaMgpvtRadw@mail.gmail.com>
	<20140813224507.GA29606@roeck-us.net>
	<20140814001450.GW17528@sirena.org.uk>
	<20140814003827.GA359@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="uQ0m6R+2sT9gTfoC"
Content-Disposition: inline
In-Reply-To: <20140814003827.GA359@roeck-us.net>
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


--uQ0m6R+2sT9gTfoC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 13, 2014 at 05:38:27PM -0700, Guenter Roeck wrote:
> On Thu, Aug 14, 2014 at 01:14:50AM +0100, Mark Brown wrote:

> > arm64 should work most of the time - I've been building it daily and
> > reporting the results, it's also pretty clear of warnings which is good.
> > There's a couple of disappointing problems at the minute though.
> >=20
> I don't get past

> scripts/mod/devicetable-offsets.c: In function 'main':
> scripts/mod/devicetable-offsets.c:190:1: sorry, unimplemented: function
> profiling

> This is with gcc 4.8.1 for aarch64, built from buildroot, and host gcc
> 4.8.2-19ubuntu1. Do I need a new/different compiler ?

Sounds like it - I use the Linaro toolchains.

> > > arm:allmodconfig was quite useful, but it has been broken since 3.10 =
or so,
> > > and I don't think it will ever get fixed.

> > Why not?

> Beats me. The longer it is broken, the more difficult it will become
> to fix it, and thus less likely.

There are people who actively care about that configuration though.

--uQ0m6R+2sT9gTfoC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJT7NbWAAoJELSic+t+oim9/OgQAIxJ0mF9e+940heHJOwQgKsz
8HVzm6ct+bZwHqq4zrQmWKb8PJwBTwdXFysyq+bGRnyRx37RNvpoGgYzbHgzhBkx
R7s4gQGQGkwMte6nxGKDCeI3KT0ITc6E+HifyhgntmTG7petEMZKu0XtnrQv5zbj
T+6Q14buOiBat6/3mbQoP1zcrFabWwy4ILmVZRMsU+/wGGjjgWoDIYDECF4iQkxK
W+Emx3/wMA17N9jWZcqLYKQhJZru4k6NqAB14Eugv9OiMBaHD6gF5dKt55EdHg5h
KeJ+FuTK/pJ+ueRW4b9vsn7BnpiKsGdG2IMO+sAnVKTuva4pEOTuPczGksVg3Xbp
SuZODaN+RNqb7VUibAX9U7MbExMNm2v0yJXz3ggnhU1Of802U5jNpqmhzvErcx0Q
gxG30Y+3WWYXo6bwiJwppfR/b1tm4ao2j09siKKsnceaceyjYYrZcVFyttls3F//
ZP2UF+w0dLUS0oYjEsiblaJLCjhr6ODo8ACDbrbmM6RdYKtIkmucx5Rm0NysME5L
GkfqzH6QZy+cgQvDlwh2YjaKlrUQM6SCQspZ6ZB1pZJ+6BtBDG2JkczFDvpJSGnE
F9bumxH0/oSwxMxOA2QI+Kf6HZ212ag7TpWHG/XK9XYgVKY18mz5WRKOoMlVUqEt
U4MxPbXbv8ZYIHcwmsr1
=VdjE
-----END PGP SIGNATURE-----

--uQ0m6R+2sT9gTfoC--
