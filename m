Return-Path: <riel@redhat.com>
Message-ID: <1472828103.32433.138.camel@redhat.com>
From: Rik van Riel <riel@redhat.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, Mark Brown
	<broonie@kernel.org>, "Levin, Alexander" <alexander.levin@verizon.com>
Date: Fri, 02 Sep 2016 10:55:03 -0400
In-Reply-To: <1472827326.2519.14.camel@HansenPartnership.com>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-/PxlcagChDIfC1fRAL0T"
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


--=-/PxlcagChDIfC1fRAL0T
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-09-02 at 07:42 -0700, James Bottomley wrote:
> On Fri, 2016-09-02 at 10:54 +0100, Mark Brown wrote:
> >=C2=A0
> > It's what people are doing for products, they want newer features
> > but
> > they also don't want to rebase their product kernel onto mainline
> > as
> > that's an even bigger integration risk.=C2=A0=C2=A0People aren't using =
this=C2=A0
> > kernel raw, they're using it as the basis for product
> > kernels.=C2=A0=C2=A0What=C2=A0
> > this is doing is getting a bunch of people using the same
> > backports=C2=A0
> > which shares effort and hopefully makes it more likely that some
> > of=C2=A0
> > the security relevant features will get deployed in products.=C2=A0
>=20
>=20
> And history repeats itself: this is almost the precise rationale the
> distros used for all their out of tree patches in their 2.4
> enterprise
> kernels.=C2=A0=C2=A0The disaster that ended up with (patch sets bigger th=
an the
> kernel itself with no way of getting them all upstream) is what led
> directly to their upstream first policy.
>=20
> The fact that all the distros track upstream more closely also means
> it's better tested: the farther away from upstream you move, the more
> problems you'll have.
>=20
What exactly is the business case for re-learning the same
lesson the hard way, anyway?

The embedded people can either learn from the mistakes the
distro vendors made in the 2.4 era, which was repeated by
the Android kernel team later on, or they can choose to
repeat that mistake and learn things the hard way.

With 6-9 month time to market on products, do you really
have time for a 12 month rebase of a gigantic pile of
patches?

--=20

All Rights Reversed.
--=-/PxlcagChDIfC1fRAL0T
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJXyZLHAAoJEM553pKExN6DK6AH/3N9I94TAFOmQVa5+HtFzgl8
ldeZU12KOiHDuHhp/sVIH9bUxzlA9sMXB3APb7Ws5RWhE3I+p1xDAV6nMQYTMYty
ii4CLS7v0/WQlRjCsELdpxWWeugPQEK1HSszd+atOMnjuhe4cvFy/zNYOTkihTup
F7ghv2wqTNPESfeEerxu+VT9l3X8FIXiuXVrQK82X39HuHFEyBb8vcciforetLZq
D6jRrg/SIqnKwcWLw0YQRDRFeaXXydIb9um1E4uFXewo0Ilxvj4gzruFJzrkFhx7
fqDOl+nGrdBqHJfwhskiiDgOQIEbvZMU+TNZOUouO7uCzQT5JO13kuGjTJDGZk4=
=AmPa
-----END PGP SIGNATURE-----

--=-/PxlcagChDIfC1fRAL0T--
