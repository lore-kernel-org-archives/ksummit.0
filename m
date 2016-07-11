Return-Path: <broonie@sirena.org.uk>
Date: Mon, 11 Jul 2016 16:13:00 +0100
From: Mark Brown <broonie@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20160711151300.GB3701@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wq9mPyueHGvFACwf"
Content-Disposition: inline
In-Reply-To: <20160709212130.GC26097@thunk.org>
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


--wq9mPyueHGvFACwf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 09, 2016 at 05:21:30PM -0400, Theodore Ts'o wrote:

> the latest stable kernel.  (But even if they do, apparently many
> device vendors aren't bothering to merge in changes from the SOC's BSP
> kernel, even if the BSP kernel is getting -stable updates.)

It would be pretty irresponsible for device vendors to be merging BSP
trees, they're generally development things with ongoing feature updates
that might interact badly with things the system integrator has done
rather than something stable enough to just merge constantly.

--wq9mPyueHGvFACwf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXg7d7AAoJECTWi3JdVIfQR+0H/A6k8yKWLxNpVNIzm0LQkde3
pD9w/gFmNZWhFsJeY7ZqnUuqN4cEDyFzdqAR51vuqS4IlmK3DznAcs/souAfYFYq
TMF/1EHiEIX+BUn2NnrCQjMAe8B3bC9NGpLJtfS12kA0JzBcP4765GgK+1fFwALg
8DR9H88QVw1FN0UEI3pKBqjaTFR179SLGjU4IlXOJSx1WildtwowomqqrgtnXMJY
y/FzH8X1dfy5KgRECBN1WAco/iiF9RmMIS27l7av1+8cEPgEvBrlw+f5KBi8cKMh
pKZy3ufFJGsMNbNS7lG6iOwYqKLLNB/WhkZTYJ/PMNJX+JnvLB/r+HVkFdpRvyM=
=IVU/
-----END PGP SIGNATURE-----

--wq9mPyueHGvFACwf--
