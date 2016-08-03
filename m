Return-Path: <ben@decadent.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 45B7678D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 23:02:17 +0000 (UTC)
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk
	[88.96.1.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B182D8E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 23:02:16 +0000 (UTC)
Message-ID: <1470265316.4176.207.camel@decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: Andy Lutomirski <luto@amacapital.net>, David Howells <dhowells@redhat.com>
Date: Thu, 04 Aug 2016 00:01:56 +0100
In-Reply-To: <CALCETrU2qPO8Bu5wtaiKkYHgdpV3dL+Q5P+8YZLNSm3Ekn9sTw@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<27174.1470221030@warthog.procyon.org.uk>
	<CALCETrU2qPO8Bu5wtaiKkYHgdpV3dL+Q5P+8YZLNSm3Ekn9sTw@mail.gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-F3xVeT7WhMiGtVUHZeNl"
Mime-Version: 1.0
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] [TOPIC] Secure/verified boot and roots of
	trust
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-F3xVeT7WhMiGtVUHZeNl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2016-08-03 at 09:46 -0700, Andy Lutomirski wrote:
[...]
> And it gets rid of the IMO extremely nasty temporary key.=C2=A0=C2=A0I
> personally think that reproducible builds would add considerable value
> to many use cases, and we currently can't simultaneously support
> reproducible builds and Secure Boot without a big mess involving
> trusted parties, and the whole point of reproducible builds is to
> avoid needed to trust the packager.
[...]

You need that trusted party to supply a signature for the kernel, so
why is it so much worse to have them do that for the modules as well?

As you may be aware, I'm dealing with this in Debian by putting
detached signatures into the source package that builds signed
binaries. =C2=A0The two package build processes are each reproducible (asid=
e
from a recently discovered dependence on whether /bin/sh is bash or
dash).

Ben.

--=20

Ben Hutchings
Nothing is ever a complete failure; it can always serve as a bad
example.

--=-F3xVeT7WhMiGtVUHZeNl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJXonfkAAoJEOe/yOyVhhEJixsP/RMR7XNjtPVPZps8SCotG2k4
lNKZ06IFRNjlxdmJ//nxZiWryorVZirD5rCstIlkfY75tFxKCLpb2KilJTZdyNN2
aLDPiqNDqL0fzeWCu4u44tvLfoddprD0D9JZbdtNOK6qqzndqDTcwZ0bt8MGgxOO
3QPMHt9mxb2kY1a43hsKocRq9TL3jAVgjlGZH5seSfkGofKkXGJMWqUyqUaZG8R2
4zpE7gnI0qkseevkvXZYtU+mXQgeHVIFBX6K75Bb2uxckDVO98NSYS5e3mGfBGrx
BqM/u2x8FpBxwWWJB7B1KFZMWHqW9f0AZv6OmZLqQtGUVQrUU0sFlWKl8nPNpsG8
PjthDKPF67/bEH8V2OpNOFrMZfmj3OuAeb3v7DnN90ibQ9IlRV3H73cCyzRxNOzD
i7FgZcDYKBuDXfyjh0Eyho0g7MUtWWYeD6Q44/pruojxbJhRymGhnwzk8ak074ji
UQwGNwoqJ8t1V1KQu/oZRLW37jKlUUl0YbRRPCBb6vA0ixFOz9fYf5ZOA905i9hO
q4WuV6jVjnKyqQowKRqCBNBqKnrsQsnid2lxkdQNq3oUmkDM9Ff4uSNfNQIze5A6
ZCBJJEvIkhow/MxISA0xCqo29nCOOOzdC6uC0/Vlnx4n8r/kCJgw4MSOpd1RPDMv
/MlCViwblHyJjAGm/3lu
=TjHM
-----END PGP SIGNATURE-----

--=-F3xVeT7WhMiGtVUHZeNl--
