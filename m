Return-Path: <leon@kernel.org>
Date: Mon, 26 Jun 2017 09:03:32 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20170626060332.GA1248@mtr-leonro.local>
References: <20170625072423.GR1248@mtr-leonro.local>
	<CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
	<20170625181954.GU1248@mtr-leonro.local>
	<CA+55aFyM7X2jWYyNeA-AgbV1A-aYJaRBsPZCG+GeO9L8W1Rqww@mail.gmail.com>
	<20170625190529.GV1248@mtr-leonro.local>
	<20170626050052.GE17296@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pMHZerOf5PT7gmN5"
Content-Disposition: inline
In-Reply-To: <20170626050052.GE17296@kroah.com>
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


--pMHZerOf5PT7gmN5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 26, 2017 at 07:00:52AM +0200, Greg KH wrote:
> On Sun, Jun 25, 2017 at 10:05:29PM +0300, Leon Romanovsky wrote:
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
>
> It takes a few years for companies to realize that the version numbers
> mean nothing.  So give it time, it will slow down.  Or you can just
> delete all of them at once, making it easier for you in the end.

OK, let's start in small scale and limit myself to MODULE_VERSION at this stage.
https://patchwork.kernel.org/patch/9808651/

Thanks

>
> thanks,
>
> greg k-h

--pMHZerOf5PT7gmN5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAllQo7QACgkQ5GN7iDZy
WKfWEA/+OGubuKLA7fbR6NBshBI/suN+1PSb5dA+pvRkZPRqbYtRynglsKJUHHZr
PlZknWhsID8ajlpmDoTYzn8OnNJ/YXubrQ9fWxd86kN5odfMaEkO4abyuS9rpH3c
Mhb1wGCFBklfq5o81vEzocQOOs/dCTsYiSEO3dDQ3YEG7gAXGhCm9kk0joSRInXm
BX8z9nPlK1Rb6ruzY3mEMVFq13J7wNRa3XfZO+lGfpMShO0zJB4LvgEHdCaUB4gu
6MPse2E36FNHD+cnedn8t7L6NY8hmi798q9vThc3PNJOlmbIaOuavMZ0Bsl3cud+
1UhVeE1tpU4ZMi+xD7aEnbPbamJKOCJ1Zb9SO9YW4mQ8xvFf6Sz6FM++8Lkf+1Oz
OwLkPEelFgVzdq84fgPU2ICSVftWm8Vmsou6hQ4tNMYzXwutT6Zx3MvRoe3jZ6z8
KZe5pKRthDlu7p/NchWS3XdY2BbWJwERY7ZB5KOo47USDO9PtdvFg92I3I80kJNE
WGKrTBYFfzlEVrrxK7O5oQb25Snfls19KlgXtLELHjaqWH3K2UDIvQbXG4OHH36L
1JKqwojLLrkfwhchVTwJsHQ6cQZX0tzOpWJr8ZBi2Wkr9vLGr6U1U9VsoRre4fKZ
+eD7JCQjACZzmI7jO76clwPMRWJqUrzxUCKGlPv5OZnVf8BPs3g=
=Zje8
-----END PGP SIGNATURE-----

--pMHZerOf5PT7gmN5--
