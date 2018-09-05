Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A8170D4C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 11:14:01 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 21B258B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 11:14:01 +0000 (UTC)
Date: Wed, 5 Sep 2018 12:13:58 +0100
From: Mark Brown <broonie@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20180905111358.GH9781@sirena.org.uk>
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
	<CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0qt3EE9wi45a2ZFX"
Content-Disposition: inline
In-Reply-To: <CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
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


--0qt3EE9wi45a2ZFX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 05, 2018 at 10:17:44AM +0200, Daniel Vetter wrote:

> This was an invitation to exchange experience in how to best deal with
> the fallout - I do actually know that this is not an intel-only issue
> because I chatted with non-Intel people about how they deal with this.

It's definitely not an Intel only problem, I know I worked with this
when I was at a chip vendor and I know there are Linaro members with
various approaches to this.

> And I thought that figuring out how to do better upstream-first is
> very much within the scope of ks/lpc, hence why I suggested Rodrigo
> brings this up as a talk proposal.

I agree that there's a valuable discussion to have.  So long as people
are selling physical chips I don't think we can realistically tell
people that they should just upstream everything immediately without
regard for marketing, lead customer relationships and so on.

--0qt3EE9wi45a2ZFX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluPunUACgkQJNaLcl1U
h9CLXwf9EdW+9srEJQ01Bzu7GvjjK5ahN2/OreICqmgG3Zll2iHpntboMyhybmRq
IbP/55VTui3BpZ4x80H73koLjNDLsORCPEABqvwIOPd8AJOOndB1jmtmWXWjjF/Y
9n2ZRMuvZOlxHYndr4rqeX5CGHxDBUDFPfV/+7OJr24hmuThaIoCnHerwyUZe544
6dDbrgaG1rMZSkf0LmXK8ib1EHdEuMaIj11+3RN7SBH/ZWa5g/IyJtRwWaIhXiDg
4nIQAyydeSSvfo1qU9mHiTjO894PS57pmPqYzDS66HqhPO5n5EX6Yi1MfgF9QX46
T5e0e/KLNVmvFu9ejjKo6SDkLTBvog==
=l+LY
-----END PGP SIGNATURE-----

--0qt3EE9wi45a2ZFX--
