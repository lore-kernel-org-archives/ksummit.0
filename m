Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 81662E19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 23:42:02 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 005D87C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 23:42:01 +0000 (UTC)
Date: Thu, 6 Sep 2018 09:41:58 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20180906094158.1eba4f50@canb.auug.org.au>
In-Reply-To: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/i7y7BPS99bruxskL+btfuoh";
	protocol="application/pgp-signature"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
 replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/i7y7BPS99bruxskL+btfuoh
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Wed, 5 Sep 2018 15:57:02 -0700 Kees Cook <keescook@chromium.org> wrote:
>
> I'd like to discuss ways that we could deprecate APIs more sanely. At
> present I've seen (and used) two approaches, fast and slow:

As the one who often has the "fun" of coping with API changes, I would
like to be involved in this discussion.

My first point would be that (almost) every time someone has tried the
"ultra fast" method (i.e. add new interface, convert everyone in the
current kernel, remove the old interface all in one go) we have had new
users of the old interface introduced at the same time.  (pain for the
linux-next bunny :-()
--=20
Cheers,
Stephen Rothwell

--Sig_/i7y7BPS99bruxskL+btfuoh
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAluQacYACgkQAVBC80lX
0GzGXgf9E6HDzyhEhirmHhNYqdZ+3kFDxckgwrm8QOYIPHXWKnG/rCbrZaOb7O8s
IWiKmTjoflhaOVtFonWOfGy/aa1yBAzYtf+Yg63kgUjgQeYORUdn9f/JWanX86ky
4ZYNtOnR5lop5mZHVvXvESpmPW378B2TJ4q8q6dC/EJb3nKMzn196qgoB1+XM+fs
spqg7He8GfBAYKQzG2z97Rhjr4Q+FS0wx6hpIgD55lV301yJujj9YYA/w2rSGpLg
/x6gfon1KtUOpA0YhpRviO8A3QoFLyrHjfSreLFWljfZjvg/ypiqjw957J1vl7hN
YgsQfxVMaYdTZcjamsWlK65+qWFZPg==
=u8+G
-----END PGP SIGNATURE-----

--Sig_/i7y7BPS99bruxskL+btfuoh--
