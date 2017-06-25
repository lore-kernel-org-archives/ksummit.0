Return-Path: <leon@kernel.org>
Date: Sun, 25 Jun 2017 22:05:29 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170625190529.GV1248@mtr-leonro.local>
References: <20170625072423.GR1248@mtr-leonro.local>
	<CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
	<20170625181954.GU1248@mtr-leonro.local>
	<CA+55aFyM7X2jWYyNeA-AgbV1A-aYJaRBsPZCG+GeO9L8W1Rqww@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="worL9B4ITIAQZ1FS"
Content-Disposition: inline
In-Reply-To: <CA+55aFyM7X2jWYyNeA-AgbV1A-aYJaRBsPZCG+GeO9L8W1Rqww@mail.gmail.com>
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


--worL9B4ITIAQZ1FS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jun 25, 2017 at 11:37:12AM -0700, Linus Torvalds wrote:
> On Sun, Jun 25, 2017 at 11:19 AM, Leon Romanovsky <leon@kernel.org> wrote:
> >
> > Great, so why are we continuing to allow patches with MODULE_VERSION and
> > DRIVER_VERSION changes?
>
> I suspect they just haven't caused problems elsewhere.
>
> And honestly, they aren't that common. Grepping for MODULE_VERSION and
> DRIVER_VERSION shows more than I would like, but we're talking
> hundreds, not thousands (and lots of them are basically dead, stale
> code - ATA etc, or just joke names - usb).

I see it differently, from my point of view, it is pretty active,
especially in the subsystems where new drivers are added more often,
but if you say that the policy exists, it is enough for me.

Thanks

>
>                   Linus

--worL9B4ITIAQZ1FS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAllQCXkACgkQ5GN7iDZy
WKcyGA/6AxfJ4AS3uyodD5EKqw2ygAPw6tOfUAcrz04e1gZlPBwPqdeSZ8PhSHK5
IruyNWePzNKtYAdJKa1ak2EZc6hR1cOizYnmzdgYv1a5z7ZV2JTcYIvbslP5nfUz
revowroS5eNCF6CfYHZNxsA8YzH7IU2OF43rGhAInFrYoQZptmv/8yBBoPzyV0FU
+V+w3d7mOztav2eCgL/YTEsI9VCGGB2S+6RUQ7zaabt7Snc78NqFKZHiUYWM5wrM
M7fJEx7/xYAeIioGBlLAHSygxoCp867Et2e4rSy0naCFeTmChbdHO8uXPMiJ/I7d
luxtKtyBTrGijsfVGnqFxF1y1CBUDuwlC1mcoeyYImXOtmDz99AiQ48LDfg3aYrX
i80RS8BfxB2DyKs6GS6TZj0Vc0FWbbQY/XawoLtNqW39MFVwXcaFxyUA6t1jpNn1
YkNrAFVRUWDpBQt6cET+g2+X3vVOamxi04BF//PAQYhDVLk+2RdFeyh28yuFsZmk
MwwdQZUJ72zgiL45uODHPVKnjm2uFC3qXihMnOH8RmAYChLMKylN5aAoilKHe1cz
DZsZN3BHachoezR2zaL1GKtds28X8xHW1q9253xrEZRE4YlQIZl7gkF7F5MZ8AJH
sDnNXd0tdu/42rXNxgtdk/ZhhSk8lGHrba58WFen+Y/KN9B5jrM=
=DTI9
-----END PGP SIGNATURE-----

--worL9B4ITIAQZ1FS--
