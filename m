Return-Path: <will.deacon@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id ABEDC9A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 21:20:40 +0000 (UTC)
Received: from cam-admin0.cambridge.arm.com (cam-admin0.cambridge.arm.com
	[217.140.96.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id F2CCA1FC53
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 21:20:39 +0000 (UTC)
Date: Wed, 7 May 2014 22:20:01 +0100
From: Will Deacon <will.deacon@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <20140507212001.GA5311@arm.com>
References: <20140507182916.GG3694@arm.com>
	<20140507191208.GZ30445@twins.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140507191208.GZ30445@twins.programming.kicks-ass.net>
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

Hi Peter,

On Wed, May 07, 2014 at 08:12:08PM +0100, Peter Zijlstra wrote:
> On Wed, May 07, 2014 at 07:29:16PM +0100, Will Deacon wrote:
> >   better_spin_lock(atomic_t *lock)
> >   {
> > 	/*
> > 	 * Atomic add to lock with acquire semantics, returning original
> > 	 * value.
> > 	 */
> > 	int old = atomic_xchg_add(ACQUIRE, lock, 1 << TICKET_SHIFT);
> > 	if ((old << TICKET_SHIFT) == (old & (TICKET_MASK << TICKET_SHIFT)))
> > 		return; /* Got the lock */
> > 
> > 	while (smp_load_acquire((u16 *)lock) != (old >> TICKET_SHIFT))
> > 		cpu_relax();
> >   }
> 
> So xchg_add and atomic_add_return() are pretty much an identity map
> because the add operation is reversible. The other popular name for this
> operation is fetch_add() fwiw.

Yup, and we could implement atomic_xchg_add (or atomic_fetch_add :) in
asm-generic using atomic_add_return followed by a subtraction. However,
architectures might be able to avoid the sub (especially on LL/SC
implementations like ARM).

> In any case, something that's been brewing in the back of my mind is an
> ATOMIC_OP() and ATOMIC_RET_OP() macro construct that takes a lambda
> function (expr-stmt is I think the closes we get in C) and either
> generates the appropriate ll/sc loop or a cmpxchg loop, depending on
> arch.

I've been thinking along the same lines but decided it was a bit too
abstract to propose here. I'd certainly be interested in talking about it
though. Another cool thing would be to allow for arbitrary compositions of
different atomic operations, then apply barrier semantics to the whole lot.
Not sure how much mileage there is in that though, especially given the
typical architectural restrictions on what you can in a LL/SC loop (and
if they get too big, you shoot yourself in the foot).

> Its fairly sad that many of the generic atomic operations we do with
> cmpxchg loops where ll/sc archs can do better using their ll/sc
> primitive and I just feel there must be a semi-sane way to express all
> that, despite C :-)

Hehe, yeah. It's like trying to implement a functional programming language
in the preprocessor...

> That also reminds me, I should send round 2 of the arch atomic cleanups
> (I've got the patches), and write changelogs for round 3, and start on
> the patches for round 4 :-)

Excellent! Please stick me on CC when you send them out.

Will
