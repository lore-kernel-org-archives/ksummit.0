Return-Path: <will.deacon@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 59A73B05
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 18:29:57 +0000 (UTC)
Received: from cam-admin0.cambridge.arm.com (cam-admin0.cambridge.arm.com
	[217.140.96.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 005322026B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 18:29:55 +0000 (UTC)
Date: Wed, 7 May 2014 19:29:16 +0100
From: Will Deacon <will.deacon@arm.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20140507182916.GG3694@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: peterz@infradead.org, waiman.long@hp.com
Subject: [Ksummit-discuss] [TECH TOPIC] asm-generic implementations of
 low-level synchronisation constructs
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi all,

Traditionally, low-level synchronisation and atomic constructs have been
buried away in arch-specific code, with new arch maintainers having to
wrestle with Documentation/{memory-barriers,atomic_ops}.txt to ensure
they provide the (somewhat arbitrary) semantics expected by the kernel.

However, over the past year, there have been some notable events in this
area:

  (1) The addition of smp_load_acquire/smp_store_release across all
      architectures (including asm-generic)
      https://lwn.net/Articles/576486/

  (2) Merging of generic MCS spinlocks into kernel/locking, built using
      the macros introduced by (1). There are other similar patches for
      queued spinlocks and rwlocks, but they're not completely generic
      afaict.
      http://lwn.net/Articles/590243/

  (3) C11 atomics seem to be more prominent on people's radar.
      http://lwn.net/Articles/586838/

In light of these developments, I'd like to revisit what we expect from
architectures in the way of atomics and locks. Ultimately, this means
trying to construct efficient (not just functional!) spinlock, rwlock,
futex and bitop implementations in asm-generic which would be build out
of suitable, simple(r) atomic operations implemented by each architecture.

For example, a dumb spinlock can be constructed with our [cmp]xchg:

  dumb_spin_lock(atomic_t *lock)
  {
	while (atomic_cmpxchg(lock, 0, 1))
		cpu_relax();
  }

  dumb_spin_unlock(atomic_t *lock)
  {
	atomic_xchg(lock, 0);
  }

but nobody is going to flock to such an implementation. It's unfair and
has additional barrier overhead on weakly-ordered architectures.

What we'd like to write is something like (just trying to show the atomics
-- this is likely not endian-clean at least):

#define TICKET_SHIFT	16
#define TICKET_MASK	((1 << TICKET_SHIFT) - 1)

  better_spin_lock(atomic_t *lock)
  {
	/*
	 * Atomic add to lock with acquire semantics, returning original
	 * value.
	 */
	int old = atomic_xchg_add(ACQUIRE, lock, 1 << TICKET_SHIFT);
	if ((old << TICKET_SHIFT) == (old & (TICKET_MASK << TICKET_SHIFT)))
		return; /* Got the lock */

	while (smp_load_acquire((u16 *)lock) != (old >> TICKET_SHIFT))
		cpu_relax();
  }

  better_spin_unlock(atomic_t *lock)
  {
	smp_store_release((u16 *)lock, atomic_read(lock) + 1);
  }

which isn't perfect, but is much better than before and made possible by
the addition of atomic_xchg_add. The remaining parts to address are things
like power saving when spinning and synchronising unlock with I/O accesses,
but they will likely remain arch-specific. We should be able to do a similar
thing for other locking constructs.

Increasing the number of atomic operations would also help us to define
a cleaner interface to them, potentially easing any adoption of C11 atomics
in future. For example, rather than saying "atomic_set() does not imply
barriers" and "atomic_xchg() requires explicit memory barriers around the
operation", we could have store/release/store+release variants of them both
(similar to C11 and OpenCL). As it stands, there are a couple of cases
where atomic_xchg is used in preference to atomic_set + appropriate barriers
(just look for uses of xchg where the return value is ignored).

Another related area to clean up is the semantics around conditional
atomics (cmpxchg, add_unless, dec_if_positive etc) and barriers on the
failure paths.

Anyway, I've proposed this as a [TECH TOPIC] because I think sitting down
for half a day with other people interested in this problem could result
in us deciding on an initial set of atomic operations from which to build
efficient, generic locking constructs. That later part can definitely
happen on LKML, but the first steps will be a lot easier face-to-face.

Key people for this would be:

  - Peter Zijlstra
  - Ben Herrenschmidt
  - Paul McKenney
  - Waiman Long
  - Arnd Bergmann

Cheers,

Will
