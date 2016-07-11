Return-Path: <broonie@sirena.org.uk>
Date: Mon, 11 Jul 2016 18:11:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20160711171146.GD3701@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
	<20160711151300.GB3701@sirena.org.uk>
	<20160711170333.GE3890@thunk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IMjqdzrDRly81ofr"
Content-Disposition: inline
In-Reply-To: <20160711170333.GE3890@thunk.org>
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


--IMjqdzrDRly81ofr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 11, 2016 at 01:03:33PM -0400, Theodore Ts'o wrote:

> Very few people will actually be merging them, and in fact maybe
> having a patch queue which is checked into git might actually work
> better, since it sounds like most people are just cherry-picking
> specific patches.

I think at this point even if people are cherry picking patches it's
probably still going to be easier for people to work with a git tree
than anything else - the workflow for git cherry-pick, looking for
dependent patches and so on is pretty clear, the upstream commit IDs are
there if you prefer to go direct to them and if you really do want a raw
patch stack then it's easy to translate into one.

--IMjqdzrDRly81ofr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXg9NRAAoJECTWi3JdVIfQ1lEH/ieXpj2iv7VG9uReAOhTW4jK
FDKZ67NcJ7VghTtfSlfJoeLMgVmQK1F9MTlE0noQ96+McdG+Wdgsrt4YMp90pyB2
1rtfOx+nzplLg27Bt7IKZKAU2pZrTpAykwDCOKeiF0izZ0C+rrZOvHiYV7pctYoU
HCv0IHH1dfuJPSzXAGiRfHPjz+swNofakGIsDDmZLZeCJj8SxX5L2huPE5S91kBV
XypXQMKZ9ahE2ybLpvcQ4tDDspZ6pfY3sPTk5ZTknM+gwTl8jYQDWLYOpBqVLHGf
EUAOxhZkU5rHVODaN9yAe0HJBx6mMzYkuGx1/TZQNCAcltHnlLGjxhVM7QKc7cE=
=/9pw
-----END PGP SIGNATURE-----

--IMjqdzrDRly81ofr--
