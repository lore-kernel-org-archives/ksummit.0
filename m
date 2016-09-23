Return-Path: <broonie@sirena.org.uk>
Date: Fri, 23 Sep 2016 15:40:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20160923144017.GX7994@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160921092341.GA25038@kroah.com>
	<20160921182204.GD7994@sirena.org.uk> <3836881.SjfcyqP6Si@avalon>
	<20160922162218.GN7994@sirena.org.uk>
	<20160922221451.tdh66pm7awzdzzb5@thunk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kUoBhQsr7LsiFken"
Content-Disposition: inline
In-Reply-To: <20160922221451.tdh66pm7awzdzzb5@thunk.org>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--kUoBhQsr7LsiFken
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 22, 2016 at 06:14:51PM -0400, Theodore Ts'o wrote:

> One of the problem for having one-time, special purpose teams for a
> product bringup, and then breaking them up right after product lanuch
> and reassigning them to another product/team is that there is
> absolutely no incentive to pay down technical debt, and all the
> incentive in the world to leave a cr*p job for someone else to clean
> up, especially if they are given unrealistically tight deadlines.

This varies a lot depending on where in the industry the team is - the
small temporary teams are normally not the ones doing the substantial
development but are more usually taking something that's essentially a
finished product and customizing it in some way, for example adapting
for a cost down or doing a reference design copy.  Since they're mostly
inheriting preexisting work there is less to be gained from consistency,
the technical debt is there when the teams start and they're really at
worst just maintaining the status quo.

My experience has been that where there's more substantial development
(eg, on the flagship products) being done companies will usually have a
fairly consistent team though they will also typically be inheriting
substantial technical debt from somewhere (eg, previous generations of
products, or SoC vendors if they're a system integrator).

--kUoBhQsr7LsiFken
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX5T7QAAoJECTWi3JdVIfQM3QH/ikBsW7k5sPL4dkiPCPtAZAR
3riv6dFj3VRhv+Xxxr45T3P+lN4o1mBqhUuAq6uYq9NL+vKnMzF1NPteWE9oBhmR
51pOdB63yA7JnCTpm3WU0O6eTgILTAWIYbkvoVerd8ueggP6TBqV/ZDxLz2ONvf+
gwno78dLKPbEA87JMWvMtAtYGTx7y5R7Cyr7Tl4j+LheVDShCOdT72pz7GLuJlNf
MLJaHOWba9+NJktgGW5DCtJTjYszd1Uv0Ou5Y7w5NafvRoUEKx0BAjgkVDBhyMlz
uFFaCqOgM9OpdM5Q9MFy9GJ7TCEGjDzq+vJw3JyLg2hXk1QuHLLpuT0Cke1gRxM=
=KkBo
-----END PGP SIGNATURE-----

--kUoBhQsr7LsiFken--
