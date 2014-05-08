Return-Path: <peterz@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3E3AC996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 14:27:40 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0799F20250
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 14:27:38 +0000 (UTC)
Date: Thu, 8 May 2014 16:27:34 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will.deacon@arm.com>
Message-ID: <20140508142734.GF13658@twins.programming.kicks-ass.net>
References: <20140507182916.GG3694@arm.com>
	<20140507191208.GZ30445@twins.programming.kicks-ass.net>
	<20140507212001.GA5311@arm.com>
	<20140508091312.GH2844@laptop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Md/poaVZ8hnGTzuv"
Content-Disposition: inline
In-Reply-To: <20140508091312.GH2844@laptop.programming.kicks-ass.net>
Cc: "waiman.long@hp.com" <waiman.long@hp.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asm-generic implementations of
 low-level synchronisation constructs
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Md/poaVZ8hnGTzuv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 08, 2014 at 11:13:12AM +0200, Peter Zijlstra wrote:
> ATOMIC_RET(ptr, __ret, stmt)
> ({
> 	typeof(*ptr) __new, __val;
>=20
> 	smp_mb__before_llsc();
>=20
> 	do {
> 		__val =3D load_locked(ptr);
> 		stmt;
> 	} while (!store_conditional(ptr, __new));
>=20
> 	smp_mb__after_llsc();
>=20
> 	__ret;
> })

So the most common constraint (which you've confirmed is true for ARM as
well) is that we should not have memory accesses in between an LL/SC.

Making sure GCC doesn't do any is tricky, the best I can come up with is
tagging all variables with the register qualifier, like:

ATOMIC_RET(ptr, __ret, stmt)
({
	register typeof(*ptr) __new, __val;

	smp_mb__before_llsc();

	do {
		__val =3D load_locked(ptr);
		stmt;
	} while (!store_conditional(ptr, __new));

	smp_mb__after_llsc();

	__ret;
})

Now, I'm not at all sure if register still means anything to GCC, but in
the faint hope that it still sees it as a hint this might just work.

> static inline int atomic_add_unless(atomic_t *v, int a, int u)
> {
> 	return ATOMIC_RET(&v->counter, __old,
> 		if (unlikely(__val =3D=3D u))
> 			break;
> 		__new =3D __val + a;
> 	);
> }

And that would then become:

static inline
int atomic_add_unless(register atomic_t *v, register int a, register int u)
{
	return ATOMIC_RET(&v->counter, __val,
		if (unlikely(__val =3D=3D u))
			break;
		__new =3D __val + a;
	);
}

--Md/poaVZ8hnGTzuv
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBAgAGBQJTa5RWAAoJEHZH4aRLwOS67nIP/iYp9HPMImfDVL+7w+f2am03
7b2i6n2l6HiP1r5adtuSYyfYVtbe5Z6d51TjhnzuXVEwrKCMWLN1Sw6djw7SxtBA
kjoXaypzBXc/qTktrl/Et8q+AcW5MXbvt1QVX9qblqdeNhRNQZg2QxrtjjgO/3p1
07hB45OGJUe5To4B+ljw3c0qqj33SVON4EH8AMryUshTzXgXW1pwSAzvVyGFiSAi
xEklMc7otTO+hiVcqlnrxbJy9YLNMkbxVxSiZaBGeN/9Pwd8VhykID69Z1gHpM2a
ji7TzsLiGTOcWLrRt/yGoeLLH9tciCQlKjaLf9pGjC9cJmyFk2Mg/8qdnJd/bLkH
E4Q1AgNjp4pI/Obr/pgaKrKe9Om5Y4pg8DjvO7S+ZBqjAUlCRK/7Ysj9D4Ee5+F1
y8vG5Yo6aPNJamiKSt4Kh3IIGd07ORICQu2AgqFdmWvJbp/9a9FTl84qgVOyhiK0
YrC76x6/Cyve97Jw2J2ahwqwwSLTUYyt4L84W8rnlBMDf5+QedhopE1TpVTt1NCj
Iveebryk10fr9DQ4+8AsQk89li4LOUXmyHmyzXNN8k7FMqT6/mST07B4cPailxUT
hVXWcQ9RsabQIhxhSI3+/dMmGlWeJ3A9xSr9YGGgXtLTKtCoV6CJkZp39w1HOPTU
a62itNIR9mV9t5GivgUS
=YnT6
-----END PGP SIGNATURE-----

--Md/poaVZ8hnGTzuv--
