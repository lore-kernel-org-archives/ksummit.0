Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9B385928
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 16:15:56 +0000 (UTC)
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1E4691F9F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 16:15:56 +0000 (UTC)
Received: by mail-ie0-f180.google.com with SMTP id tp5so2135562ieb.25
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 09:15:55 -0700 (PDT)
Sender: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Message-ID: <537CD134.9020602@kernel.org>
Date: Wed, 21 May 2014 12:15:48 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
MIME-Version: 1.0
To: David Howells <dhowells@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>
References: <537BA385.6090208@zytor.com>
	<18264.1400685527@warthog.procyon.org.uk>
In-Reply-To: <18264.1400685527@warthog.procyon.org.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="p9tDbihKNPXC7PLM6a65PjVtoiHG0DG7c"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Services needed from kernel.org
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--p9tDbihKNPXC7PLM6a65PjVtoiHG0DG7c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 21/05/14 11:18 AM, David Howells wrote:
> I posted a list of niggles about the cgit interface over the gitweb int=
erface
> a while back (see below).  As far as I can tell, none of them got addre=
ssed.

Cgit is an upstream project, so best I can do is pass these feature
requests upstream -- which I did.

> (2) If an additional remote was pushed into a kernel tree, IIRC with gi=
tweb
>     its branches used to show up in the tree in pink boxes - see:
>=20
> 	http://git.infradead.org/users/dhowells/linux-headers.git/shortlog/ref=
s/tags/disintegrate-fbdev-20121220
>=20
>     where you can see:
>=20
> 	linus/master
>=20
>     in a pink box.  Could this be brought back please?

I'm not sure we can do that, as git.kernel.org is a "git clone --mirror"
of the actual repositories on gitolite.kernel.org, so are a) bare, and
b) wouldn't have any remotes other than origin. Unless I'm
misunderstanding the functionality.

>  (4) Author names are no longer clickable to get a list of patches by t=
hat
>      author.

I can add this easily via a filter. Currently, to do the same, you just
need to use the search box and copy-paste the author name.

Regards,
--=20
Konstantin Ryabitsev
Senior Systems Administrator
Linux Foundation Collab Projects
Montr=C3=A9al, Qu=C3=A9bec


--p9tDbihKNPXC7PLM6a65PjVtoiHG0DG7c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQGcBAEBCAAGBQJTfNE0AAoJEI6WedmufEleJg4MAIm2VU6sUJhfDwl+7UZeTzmv
rKp5tjs3brnEbZbWTqzJfzQ9lnhvZVnhcKRnMkcpd1NYxhZ5WyfmUvZKMMXjiHky
VN4956Dn9H08lIzIAvuoUkLEs+TnMMr4zypNOw8EXvHb8pyD1Xb0yvagsn1Oyzqn
sLDaMfgxOo04DNQZMj1M9ZhVs6PQw2PaUG7AdX+yRPUaicePZsG/GhyyqACIBkP5
L2UxEW8caMn/pFLrr/ZzwhFF4mQZ0jdiYk3o2CyCMfplPvZg78tKtDS081UF4mtS
+9Cg6mjjlocdaxDYSsWBek99nkGiG6Y4xKTbLDJ1yVcqvWfNS7cYhAeGsUd21bzi
pd0IcPgdknSZ9YhfV4nHqd9OZyC1ypDwMTfqcKd1/KjnHS7sMcC79m/RbHm48M/8
3ZbmAUMpRr3eccOt6DKctRg5jeivYIXfYOxJxZPjjmIshCLnK94kwhgm3QXSCGN7
dw5zDp99y3DfOrV22uf9m787t+dOYojPiNnbC8Fivg==
=tmaj
-----END PGP SIGNATURE-----

--p9tDbihKNPXC7PLM6a65PjVtoiHG0DG7c--
