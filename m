Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21A4FDA3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 11:21:33 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A3BC17A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 11:21:32 +0000 (UTC)
Date: Wed, 5 Sep 2018 12:21:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20180905112130.GI9781@sirena.org.uk>
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
	<CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
	<20180905083120.GA28353@kroah.com>
	<CAKMK7uHLACdr4vGexqO-oh+QrRqxq0_KyJdhnr_eAZy6ApwWUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2oox5VnwalALFvA7"
Content-Disposition: inline
In-Reply-To: <CAKMK7uHLACdr4vGexqO-oh+QrRqxq0_KyJdhnr_eAZy6ApwWUQ@mail.gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
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


--2oox5VnwalALFvA7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 05, 2018 at 11:00:12AM +0200, Daniel Vetter wrote:

> Note that the simplest solution here is to forget about upstream and
> ship on LTS kernels only. Avoids all the pain we have. And that's what
> pretty much everyone in the SoC/gfx space is actually doing, outside
> of very few exceptions like AMD&Intel. Most of the SoC drivers you see
> are reverse-engineered, so naturally they don't have to deal with
> pre-production hw fun simply because they can't even get at the hw
> this early in the cycle.

One thing I've done in the past and I know some people do currently is
to use a LTS backport as an integration point for internal testing and
development but simultaneously maintain something against -next as the
primary development platform, upstreaming anything that can be (things
like framework changes or fixes/improvements to already upstream code)
as you go.  Then when the marketing people do their thing just push out
all the patches that were held back.  That seems to work pretty well.

--2oox5VnwalALFvA7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluPvDkACgkQJNaLcl1U
h9B/HQf/aZqM1SocOVCD3Gu4cIM7vBda3cG36xQWm5CQZsvrEIbu62Japr6TnaZJ
idE6C42z38hdM0qnOpFqVGRFjMcSF+wAA6YMCa9WXuv2YWAC3Ha0Q2RRSq9dldjg
+h29/zpRCs3i/Sd8hkSF6TyyaI17qQV/YlkHJ43LGoW16UbePDLRI/5d3pzYK8gk
EE6EBJewIDayNNUim4UcImoYYMQ5YljD+mdY7ooH/jp4A5Jel0c5osrn+iXYX21S
Zcp5fDK2jhxmfP0WxO9IuqpkT0D5nu7jP2XGdak9c/aUhU1ROjBSoc9iRkqeOrhi
j8x8Yriq/Zwf4nVXedX48LNAm2FKWA==
=NPRT
-----END PGP SIGNATURE-----

--2oox5VnwalALFvA7--
