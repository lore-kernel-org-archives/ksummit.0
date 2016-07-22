Return-Path: <riel@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E04B9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 13:29:52 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F04E7237
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 13:29:51 +0000 (UTC)
Received: from int-mx13.intmail.prod.int.phx2.redhat.com
	(int-mx13.intmail.prod.int.phx2.redhat.com [10.5.11.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 8CF4EBDEF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 13:29:51 +0000 (UTC)
Message-ID: <1469194188.30053.79.camel@redhat.com>
From: Rik van Riel <riel@redhat.com>
To: David Howells <dhowells@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 22 Jul 2016 09:29:48 -0400
In-Reply-To: <15842.1469185302@warthog.procyon.org.uk>
References: <15842.1469185302@warthog.procyon.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-U8D2CwvQuPHkM2q+PbWP"
Mime-Version: 1.0
Cc: ikent@redhat.com, oleg@redhat.com
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Containerisation,
 namespaces and keyrings
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-U8D2CwvQuPHkM2q+PbWP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-07-22 at 12:01 +0100, David Howells wrote:
> I'm not sure this is the right venue for this, but keyrings will need
> to be
> namespaced/containerised at some point.
>=20
> The problem is that it's an icky problem given that different key
> types really
> want to live in different namespaces, and upcalls may want to done in
> different containers, depending on the key type.
>=20
> For example, DNS resolver keys - should they be in the network, the
> filesystem
> namespace or neither?=C2=A0=C2=A0Should the upcall be in the current cont=
ainer
> or the
> root container?
>=20
> Authentication keys, such as used by kafs and AF_RXRPC - should they
> be in the
> filesystem namespace (kafs is an fs), the network namespace (AF_RXRPC
> is a net
> protocol) or the user namespace?
>=20
> Should crypto keys, such as the asymmetric key type, be in the user
> namespace?
> What about use by module signing?=C2=A0=C2=A0Should key operations in the
> current
> container have access to a blacklist in the root container?=C2=A0=C2=A0Sh=
ould
> key
> verification in the current container have access to system
> keyrings?=C2=A0=C2=A0The
> TPM?
>=20
> This might actually be right for a hallway track.
>=C2=A0
While figuring out the answers might be right for a hallway
track, it seems that enough maintainers might run into this
stuff later on that sharing the understanding could be good
for a general session.

There is no need to keep this knowledge obscure, especially
given that the more maintainers understand it, the less likely
it is that future mistakes will get merged.

--=20

All Rights Reversed.
--=-U8D2CwvQuPHkM2q+PbWP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJXkh/NAAoJEM553pKExN6D8NwIAKkpN+nuUUhDFKU/G81Lo7AM
/rlkOKq6QiZ/DwNcF5qIG3tPKhcBPdABurmC7sEylbTDxkr4J/rQzzuxgGVI0lNJ
Xk4HPcKgfknKD0qMlShr52ogoqL8iskK/PhT/Yc55rECsl4Ri+VUxexw75v9YvLe
T/w9T6KlwxW2z2nit07MBvgNCm12loe7+cNLbHjPkig7o3GlBB50QoZ68SQ0FpOK
9PpnVcPwdrEuHbASNSOfw1SHUeq0dkVzDRQmsGZjSf2AWngIvUyNmi+8lyjXu61e
C4lCw+DwSjkbcP0hVghOjTWQjq3CGlOl1RCjCocULd0t7BJu/aUgEauX2APU8tY=
=YU3Q
-----END PGP SIGNATURE-----

--=-U8D2CwvQuPHkM2q+PbWP--
