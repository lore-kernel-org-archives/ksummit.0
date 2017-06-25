Return-Path: <leon@kernel.org>
Date: Sun, 25 Jun 2017 21:19:54 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170625181954.GU1248@mtr-leonro.local>
References: <20170625072423.GR1248@mtr-leonro.local>
	<CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jllsgs4PL/sXFNaa"
Content-Disposition: inline
In-Reply-To: <CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
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


--jllsgs4PL/sXFNaa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jun 25, 2017 at 10:32:52AM -0700, Linus Torvalds wrote:
> On Sun, Jun 25, 2017 at 12:24 AM, Leon Romanovsky <leon@kernel.org> wrote:
> > There is a steady flow of patches which bump driver and module versions.
> >
> >  * Can we come with unified policy about those patches?
>
> We pretty much *have* a unified policy, it's just that I think rdma is crazy.
>
> The unified policy is pretty much that version codes do not matter, do
> not exist, and do not get updated.

I'm pretty sure that not everyone is aware of it. Those examples of
"accepted" patches are not from RDMA and maybe it will be awkward to hear,
but in RDMA subsystem we don't allow such patches [1].

My attempt to enforce such policy in other subsystem didn't work [2] and
in addition to that failed attempt, I bombarded internally with customers'
requests who have cargo cult to update those versions anyway ("like everyone else").
This is why I'm proposing to ban those patches and remove their exposure for
the drivers/* completely.

>
> Things are supposed to be backwards and forwards compatible, because
> we don't accept breakage in user space anyway. So versioning is
> pointless, and only causes problems.
>
> It causes problems not just because of the conflict issues, but
> because it's fundamentally wrong, and makes driver writers think that
> it's ok to change interfaces and use versioning to show they changed.
> It's *not* OK.

Great, so why are we continuing to allow patches with MODULE_VERSION and
DRIVER_VERSION changes?

>
> Sometimes you have feature masks (which just mean that it's ok to
> _add_ interfaces rather than change them, and make it possible for
> user space to check if the new interface exists), but even that is
> generally the exception rather than the rule and should be used very
> very carefully and preferably not at all.


[1] https://patchwork.kernel.org/patch/9735855/
[2] https://lkml.org/lkml/2016/7/15/17

>
>                   Linus

--jllsgs4PL/sXFNaa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAllP/soACgkQ5GN7iDZy
WKfWCg//bLddOL+ecBv1u4pDXfeY4pAk79jyB2iJ6FINCEtDc4woRqqS8UYuBjdx
JjnoIVNcOLzcoGxw3HYoTke9gh7tRvQwJaOrHn4GAqJD/eLLct31c3lvbfasl1b/
lZ64pPbL4cbuhIxezsVxwMMeR+cBXbAWNzWU+RTzY3lk6uBhxBMCYNw7JP+FVLy1
i8l8Lr9WazhrP4tv6/flKNxZmCgPKg5979WCjw/SMwYC1c4lRx00vSujg0ef9DA3
Bpbh19JgBOlhwQynoA6N9BfiE5ByZePZ0Qxw4aboDRLYYhgfnRClqMmuGUHagK+/
y7z2YlYRbq+ODbZrP8bicxGHtN1pYjKAkxD6tmKwjHrQsRwYG61guGGhNWmBQSQl
ks7ykADEoaNICWdw1a5XVHiuaKXLgXNvsIKbzaqd9HyQR2Wm1+J1sXOlh9w6Aebu
diGaiztT6OREjDgdvQ0hM7v02hmNlwoZggqRrZCbIYq/NRTGS3cwI4AccaZqvQK1
SQatB3FTRLzBvIC1iMawezuzNHXsFFLwGqL/ZcDJWcw4iwwJmNRILVW70hbWPIiP
hlaGjt1ml3yZTBcrIWG57L+ZIHnACk8Wxt3XwTEKZgTKieMfLaLpNUkA36j4bk+H
n0mezgR2zrXup/6vlU9kUVRvgGexgY/a7+L+L//8M3Eo517UNYw=
=bjhj
-----END PGP SIGNATURE-----

--jllsgs4PL/sXFNaa--
