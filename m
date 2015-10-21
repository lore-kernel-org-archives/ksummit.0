Return-Path: <broonie@sirena.org.uk>
Date: Wed, 21 Oct 2015 18:25:28 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20151021172528.GQ32054@sirena.org.uk>
References: <20151020220328.GA21941@thunk.org>
	<CAOesGMiZrhXk4W=VScQ9ctnSqzCt6ba4QkPKAeACdaBRhDEjbw@mail.gmail.com>
	<20151021145626.GD2165@thunk.org> <5627AD56.7050500@roeck-us.net>
	<20151021160907.GM32054@sirena.org.uk>
	<5627BF30.4080703@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BN1FuguMf1o6kBCi"
Content-Disposition: inline
In-Reply-To: <5627BF30.4080703@roeck-us.net>
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] Kernel Summit Agenda -- 2nd draft
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--BN1FuguMf1o6kBCi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 21, 2015 at 09:37:04AM -0700, Guenter Roeck wrote:

> Does submitting patches all over the place benefit or hurt my reputation
> with other maintainers, given that the percentage of rejected patches
> is quite high ? I don't know, and I don't really care that much since my
> ultimate goal is to get problems fixed, not to get my patches accepted.
> However, for others it may play a role when deciding if or if not to
> spend the time, track down a problem, and submit a patch for it.

Yeah, I mostly just report problems (partly because it's just less time
consuming).  On the reviewer side fixes like that only get to be an
issue when submitters ignore feedback and keep on sending the same stuff
even after discussion as to why other approaches are better.

> >I've seen some active resistance to pushing fixes to mainline without
> >lengthy soaks in -next in a very rules based fashion which isn't super
> >awesome when it takes out other testing due to the breakage.  As the
> >test coverage improves this is going to be getting to be more and more
> >of an issue as failures to build or boot will cause gaps in other
> >testing.

> For fixes ? I don't recall seeing that reaction, at least not to patches
> I have been involved in. Unless in very special cases, it doesn't seem
> to make much sense to me to require bug fixes to soak in -next.

It's definitely not the norm but I have encountered it.  Obviously
indivudal cases will differ, sometimes there will be value in exposure
in -next (eg, if it's likely to get validation from the boot farms),
it's a question of what the issue is, what the coverage is and what the
risks of the fix are.

--BN1FuguMf1o6kBCi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWJ8qHAAoJECTWi3JdVIfQTfkH+wTUBuBTC9ATMWO/0RIal9Oa
709N5SN5JJEaP8nqPf9X0poFFKrz7k2fKcUc7OGKSm/Mj6wFh/YPnPwKv2cNGCrc
QCLuW6jj21h+LhRmF7faymc9ikSX18aZDN+kLhCuLgqCasPHgbEoYC+jWUw9RWRa
xW+RLPAIYEWQbIH4fZBlUTOESjHGbblGk+IDIhRTFr/YTBv0vaQetnUYvg4Uhpvs
byXCqj62ii5+BzrGso5ACHuKVjaPSsn2tGm7m4b3qTaQcDBim4eM74XRPU8oLFPN
dIxNCK+UyVlBsEj2CkLwrN6Nm37fhB1J9qQe4MHxrKyVttQ+DvYW9T6cdX29nmk=
=z1FD
-----END PGP SIGNATURE-----

--BN1FuguMf1o6kBCi--
