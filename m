Return-Path: <James.Hogan@imgtec.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 33A79919
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 11:50:25 +0000 (UTC)
Received: from imgpgp01.kl.imgtec.org (mailapp01.imgtec.com [195.59.15.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9601887
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 11:50:24 +0000 (UTC)
Date: Fri, 26 Aug 2016 12:50:22 +0100
From: James Hogan <james.hogan@imgtec.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20160826115022.GU13232@jhogan-linux.le.imgtec.org>
References: <20160826044651.GA25341@sasha-lappy>
	<20160826112635.GA27627@kroah.com>
	<20160826114205.GA16682@jhogan-linux.le.imgtec.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Zqkt5x/gGOIVPcL0"
Content-Disposition: inline
In-Reply-To: <20160826114205.GA16682@jhogan-linux.le.imgtec.org>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "Levin,
	Alexander" <alexander.levin@verizon.com>
Subject: Re: [Ksummit-discuss] Self nomination - Sasha Levin
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Zqkt5x/gGOIVPcL0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 26, 2016 at 12:42:05PM +0100, James Hogan wrote:
> On Fri, Aug 26, 2016 at 01:26:35PM +0200, Greg KH wrote:
> > On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
> > >    - Improving tagging for stable. The "version tag" option is broken
> > >    and the "Fixes:" tag is always preferable, how do we get people to
> > >    use that more often? (script it somehow?
> > >    scripts/find-version-it-fixes ?).
> >=20
> > Oh a script like that would be nice, but how would that work in reality?
>=20
> Not all Fixes: tags are suitable for stable though. I've been caught out
> by patches being applied to stable (4.2 maybe) due to a Fixes tag,
> without prerequisite patches being applied.

I also find the following alias useful to find the version number a
commit is first merged in:

vc =3D "!vc() { for i in `git tag --contains \"$@\" | grep '^v'`; do echo \=
"$(git log -1 --pretty=3D'%ct' $i) $i\"; done | sort -n | head -n1 | sed 's=
/^[0-9]* //g'; }; vc"

Its a bit slow and hacky and there's probably better ways, but it picks
the tag a bit more reliably than "git describe --contains". Maybe that
could be wrapped in a script that generates a Stable tag automatically
=66rom a Fixes tag for when the patch is suitable for stable.

Cheers
James

--Zqkt5x/gGOIVPcL0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXwCz+AAoJEGwLaZPeOHZ66LkQAIw5xjgDm8rEYhflY2vxhZWP
7ik9FogALrpXf3K3R0frZiwy2BB8Wp52qti4GOPM0p12y2WBhltZjs7QxM6MBWsD
BHVxVrQE3TKs24fgHLKlLM5YBJTi1jidfhRT7ewF6r17nGzVudKe/fyR7n7WEw9/
48FFFKOkZQUVV1GcMxSaj1wegDqat4QRNHsuBqpa/K51O4yFpeQEmCp30Edw2zr5
oXHAwwHYK2qQDsQ9XEZGfzHStCMtgHDOLFlqVhskbsuJastpgqIwSvqQ3u+sgesx
YSCkmiprNb5VYrLlBzd9eDMg02kO2Dnmvkb6tJyUcCSfxmoSBIOJVChplcDC+b+5
enARUD1hZFN+VJcMBTxueSIKk2J+PihqJ5p6y3FWcNjPCu2TD1l1snvtUECxxBZD
HmKtwujSvjp/T5n5NNCUqZQE0paUTfdXjLRWItgJN0rMY22YgYO8oQonh0RD2JK2
qb7CAlv+8kL5oX7gWNcz4KhBoDhBYeEhpDSMKA0Mv/bT9UOxhJadzG5EUZOViuCs
+t2wZmWiUa0b/onc30h9P2M6WG0Do7NmPEvUxH97vcNA+YTQ9p/EtkUlXLxzARdm
ioBpFfrIq3zEr+OXxt3w06yFLhZSAw8YRPu7E8CwJ1ILpANZ9+0TWv3Z8uPHkToJ
Tm2RgDu1LravJ8utO2Fe
=mBF6
-----END PGP SIGNATURE-----

--Zqkt5x/gGOIVPcL0--
