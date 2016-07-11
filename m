Return-Path: <broonie@sirena.org.uk>
Date: Mon, 11 Jul 2016 15:22:48 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160711142248.GA3701@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline
In-Reply-To: <5781148F.1010102@roeck-us.net>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 09, 2016 at 08:13:19AM -0700, Guenter Roeck wrote:

> it works". We still have a long way to go to get real QA testing. As I
> suggested earlier, we'll have to find a way to convince companies to actively
> invest in QA.

There *is* some stuff going on there (slowly) with kernelci.org
including some more active work, but definitely more investment is
indeed needed.  I am somewhat hopeful that it'll be like a lot of the
other testing things where once we start to see some results becoming
available there will be a bit of a snowball effect and we'll start to
see more people getting involved (I know I wouldn't have been running a
build bot if I hadn't wanted things other build bots weren't offering at
the time).

> > There's also the volume of stable trees to consider here - we've got a
> > large number of stable trees which seem to be maintained in different
> > ways with different tooling.  One big advantage from my point of view
> > as a maintainer with the current model is that I don't have to figure
> > out which I care about or anything like that.

> The proliferation of stable trees (or rather, how to avoid it) might be
> one of the parts of the puzzle. Yes, there are way too many right now.

OTOH if people want to run a given kernel version it's nice for them to
have a place to collaborate and share fixes.

--bp/iNruPH9dso1Pn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXg6u3AAoJECTWi3JdVIfQ2agH/iyMs0zfktOGDIfqeosL7a9A
chrjKeVTZcgIZZ+mBEO3Hp6G9jvG+niJ2ESbMv4sMVJ6833K20JuyemF9qsUoRH0
Ykg6HX4M+FOpQMmhMRL3PiTWYIxHEzseAtegX7+kbodEnDt90UCjHdDM8+/3AO/x
LmfdMMJwQJLqSU3yWRfc7eNkXWdL6sYk/FEocklDNohu5HCAz7o69Dfe2mcPjHBu
nqCKGwjH0DflaR6/HvSoDdyMBgKNY6mSq+TiZFMeiCo112dAmQ0TqHX8BhVF62sH
mbPs6hih659sbhqvZVwjdrpyCHKRah6VCW8WSigtgSwRFly/xZL/IzT3biLwTe0=
=j53X
-----END PGP SIGNATURE-----

--bp/iNruPH9dso1Pn--
