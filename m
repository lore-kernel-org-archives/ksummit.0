Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4A799E32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:51:09 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D24EE6D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:51:08 +0000 (UTC)
Date: Thu, 6 Sep 2018 11:51:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20180906105105.GD5360@sirena.org.uk>
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
	<CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
	<20180905083120.GA28353@kroah.com>
	<CAKMK7uHLACdr4vGexqO-oh+QrRqxq0_KyJdhnr_eAZy6ApwWUQ@mail.gmail.com>
	<CACRpkdYP1_kG+nzg0Op-3VoLqRm8nUpXf8Daf_1B17-wWJyLjA@mail.gmail.com>
	<CAK8P3a09LAbSUyLR5DTAea35xtOgRpjRYkK1EGo1kDMEQjH4uA@mail.gmail.com>
	<CACRpkdZW03DuMVQ8Rn5GOiiN2z16cqq0WMmQFZquaGBp4BpsCA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EY/WZ/HvNxOox07X"
Content-Disposition: inline
In-Reply-To: <CACRpkdZW03DuMVQ8Rn5GOiiN2z16cqq0WMmQFZquaGBp4BpsCA@mail.gmail.com>
Cc: Jon Masters <jcm@redhat.com>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Challenges in Upstream
 vs. Embargoed Development in Intel Graphics.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--EY/WZ/HvNxOox07X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 06, 2018 at 12:43:05PM +0200, Linus Walleij wrote:

> It happened at one point that we were sourcing hardware from
> a third party, and it was pretty complex and I asked procurement
> to put a demand on the company to provide upstream support
> so we could just grab the latest kernel and use that driver.

> I heard other very FOSS-oriented companies ask the same
> and is pretty much what I've heard people like Jon Masters
> and the Chromebook people say in relation to upstream first
> (they can slam me if they disagree) - others also want an
> upstream first approach from their component suppliers and
> it is going to be part of the procurement process so having
> upstream first is going to be a competitive advantage or
> even strict requirement for the component vendor.

I've had experience of this from the component vendor side, we managed
to convince some of our customers that our upstream first approach was
good for them and that it should be something they look for in other
vendors.  The basic idea was that as we were working with the system and
getting things reviewed any integration problems were unlikley to be on
our side but rather with drivers from companies that weren't working
with the community and may have misunderstood things and things were
more likely to be robust, and it increased the chances that they'd get
long term support and be able to upgrade their kernel if they wanted to.
They might not ship upstream themselves but they benefited by working
with vendors who were focused on upstream.

--EY/WZ/HvNxOox07X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluRBpgACgkQJNaLcl1U
h9DMrAf/QmYEmf6XnqV+kS0Htjc4zC8f12QYhw6Pf9vOy99gt75I9JovnIofc4Kz
bDjEVccM2sOpSLkve63p7JQ8IUOh9TW3+543jLbvJvlU1uuV5R//FPH7hgeboSvf
aZzq8TUONNpb/oqNs9VFGNrgOY+/T5KJo5Ks/Um2ofH5p0r8rs4BArB6zwDn0VZr
D6fcGtEGbFTXYhlTbtmQY1t8vU4lvuGw/y5DminID7rvAiu+wl3m+MhbfyojY2Gc
zbcXlaENZC0t5vT4aguoPrZt1xZskWQTebiZZNEg5K3e/2MOeYzIRPSfm2uisFPL
f2kMcWy6m9gmIR/Y5Nqtf9ULLxlNVg==
=yC2e
-----END PGP SIGNATURE-----

--EY/WZ/HvNxOox07X--
