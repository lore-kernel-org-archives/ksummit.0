Return-Path: <broonie@sirena.org.uk>
Date: Mon, 5 Sep 2016 12:11:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Message-ID: <20160905111105.GW3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<CAOesGMibzGC3Nz+DmERJUea4jbJQ28hDGDGMuHkr+o=Wb3iUdA@mail.gmail.com>
	<20160904001031.t7sv5isw5tc46pxr@thunk.org>
	<CAP245DVwmwkG3VbpiKmCx1Y4d3Hf62idZyHuroNf9TZ=yFuDsg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uWAbeGC4mMoqIxdF"
Content-Disposition: inline
In-Reply-To: <CAP245DVwmwkG3VbpiKmCx1Y4d3Hf62idZyHuroNf9TZ=yFuDsg@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
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


--uWAbeGC4mMoqIxdF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 05, 2016 at 04:28:44AM +0530, Amit Kucheria wrote:

> The vendors depend on Google providing an Android common tree[1] to
> build their BSP on top of. Currently, there isn't anything newer than
> a 4.4-based common tree from Google. It'll be early 2017 by the time
> 4.9 LTS is released and the Android common tree is available on it

It's not just having an Android tree either, it's having an Android tree
that they're confident is actively used and tested by Google.  Simply
making a tree available wouldn't be enough, that was tried in the past.

--uWAbeGC4mMoqIxdF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXzVLIAAoJECTWi3JdVIfQ014H/jUH5FGkIP4ZWpJPXtd1WhHV
ohLe3zRH6jtS+U07Yb/h+ImxqmHk1vFWAR91q8upulVxx6FoebaGS76MiSWfMteB
OCeGxDoAqTm2IHm+v6ZhDIydC3osQIH/dJR3fmz64Daav8hCQwDbXx/RwfbmX0Ck
PP4mliXwF4ZACZsmGsaQU+CSFtOIW+28TmXENL0LzuI1jyMww3Z8mCkscuBTnWQx
EvzrSq30yhiFX0APfKpz6gq7uLvsm6bSKOUN6cBDh+dfjy7yPyRpasIjeo3q+hgR
qbRx4kK9L0NJGYynyJe3eUb1XFBUKJu8WizmZaQyGfXsMjdxn0dGJgr52JHJGmE=
=MrNR
-----END PGP SIGNATURE-----

--uWAbeGC4mMoqIxdF--
