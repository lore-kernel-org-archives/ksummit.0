Return-Path: <broonie@sirena.org.uk>
Date: Wed, 21 Sep 2016 20:16:23 +0100
From: Mark Brown <broonie@kernel.org>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Message-ID: <20160921191623.GF7994@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
	<57E22F8E.1040801@linaro.org>
	<20160921135601.zwsmvrrfbhlez24n@thunk.org>
	<57E2A5E3.4080407@linaro.org> <20160921153341.GA25677@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="SnV5plBeK2Ge1I9g"
Content-Disposition: inline
In-Reply-To: <20160921153341.GA25677@kroah.com>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
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


--SnV5plBeK2Ge1I9g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 21, 2016 at 05:33:41PM +0200, gregkh@linuxfoundation.org wrote:
> On Wed, Sep 21, 2016 at 11:23:15PM +0800, Alex Shi wrote:

> > Or which enterprise distro kernel keep rebasing to upstream?

> Both SuSE and Oracle do this for their releases.

There's some other distros out there...

> > Thus base layer software update need long time testing for
> > compatibility and stability.

> Why isn't that happening constantly?  Why wait a few years to do this
> for new versions?  Why is the test frameworks that people have not
> always churning away at this type of thing to find our bugs as soon as
> possible?

We've had plenty of talks at KS from the enterprise vendors about the
challenges with doing detailed performance testing on upstream on a
constant basis, the same issues apply.  It's not a case of waiting years
to start, it's a case of tests that take a very long time or lots of
other resources to perform and often some skill in knowing how to
interpret the results. =20

--SnV5plBeK2Ge1I9g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX4tyGAAoJECTWi3JdVIfQK7cH/0IxgcglxH740jjFUy9gf3ZQ
aWPa+hipZjciUYCdx8aMA6WAylUv5G6HWA+9vcRzIs8TACC2acOtDdQbBVjTvPfE
El65jME5Icano6y0ZnyNwgcRRT8jc/W2s7JJquD7+pZvkBAeerSKOa4Oop96xHG8
VDfy8HqurrY8fe5yll3FFqDIB4TO1FV9WRR9ybysIsE4rTuRAYaLPJ/vIxdqaHuV
oItdj9y2yAnq7fxVtNGZclCGjZCnkag7VdXKN/Y12Ui6nv9v4Ivh7DqgF5DwImy6
FEYZEaMW6btD2DRLhFInrz6VJEyZmXncj0N0dlfE/BDSAj6sUf3lZH+tx5Jluio=
=Khd0
-----END PGP SIGNATURE-----

--SnV5plBeK2Ge1I9g--
