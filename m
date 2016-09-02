Return-Path: <James.Bottomley@HansenPartnership.com>
Message-ID: <1472828659.2519.26.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Rik van Riel <riel@redhat.com>, Mark Brown <broonie@kernel.org>, "Levin,
	Alexander" <alexander.levin@verizon.com>
Date: Fri, 02 Sep 2016 08:04:19 -0700
In-Reply-To: <1472828103.32433.138.camel@redhat.com>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<1472828103.32433.138.camel@redhat.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-I2w9zf8ahfV38Gqg7vAA"
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


--=-I2w9zf8ahfV38Gqg7vAA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-09-02 at 10:55 -0400, Rik van Riel wrote:
> On Fri, 2016-09-02 at 07:42 -0700, James Bottomley wrote:
> > On Fri, 2016-09-02 at 10:54 +0100, Mark Brown wrote:
> > > =20
> > > It's what people are doing for products, they want newer features
> > > but they also don't want to rebase their product kernel onto=20
> > > mainline as that's an even bigger integration risk.  People=20
> > > aren't using this kernel raw, they're using it as the basis for=20
> > > product kernels.  What this is doing is getting a bunch of people=20
> > > using the same backports which shares effort and hopefully makes=20
> > > it more likely that some of the security relevant features will
> > > get deployed in products.=20
> >=20
> >=20
> > And history repeats itself: this is almost the precise rationale=20
> > the distros used for all their out of tree patches in their 2.4
> > enterprise kernels.  The disaster that ended up with (patch sets=20
> > bigger than the kernel itself with no way of getting them all=20
> > upstream) is what led directly to their upstream first policy.
> >=20
> > The fact that all the distros track upstream more closely also=20
> > means it's better tested: the farther away from upstream you move,=20
> > the more problems you'll have.
> >=20
> What exactly is the business case for re-learning the same
> lesson the hard way, anyway?

It costs a lot less to learn from history instead of repeating it.=20
 But, I suppose, it's not my money being wasted.

> The embedded people can either learn from the mistakes the
> distro vendors made in the 2.4 era, which was repeated by
> the Android kernel team later on, or they can choose to
> repeat that mistake and learn things the hard way.
>=20
> With 6-9 month time to market on products, do you really
> have time for a 12 month rebase of a gigantic pile of
> patches?

You mean keep feeding them crack until they either die in an alley or
seek rehab?  It's a view, I suppose ... I just hate the idea that we
know why the behaviour is counterproductive and we have examples to
prove it, we just can't convince the addicts.  It seems socially inept
somehow.

James

--=-I2w9zf8ahfV38Gqg7vAA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJXyZTzAAoJEAVr7HOZEZN4OmUP/RF+4GufXQ0EIq8NxCkparYD
Il9048ebph5QLmuzCt+gcjSenTdHvuo/VuI27CnG0woa72z3JuEogkgFjk9GVk8/
pHdibhf3V+EjItUmRLKAavSJFjjS9zSpCfEEGSK/5iiY1BaSNzW5TtXUx+a2nnKw
+0k8QOJMomRrGBKMcvd8VGnUBQPW9exjh/g6HYLDGyAgPpmB/R/ucC/GluYJ8EOi
9moWOGGkYddy0fj4sgWUCo8KjM4BjaZBGZhH6TrO4q6H6opy+PSyn0QPqbBmPPIc
s9hqPUb8KXdeoih+wItmQ5EhfDGNSxf4iG019F0YkOsOwyGdJ4YJ5IK3p3R05NLI
5KNSZPpK2ucg5RKAEW61lb/6C9Fm8tdGtAebO1Vqr/2TdK0oT4LJ/SKXaMVRY+J4
9tZJ/yk54HygTzYIilojIvRUONWZCRhXUQ1L0IFNaaTlQRxO65cDxUrf/umi1dmU
Q6CmWXK3a3Udrf5k3Nbcw0VkABV3B1xt9wYzPkluBpd/6pv2EzeLhRYaq4MYuyzO
0r6NF/RoX3FeK6rueJwd6b9qlNHavCbZmewldfC5ck5RTN0fqylIR2FHu5aaa+81
FC85r8BbbopVJxMV1VRNzETQMJ7LQ+1V2t0VzGsZsFkroasc8VLuFyiP5wjRXgDb
qoeNa2Tp1InrjXtNJqrR
=5af/
-----END PGP SIGNATURE-----

--=-I2w9zf8ahfV38Gqg7vAA--
