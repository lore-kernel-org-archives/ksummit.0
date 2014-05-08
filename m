Return-Path: <peterz@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D7F7E21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 09:13:18 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 68AA91FAA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 09:13:18 +0000 (UTC)
Date: Thu, 8 May 2014 11:13:12 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will.deacon@arm.com>
Message-ID: <20140508091312.GH2844@laptop.programming.kicks-ass.net>
References: <20140507182916.GG3694@arm.com>
	<20140507191208.GZ30445@twins.programming.kicks-ass.net>
	<20140507212001.GA5311@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20140507212001.GA5311@arm.com>
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

On Wed, May 07, 2014 at 10:20:01PM +0100, Will Deacon wrote:
> > In any case, something that's been brewing in the back of my mind is an
> > ATOMIC_OP() and ATOMIC_RET_OP() macro construct that takes a lambda
> > function (expr-stmt is I think the closes we get in C) and either
> > generates the appropriate ll/sc loop or a cmpxchg loop, depending on
> > arch.
>=20
> I've been thinking along the same lines but decided it was a bit too
> abstract to propose here. I'd certainly be interested in talking about it
> though. Another cool thing would be to allow for arbitrary compositions of
> different atomic operations, then apply barrier semantics to the whole lo=
t.
> Not sure how much mileage there is in that though, especially given the
> typical architectural restrictions on what you can in a LL/SC loop (and
> if they get too big, you shoot yourself in the foot).

OK, so I was bored in a waiting room..

So I've not yet had a look at all the arch ll/sc loop restrictions, for
some I'm sure the below will not work, but I'm hoping that for some
others it at least has a chance.

(also, waiting rooms suck..)

More or less Pseudo C, the ATOMIC things should be proper macros but I
was too lazy to do all the \ muck.

---

#ifndef load_exclusive
#define load_exclusive(ptr) ACCESS_ONCE(*ptr)
#endif

#ifndef	cmpxchg_relaxed
#define cmpxchg_relaxed	cmpxchg
#endif

/*
 * The 'stmt' statements below must include a statement of the form:
 *   __new =3D=3D f(__val);
 * which computes the new value from the current/old value.
 *
 * The __ret argument should be either __new or __val, to return the new or=
 old
 * value resp.
 */

#ifdef HAS_LL_SC

ATOMIC(ptr, stmt)
do {
	typeof(*ptr) __new, __val;

	do {
		__val =3D load_locked(ptr);
		stmt;
	} while (!store_conditional(ptr, __new));
} while (0)


ATOMIC_RET(ptr, __ret, stmt)
({
	typeof(*ptr) __new, __val;

	smp_mb__before_llsc();

	do {
		__val =3D load_locked(ptr);
		stmt;
	} while (!store_conditional(ptr, __new));

	smp_mb__after_llsc();

	__ret;
})

#else

ATOMIC(ptr, stmt)
do {
	typeof(*ptr) __old, __new, __val;

	__val =3D load_exclusive(ptr);
	for (;;) {
		stmt;
		__old =3D cmpxchg_relaxed(ptr, __val, __new);
		if (__old =3D=3D __val)
			break;
		__val =3D __old;
	}
} while (0)

ATOMIC(ptr, __ret, stmt)
({
	typeof(*ptr) __old, __new, __val;

	__val =3D load_exclusive(ptr);
	for (;;) {
		stmt;
		__old =3D cmpxchg(ptr, __val, __new);
		if (__old =3D=3D __val)
			break;
		__val =3D __old;
	}

	__ret;
})

#endif


static inline int atomic_add_unless(atomic_t *v, int a, int u)
{
	return ATOMIC_RET(&v->counter, __old,
		if (unlikely(__val =3D=3D u))
			break;
		__new =3D __val + a;
	);
}


And this also raises your other point, what barrier does/should
add_unless() imply in the failure case. The cmpxchg() variant won't in
fact guarantee any barrier, while the ll/sc one depends on the arch.

Also, maybe, we should take this discussion elsewhere.. :-)
