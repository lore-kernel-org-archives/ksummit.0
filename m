Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 89E931417
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:54:29 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 141623F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:54:29 +0000 (UTC)
Date: Tue, 11 Sep 2018 19:54:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20180911185422.GH10123@sirena.org.uk>
References: <20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
	<20180911170212.GC8284@roeck-us.net> <87k1nsdkl6.fsf@intel.com>
	<20180911173143.GE10123@sirena.org.uk>
	<CAKMK7uH+TeXzi7GrashWPpop3TQznHbdoPWZHFEyLxASisGk3g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PNpeiK4tTqhYOExY"
Content-Disposition: inline
In-Reply-To: <CAKMK7uH+TeXzi7GrashWPpop3TQznHbdoPWZHFEyLxASisGk3g@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--PNpeiK4tTqhYOExY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 11, 2018 at 07:41:40PM +0200, Daniel Vetter wrote:
> On Tue, Sep 11, 2018 at 7:31 PM, Mark Brown <broonie@kernel.org> wrote:

> > Some people only put things into -next after they've passed QA (like
> > Steven's thing about 0day) so you'll see branches that are undergoing QA
> > in git before they get merged into the -next branch.

> This is why we have a pre-merge CI SLA of mean latency < 6h for the
> full pre-merge run. This is from the time your patch hits the m-l to
> when the most extensive runs have completed (representing about 1 week
> of machine). Early smoke-test results show up much earlier. In
> practice this means you're almost always limited by review
> turn-around, and not by CI. Exactly to avoid the "the regression fix
> is ready except not yet fully tested" issues.

Right, though CI like that can't do the longer running tests that some
subsystems have for various things.  Don't know if that was the case
here mind you.

--PNpeiK4tTqhYOExY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluYD14ACgkQJNaLcl1U
h9CN3gf/XBKVHcbnHX67+dHpdYLT5uuJlwHK0PMbcdZ+bLiDvtw+LF9CsYEvNfuX
nHWn3HXrsg2Z6lxMCM1Adq/zOtNcLNEDCs1lcN+WGKeQQmZ0tFoBJdLxMVmGD6CK
sFaWiXJ+goLfg30AKiyzEFXFzhIkXZ9IJT5g7hiydkNA7Ybi2fr0B2y6QbZ7RtGx
OGiMFdUUPBE5EdeLBsa0ALAKuH5QJq6oAmaF8dcZoqzrZZAAG8bhE/R/z6o2RfIF
4BDfBdgjy1hiqK7mIrbdl6RILlvDUt2PRC/BnCH1Pzwwdbsrp5DfDXih3ZfFn/Cz
5Mv8dgXvJaLiXm0ZSZVeg5cv5T2Mqw==
=0dMu
-----END PGP SIGNATURE-----

--PNpeiK4tTqhYOExY--
