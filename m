Return-Path: <peterz@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1A412AEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 19:35:25 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 82FC120259
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 19:35:24 +0000 (UTC)
Date: Wed, 7 May 2014 21:12:08 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will.deacon@arm.com>
Message-ID: <20140507191208.GZ30445@twins.programming.kicks-ass.net>
References: <20140507182916.GG3694@arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qOEfHYdX8LquYLAx"
Content-Disposition: inline
In-Reply-To: <20140507182916.GG3694@arm.com>
Cc: waiman.long@hp.com, ksummit-discuss@lists.linuxfoundation.org
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


--qOEfHYdX8LquYLAx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 07, 2014 at 07:29:16PM +0100, Will Deacon wrote:
>   better_spin_lock(atomic_t *lock)
>   {
> 	/*
> 	 * Atomic add to lock with acquire semantics, returning original
> 	 * value.
> 	 */
> 	int old =3D atomic_xchg_add(ACQUIRE, lock, 1 << TICKET_SHIFT);
> 	if ((old << TICKET_SHIFT) =3D=3D (old & (TICKET_MASK << TICKET_SHIFT)))
> 		return; /* Got the lock */
>=20
> 	while (smp_load_acquire((u16 *)lock) !=3D (old >> TICKET_SHIFT))
> 		cpu_relax();
>   }

So xchg_add and atomic_add_return() are pretty much an identity map
because the add operation is reversible. The other popular name for this
operation is fetch_add() fwiw.

In any case, something that's been brewing in the back of my mind is an
ATOMIC_OP() and ATOMIC_RET_OP() macro construct that takes a lambda
function (expr-stmt is I think the closes we get in C) and either
generates the appropriate ll/sc loop or a cmpxchg loop, depending on
arch.

Its fairly sad that many of the generic atomic operations we do with
cmpxchg loops where ll/sc archs can do better using their ll/sc
primitive and I just feel there must be a semi-sane way to express all
that, despite C :-)

</rant>

That also reminds me, I should send round 2 of the arch atomic cleanups
(I've got the patches), and write changelogs for round 3, and start on
the patches for round 4 :-)

--qOEfHYdX8LquYLAx
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBAgAGBQJTaoWIAAoJEHZH4aRLwOS6A48P/A5oiS2X49S24aljOd/HJIg8
Ah2tLqRXBrgdxMJpWOMyeBoqFrlbHsMQBmTGdG0oFPRS9fHJTsxiiWGKrhj9pPh3
xJAszC2HkXYaPgj7PagAt0WkLYyuogmv/WkDMfmM48aozm4ZCT6zNrAfRdarqs2h
t5c3aW45f+yUkvaEPRKRtq/rdQKNbCHcMK5YXABvjbBdbYG6Rpr+d/WbeRXtAMAq
pe+T+1Tzv4IJjxGXe9ldBWX+ECwVla+DNQ9FaVM9DUkN6gyJBCPg5PB+pDVdfp63
G2ZazdsdfpZHUWfION967aM+yD2YE/U9ZPKKC33WjMp/MIWbBR31z+I9r2WfEo8H
x6IfVw7nifmYkOfXOjY1dhrO2qshmBdHCXLs7auHOgwOw3rICYBCLMIc2+a5zjoV
l2/KEfxT6HkRCcVzm4BlkgB6tGraTz5wHZgMGnIlWLssVpL4l6Zaker3mNPG9xwp
PjbBBBaDlT+xdxmtV1dhorL6tD7mAYhtzHlNvtDD0ZwoftZ35E0ZEt0vfdxlok9B
r6sFaemvue84W6eLIdIPkXqN70UzorJIOKMTMRRT52gq7bNpIlEsuUDPlrricyiM
sNP8zRalo7ETlGp2ngrNiq3UXtGhvcHvDmz8vejE9C99sAIMf1lrbcZcrC0XaP/h
Z4hoXT31fnkZsbQ8dG+D
=CzNl
-----END PGP SIGNATURE-----

--qOEfHYdX8LquYLAx--
