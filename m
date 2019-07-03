Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D2501E9F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 17:05:21 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 75E88880
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 17:05:19 +0000 (UTC)
Date: Wed, 3 Jul 2019 18:05:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <20190703170515.GA3490@sirena.org.uk>
References: <37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<20190703135012.GC2041@mit.edu>
	<20190703141013.GB16008@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline
In-Reply-To: <20190703141013.GB16008@quack2.suse.cz>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 03, 2019 at 04:10:13PM +0200, Jan Kara wrote:

> So I agree in a lot of cases Link tag is going to be useless. OTOH I'm
> willing to put up with the useless Link tag for the cases where it does
> help - e.g. multiple times I'm been chasing mailing lists to find out
> what's the latest posted version of some patch and what other patches are
> in the series so that I could backport them as well. And the Link tag would
> help with this or even make it possible to automate this to some extent...

The other thing with the link tag is that if we can automate generating
it it doesn't really cost us anything - it's going to be more effort to
decide if it's useful than it is to just add it unconditionally.

--qMm9M+Fa2AknHoGS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0c4EgACgkQJNaLcl1U
h9C1Jwf8DcSq03BsVJAYRFQ2VFqq2XCWMEw+E0Nls9qOPzxPYJSptCiaQxY6hkHh
s06WQmibWKW985OW2PR97A/5oQi12+qRfP1aaS0YBCuk+e7C/Uo29cDR2+v6Nr8r
7Csz25MCszars1CnrYDcERZJhqAlqGZjKPJ7Pju7gXEyHrrnbN9HKvcvOqwSf4cW
Y7+JVt6BSRZvkAr1+A4g6P/pmNYeStOs32cl6yD/ulq7urezb6kQCH0conCn/KpN
VDwjfl/WUWyH1CrqKMXpnWRjxl5lT10bfWh9hhQlb6KyvIaf30rrHqFNpaqWj4ox
mn3c0eh/tTkNkTP4HlKQv1LDzqzCVA==
=tnFc
-----END PGP SIGNATURE-----

--qMm9M+Fa2AknHoGS--
