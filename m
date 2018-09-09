Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 35CEDBE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 12:50:50 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8709E2C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Sep 2018 12:50:49 +0000 (UTC)
Date: Sun, 9 Sep 2018 22:50:31 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20180909225031.0c12d00f@canb.auug.org.au>
In-Reply-To: <CA+55aFxJ5JVrNVA06BhpL9Q4y2uh5PVizuZtP6+9npLs15CZVQ@mail.gmail.com>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<CA+55aFxJ5JVrNVA06BhpL9Q4y2uh5PVizuZtP6+9npLs15CZVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/qy4lVjVntbrTel04oVkLHG/";
	protocol="application/pgp-signature"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/qy4lVjVntbrTel04oVkLHG/
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Linus,

On Fri, 7 Sep 2018 09:17:18 -0700 Linus Torvalds <torvalds@linux-foundation=
.org> wrote:
>
> For example, for me, the merge window is my busiest season by far
> (obviously).  I try to schedule my time off to coincide with late in
> the rc, because it's just quieter: at that point I'm mostly waiting
> for stuff.
>=20
> But that's actually _supposed_ to be just me (and maybe Stephen Rothwell).

Actually, my quiet time is about rc1 to rc3, because everything I was
dealing with is now in your tree and people haven't added new stuff to
their trees yet (at least not much).  My busiest time is rc6 to the
middle of the merge window as people stuff in all the bits and pieces
that need to be merged (and manage to create conflicts with what you
have already merged during the merge window) :-(

--=20
Cheers,
Stephen Rothwell

--Sig_/qy4lVjVntbrTel04oVkLHG/
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAluVFxcACgkQAVBC80lX
0GyP2wgAlVt1RlfETf9mvnukNabjuGQql5w9mwREadxH5ZP/lF/hJb5HrdSam2lF
CLL/Eeu2O0RMvRIeZokG9KyUdOiau+Jh6nrfn1baCCePej3Uluqf3KDUZcTXD9gP
d0+ovUjBYwXR37VAFFuCZd8Fk4bZ5mh747HvQ6gdLZg4PvAHEBOXIzYo6TGFk9Xu
/fmaJYeKt6XNeO8e7bwNa9yvdYH3Qwy3yfiVnePWiYf2FpwU+3h75xBSimbzphpT
xHYLSy5s37uu7xZBuIXWcuUW8She+f7TMvmrb1/IQIpqXyGQBq3W4/b3tcbuAyXe
5FP5eEpbw2HqD8DWVspVbSRvwerIKQ==
=idM2
-----END PGP SIGNATURE-----

--Sig_/qy4lVjVntbrTel04oVkLHG/--
