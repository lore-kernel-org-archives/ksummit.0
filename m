Return-Path: <corsac@debian.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DBAEA1C11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Sep 2015 12:55:58 +0000 (UTC)
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7FA47240
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Sep 2015 12:55:58 +0000 (UTC)
Received: from molly.corsac.net (unknown
	[IPv6:2a01:e34:ec2f:4e20:ff:ff:fe00:5])
	by smtp3-g21.free.fr (Postfix) with ESMTPS id 4AF62A622C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Sep 2015 14:55:56 +0200 (CEST)
Message-ID: <1442926542.4040.55.camel@debian.org>
From: Yves-Alexis Perez <corsac@debian.org>
To: Dan Carpenter <dan.carpenter@oracle.com>, Kees Cook <keescook@chromium.org>
Date: Tue, 22 Sep 2015 14:55:42 +0200
In-Reply-To: <20150922122409.GC4953@mwanda>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<20150922122409.GC4953@mwanda>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-4PGnvX5utHjBUj8qmb3v"
Mime-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-4PGnvX5utHjBUj8qmb3v
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On mar., 2015-09-22 at 15:24 +0300, Dan Carpenter wrote:
> On Mon, Aug 24, 2015 at 09:35:50AM -0700, Kees Cook wrote:
> > As an example, making the kernel code memory read-only means an
> > attacker cannot just directly change the kernel's execution path when
> > they use an arbitrary memory-writing flaw.
>=20
> Part of the problem is that C defaults to writable and you have to
> explicitly add a const if you want it read only.  Then when you are
> reading the code and you see:
>=20
> static struct uvc_format_desc uvc_fmts[] =3D {
>=20
> You can't immediately tell if it is writeable because it needs to be or
> because that's just the default.  We should make a new keyword that
> means non constant then we could grep for structs which have a function
> pointer and complain if they weren't specified as const or __writable.
>=20
> Maybe there is a way to do this with GCC attributes but I have never
> used them before and I couldn't immediately see how to do it.

If you look at the constify plugin (part of PaX), you'll see it uses a
gcc plugin to do something like this for structure containing only
function pointers. Historically it was done manually by adding =E2=80=9Ccon=
st=E2=80=9D
where needed.

Now with the gcc plugin it's the opposite. All structure like these are
const by default, and a no_const attribute has been added for some of
them (around a hundred afair).

Regards,
--=20
Yves-Alexis


--=-4PGnvX5utHjBUj8qmb3v
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJWAU/OAAoJEG3bU/KmdcClWKMH/RCHAC6MuFNTUlx/pMG913kU
xgZaYvcGLSriPHL85VkWAatzNtlJvKqjGKuN/rASIU6SKXMneb3v87PenLy26Sxb
K+gh2sqG01U1QJBb18+XeEsj6mSZbZDOnGZYrBlFGOvm9wEIKMeLJa1qG+g17dv5
eLXPcpzNeBDOErF+1xlEE39e3ItJ+hbsDKdJ/NMBMfsD3AMsWc9K6/FapT5AbhLw
RKX6KwgnsGH0/NBAU8NP8/ZwG1Ms6Z81/f3eqPT5owgbrmDYYs+GoAJ9V4xEU4iR
bY5tX1rYbOi6OvJmxY4voxipi42ECDTh0QAWwPNZ4lH8oMdGulqxE3fWRl7PEwc=
=IpFB
-----END PGP SIGNATURE-----

--=-4PGnvX5utHjBUj8qmb3v--
