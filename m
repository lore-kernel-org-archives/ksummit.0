Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E47A2724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 20:33:38 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6865115F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 20:33:38 +0000 (UTC)
Date: Tue, 2 Aug 2016 21:33:24 +0100
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20160802203324.GK10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<4917794.pdgKrtIJtY@avalon> <m2ziovqag9.fsf@baylibre.com>
	<1738515.fsY7coZ0B1@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6T2vOV0TokPza8xG"
Content-Disposition: inline
In-Reply-To: <1738515.fsY7coZ0B1@avalon>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--6T2vOV0TokPza8xG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 02, 2016 at 10:44:11PM +0300, Laurent Pinchart wrote:
> On Tuesday 02 Aug 2016 11:42:30 Kevin Hilman wrote:

> > Sure.  Running tests is the easy part.  It's parsing results and making
> > useful reports about regressions that involves a little more work.

> Which again calls for a common format for test invocation and test result=
s. Is=20
> that something you've given a thought to already by any chance ?

Not substantially - the initial priority is to get something running to
generate data to allow reporting work to start and provide something to
start driving adoption in the community and then look at scaling out to
other testsuites.

--6T2vOV0TokPza8xG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXoQOTAAoJECTWi3JdVIfQL+0H/24WS87AiIT7ilC/7cSueSFf
0pxcnMA/QCG5eu55Jcm4UhX5PuLkjv4LpjW5DcjhTy9264bjB009sc3NoSg4Jz3J
ldv4ya5Sm4skCCX+H4taA/WbN0AAPWu29Rk5ImgVgAhKx1dFlyhea/8UJHa8se8z
BTQu47hs8WPomdY/dwzHRsyPYCfYuc0n6kPYejcTwZDQpxwWIxijfJyBMv24iU/d
W8aqvWjP6dyilkTEGx2ZXnAOQTidEIO7sAdlcCjbCuaSZlc0Ki/T7L3hwaqE386+
DuJhtnr3A8UxoqI4HSrdYWV6nJvK/FGJEBNombd5VEgKVlPIR/lVn8Ly4REUPeI=
=CUU0
-----END PGP SIGNATURE-----

--6T2vOV0TokPza8xG--
