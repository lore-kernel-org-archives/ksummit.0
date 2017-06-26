Return-Path: <leon@kernel.org>
Date: Mon, 26 Jun 2017 07:51:11 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Message-ID: <20170626045111.GW1248@mtr-leonro.local>
References: <20170625072423.GR1248@mtr-leonro.local>
	<CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
	<20170625181954.GU1248@mtr-leonro.local>
	<CA+55aFyM7X2jWYyNeA-AgbV1A-aYJaRBsPZCG+GeO9L8W1Rqww@mail.gmail.com>
	<20170625190529.GV1248@mtr-leonro.local>
	<20170625213245.ep555qmzwbl4kjpq@piout.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="glDgwcODtpHomn63"
Content-Disposition: inline
In-Reply-To: <20170625213245.ep555qmzwbl4kjpq@piout.net>
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Driver and/or module
 versions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--glDgwcODtpHomn63
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jun 25, 2017 at 11:32:45PM +0200, Alexandre Belloni wrote:
> Hi,
>
> On 25/06/2017 at 22:05:29 +0300, Leon Romanovsky wrote:
> > On Sun, Jun 25, 2017 at 11:37:12AM -0700, Linus Torvalds wrote:
> > > On Sun, Jun 25, 2017 at 11:19 AM, Leon Romanovsky <leon@kernel.org> wrote:
> > > >
> > > > Great, so why are we continuing to allow patches with MODULE_VERSION and
> > > > DRIVER_VERSION changes?
> > >
> > > I suspect they just haven't caused problems elsewhere.
> > >
> > > And honestly, they aren't that common. Grepping for MODULE_VERSION and
> > > DRIVER_VERSION shows more than I would like, but we're talking
> > > hundreds, not thousands (and lots of them are basically dead, stale
> > > code - ATA etc, or just joke names - usb).
> >
> > I see it differently, from my point of view, it is pretty active,
> > especially in the subsystems where new drivers are added more often,
> > but if you say that the policy exists, it is enough for me.
> >
>
> A while ago, I went and removed all of them from the RTC subsystem.

I assume that you are referring to the commit fa5691131a87 ("rtc: remove useless DRV_VERSION").

Let's see how similar patch will be accepted in RDMA, netdev communities.

Thanks

>
>
>
> --
> Alexandre Belloni, Free Electrons
> Embedded Linux and Kernel engineering
> http://free-electrons.com

--glDgwcODtpHomn63
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAllQkr4ACgkQ5GN7iDZy
WKf39A//SgT0l7Q+2GhNc0VEVZLo4zWgsL6droUFzFzbea09t3eWo6/Dy/tk0iqs
ewHTJZbQnvBLhl4hZQrQT5omSxbWc/nCDBQtyWErbkDWPrinickFZ+Hz+r/g72Mc
e7mXljoPMaCqNmJWOue4M/4KNaC7D8Hn9oDSkM9mttOY/lYgWhhVdJnr0eWgpS/f
OjnFvg1dt9Ev7JBJE4wxw3VX3GBxko4HutGVgGqOuReimoc3lXZ7cpzmCg67Fg6N
G2FhEbNXKrK7TPx6qMd3bTsX3Uh52yJmSPmQlTwUKLaQhKwvf2GX7UFRbV52Cx90
aar2SQDZtwDm4C1obZdx8dDiHb3qDs9UzYvfsVVoYmk4T5EE92e6RfZ0l6po+Dz3
I5xQwTG3RodHI0AqZcCXeRHkqEzjs2C4cCQJ+Ztqr2tDcZ07/vc9JLEsLfk8YjGw
NsjISzPGV5WYIJtpjdUuIyIy1MPSn2est5cnEjkTABIUFqN3jD2PTr1FqDZ7zRVy
NlrrxOkCWs8BsIZWQyZzb7mAfJBNPxEO9UYMCfk0rhGizGhDkwZnO1M+Gwkn9poq
FEobsyYW73LcCHchzVrZo3F14hnPlVo1CkClVU8w9ILn8NQpmCtINhvi+aYs0a7B
HdSvWU3hsnpe4AeZ2120URzebHhU9GbRJindJidl3I4DbW+cMgE=
=lLPn
-----END PGP SIGNATURE-----

--glDgwcODtpHomn63--
