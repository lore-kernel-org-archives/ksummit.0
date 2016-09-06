Return-Path: <broonie@sirena.org.uk>
Date: Wed, 7 Sep 2016 00:23:05 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160906232305.GY3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon> <20160906003532.GA3950@sirena.org.uk>
	<1473175831.17204.29.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gzJEy4voKlV4eANz"
Content-Disposition: inline
In-Reply-To: <1473175831.17204.29.camel@HansenPartnership.com>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
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


--gzJEy4voKlV4eANz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 06, 2016 at 11:30:31AM -0400, James Bottomley wrote:
> On Tue, 2016-09-06 at 01:35 +0100, Mark Brown wrote:

> > You're preaching to the converted here but just telling everyone over
> > and over again that they're doing a terrible job isn't helping=20
> > anything. It's not offering any sort of constructive suggestion for=20
> > how to improve the situation that engages with the reality on the
> > ground.

> OK, so how do we move forwards?  Everyone who remembers the 2.4->2.6
> transition is convinced of upstream first because it was impossible to
> forward port the patch sets.

> So there's probably a couple of things we could do about this

>    1. Nothing. =A0Say it's working about as well as can be expected for
>       embedded and stop worrying.

I think I'd put it more as saying that there are relatively few special
snowflake things that we can do upstream to help here - most of the
things I can think of that are useful are just generally useful for
everyone rather than embedded specific.

--gzJEy4voKlV4eANz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXz0/WAAoJECTWi3JdVIfQq18IAIX8bCcwkiIiDHM2CiCsRZVz
n0h2hHB5lcK4L/5GJd30ELjPxUfr3+51tJqVpxRVBZ9qhrYNrQPfavAjwFiKbEeV
9YOq7Fee5rNdwa+XgYYMJ7nhpPeXFR+dsvQRD5lw0WhoZ3pH3l6DGdtFOAXof4qP
wHS2mvh/JysmV9GzdcmAZXS64yqnyTpJKPwz5TRgYs9RUxW9jsqQRX9atbIj4Je7
fu6XQ2Sz4IlYwWo7JLUEj2pDELlXIutuIy5nl7xz34O3EDMD7q0phdjZ8iXWYwyH
StOJZYThfEeLE9GjidJp8Z8nd5sUpLC4I+edNaZ96KSF50NKubyN4o0+zDV0a4s=
=p2MW
-----END PGP SIGNATURE-----

--gzJEy4voKlV4eANz--
