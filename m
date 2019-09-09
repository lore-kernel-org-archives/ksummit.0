Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6548C1062
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:18:59 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D243D82B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:18:58 +0000 (UTC)
Date: Mon, 9 Sep 2019 13:18:56 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20190909121855.GF2036@sirena.org.uk>
References: <CAPM=9tx7toB7Bsif6RDo51HNxcGbbHDPHD7DjmF9i+zs-J0HRQ@mail.gmail.com>
	<1568025855.6613.5.camel@HansenPartnership.com>
	<20190909115338.GD2036@sirena.org.uk>
	<1568030467.6613.19.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1Ow488MNN9B9o/ov"
Content-Disposition: inline
In-Reply-To: <1568030467.6613.19.camel@HansenPartnership.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] vague topic for maintainers summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--1Ow488MNN9B9o/ov
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 09, 2019 at 01:01:07PM +0100, James Bottomley wrote:
> On Mon, 2019-09-09 at 12:53 +0100, Mark Brown wrote:

> > That's often a corporate problem as well, if the company has a
> > big investment in whatever approach or codebase they have they
> > may not want to spend the time on substantial rework.  Often it
> > seems fairly clear that the people doing the upstreaming have
> > inherited something from other engineers rather than having done
> > the design and original implementation themselves.  In my more
> > embedded experience I'd say that the corporate investment is a
> > more common issue than developers.

> Actually, I find the inherited code part easier because usually the
> person pushing it isn't wedded to someone else's design and is happier
> to do a rework because it makes it more their code.  My biggest problem
> has been with the original author trying to push their design as the
> only possible way and then trying to bring corporate pressure to bear
> when it became clear this wouldn't be accepted.

Yeah, both are issues - the corporate one is usually basically a
"we've decided we need to get this done in X timeframe" or a "we
have a massive investment in testing that we couldn't possibly
repeat without which any other solution much worse" so it goes
beyond the individual developer.  The developers might be happy
to do the reworks (they sometimes thank me offline for saying
what they've been saying internally already) but are being told
to push the existing code.

> > I'm not sure I have any particularly bright ideas other than
> > being clear with people about what the issues are and asking for
> > clearer explanations of what's being done and why it's different
> > to everything else.

> Trying to explain that it's a maintenance and consistency issue more
> than anything else does seem to help.

Those problems do tend to be a bit easier to get over to the
management people.

--1Ow488MNN9B9o/ov
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl12Qy8ACgkQJNaLcl1U
h9DwmQf/dtrqxpXfA44jU6+ymfuZyyT8m5RaQQB38R3C+P9yDnlL9yyKanpWYtVi
yX04y3J9c5mGMbgaOpPkoyAetb3e0nv/MqEbMDDaJdH/6buDzJdhN0AATv5fpYtL
l4ZSiCXCU7Akr3FP7viLJu9MCLFnqjut/MfigBoKM/JpbSyEThvMOu9DBDQm53vt
rgcWUNC4z/z+YozkD55BtviJ1D+T2gANxwUDEQtFrTMLHYYd7/bBNHNb0egmz/J2
Cuq5JcR6pdqAhdNTAsNIXq9YYfIRC+6yxjppunToetMqRg9wQLLXd+wCBxppx7N6
FlBYJMbQ/OdbuK4kmGBE7RMoikLk2w==
=J85U
-----END PGP SIGNATURE-----

--1Ow488MNN9B9o/ov--
