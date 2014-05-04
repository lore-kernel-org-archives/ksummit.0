Return-Path: <ben@decadent.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 88B0A70A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 15:36:00 +0000 (UTC)
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk
	[88.96.1.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 876F21FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 15:35:59 +0000 (UTC)
Message-ID: <1399217745.24523.90.camel@deadeye.wl.decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: Li Zefan <lizefan@huawei.com>
Date: Sun, 04 May 2014 16:35:45 +0100
In-Reply-To: <53662254.9060100@huawei.com>
References: <53662254.9060100@huawei.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-KYB1RPWY/UVajkwI++cs"
Mime-Version: 1.0
Cc: lizf.kern@gmail.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-KYB1RPWY/UVajkwI++cs
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2014-05-04 at 19:19 +0800, Li Zefan wrote:
> I've been dealing with stable kernels. There are some issues that I notic=
ed
> and may be worth discussing.
>=20
> - Too many LTS kernels?

Or in another sense, maybe too few?  Less than 5 years' support is
hardly long-term, though I would not volunteer for backporting so far.

> 2.6.32  Willy Tarreau
> 3.2     Ben Huchings
> 3.4     Greg
> 3.10    Greg
> 3.12    Jiry Slaby
>=20
> Too many or not? Is it good or bad? One of the problem is the maintenance
> burden. For example, DaveM has to prepare stable patches for 5 stable
> kernels: 3.2, 3.4, 3.10, 3.12 and 3.14.
>=20
> - Equip Greg with a sub-maintainer?
>=20
> I found 3.4.x lacked hundreds of fixes compared to 3.2.x. It's mainly
> because Ben has been manually backporting patches which don't apply
> cleanly, while Greg just doesn't have the time budget.
>
> Is it possible that we find a sub-maintainer to do this work?

This is being addressed by others.

[...]
> - Testing stable kernels
>=20
> The testing of stable kernels when a new version is under review seems
> quite limited. We have Dave's Trinity and Fengguang's 0day, but they
> are run on mainline/for-next only. Would be useful to also have them
> run on stable kernels?

According to my notes from Fengguang's talk, his robot excludes any
branch with a very old commit.  If that meant checking *commit* date,
not author date, then stable branches would already get tested as soon
as they are pushed to git.kernel.org.  As that doesn't seem to be
happening, it seems like the test must be based on author date and
should be changed to commit date.  But also, we would need to commit
each rc patch series to a git branch.

Ben.

--=20
Ben Hutchings
Everything should be made as simple as possible, but not simpler.
                                                           - Albert Einstei=
n

--=-KYB1RPWY/UVajkwI++cs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUAU2ZeVue/yOyVhhEJAQoTcxAA0dlQ5IwaPBFMtX+8gZoOwZY6iErV/OXj
H5ApLJl+QsZf4AEHhycnrkLrTav+x67MftevwsSaYwdiuBaKnGZT3w2qSaM23QTl
sNnkRvJUnczc77Zj55uYS8bHbHBeB8t/3sfutbPkPhNxdfNJGi/2iyI/wicHvJ7P
al+gA3BVkZT5X8h+3xlBAKoUBII07tQmA8EXD6001oN1D/TTjSgsvvPnvx9qgCgW
m28cE+eaCRARusPSEdDRgZ53E97BnzpbPv1sar1B/nPqY/Y0yzG15RgNseMMtF+R
NOq7GXhjH5SkDs/2tZiNwdaU+d9Evx70EFY3L5zd+c6BX+9lAaHpg0QFOJRKCvQm
TA9ampYkE52XI3agcCQ1MF4cmuDV79JxTsGFpk01dSR42ZSoURzCtFECN45vtRtn
YWZbdSMPEhYQ51sAA7wvuDwCYYde5SApPDtWGqOem1L9pjTokrB3ZQvlsQBEBvrv
H0b5wEAqw1GmZf/p91UlSPZq6JfayrDl2OM+IqqxHpcGdON6EZqdI4wnva8rPezh
btlHxcKNVCV/d79Be5cEUP6Qb+B73Ie6h2SkxVmGgLAbqEQxrivrqFSmVh+M6tvW
2/t0MJyAhIKcgo1MVtX6bqreU0juKr1M6Y4Fc+3C7nFfcH3dNPr1RGIX9O2ydQMv
iJgrhfCZVLs=
=5SPt
-----END PGP SIGNATURE-----

--=-KYB1RPWY/UVajkwI++cs--
