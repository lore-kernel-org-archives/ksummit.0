Return-Path: <riel@redhat.com>
Message-ID: <1472830741.32433.141.camel@redhat.com>
From: Rik van Riel <riel@redhat.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, Mark Brown
	<broonie@kernel.org>, "Levin, Alexander" <alexander.levin@verizon.com>
Date: Fri, 02 Sep 2016 11:39:01 -0400
In-Reply-To: <1472828659.2519.26.camel@HansenPartnership.com>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<1472828103.32433.138.camel@redhat.com>
	<1472828659.2519.26.camel@HansenPartnership.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-sHjL2Z7DDytR2CVO1Ov2"
Mime-Version: 1.0
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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


--=-sHjL2Z7DDytR2CVO1Ov2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-09-02 at 08:04 -0700, James Bottomley wrote:
> On Fri, 2016-09-02 at 10:55 -0400, Rik van Riel wrote:
> > On Fri, 2016-09-02 at 07:42 -0700, James Bottomley wrote:
> > > On Fri, 2016-09-02 at 10:54 +0100, Mark Brown wrote:
> > > > =C2=A0
> > > > It's what people are doing for products, they want newer
> > > > features
> > > > but they also don't want to rebase their product kernel onto=C2=A0
> > > > mainline as that's an even bigger integration risk.=C2=A0=C2=A0Peop=
le=C2=A0
> > > > aren't using this kernel raw, they're using it as the basis
> > > > for=C2=A0
> > > > product kernels.=C2=A0=C2=A0What this is doing is getting a bunch o=
f
> > > > people=C2=A0
> > > > using the same backports which shares effort and hopefully
> > > > makes=C2=A0
> > > > it more likely that some of the security relevant features will
> > > > get deployed in products.=C2=A0
> > >=20
> > >=20
> > > And history repeats itself: this is almost the precise rationale=C2=
=A0
> > > the distros used for all their out of tree patches in their 2.4
> > > enterprise kernels.=C2=A0=C2=A0The disaster that ended up with (patch=
 sets=C2=A0
> > > bigger than the kernel itself with no way of getting them all=C2=A0
> > > upstream) is what led directly to their upstream first policy.
> > >=20
> > > The fact that all the distros track upstream more closely also=C2=A0
> > > means it's better tested: the farther away from upstream you
> > > move,=C2=A0
> > > the more problems you'll have.
> > >=20
> > What exactly is the business case for re-learning the same
> > lesson the hard way, anyway?
>=20
> It costs a lot less to learn from history instead of repeating it.=C2=A0
> =C2=A0But, I suppose, it's not my money being wasted.

The fact that there is demand for a collaborative
project on a common kernel tree to carry features
for the embedded folks suggests they are already
feeling the pain themselves.

What is missing is the realization that we already
have such a tree, where everybody (not just the
embedded folks) are collaborating on features.

The upstream kernel.

The embedded companies have the choice between
paying to duplicate a lot of the upstream kernel
work themselves, or participating in a larger
community, with less duplication of effort, and
more work done by developers who are not on their
payrolls.

--=20

All Rights Reversed.
--=-sHjL2Z7DDytR2CVO1Ov2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJXyZ0VAAoJEM553pKExN6DPUsIAIHVEgOvRUxIKjRd66O48WCm
Ur+hnjG45pBLlLdpHR3fj9ljekzOgGZzlL2TVH0LwSoJ1+4SRwtnqCIRBeF3uaRV
ATtzTfHtk1ez9Gk8S1jirOtfOMim5S31VmzQVhoqqcndVwonBzsYGr5x4A6Z5BXR
27/u3eQ+8uVx/rUxSuDhyHwdramYpB7Q7JR8MrPxCzzC8YuEjGke4Vj7POIZkXew
BnV2lxFqEQ0kr6Ukc5LZvX8ydwZ9ExHPA0LJwkIP/3MvbAlxPfJbXxnuf7b/BrHV
ceburWT6QmRG/QWwQY/3p4nm+ToXCzK/JB26DKpSqWviqs9JByuP6JjiOnSp+sM=
=VCLM
-----END PGP SIGNATURE-----

--=-sHjL2Z7DDytR2CVO1Ov2--
