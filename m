Return-Path: <will.deacon@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AF543979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 14:17:05 +0000 (UTC)
Received: from cam-admin0.cambridge.arm.com (cam-admin0.cambridge.arm.com
	[217.140.96.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 107FF20116
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 14:17:04 +0000 (UTC)
Date: Thu, 8 May 2014 15:16:27 +0100
From: Will Deacon <will.deacon@arm.com>
To: Waiman Long <waiman.long@hp.com>
Message-ID: <20140508141627.GA8981@arm.com>
References: <20140507182916.GG3694@arm.com>
 <536AA2FC.6070006@hp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <536AA2FC.6070006@hp.com>
Cc: "peterz@infradead.org" <peterz@infradead.org>,
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

On Wed, May 07, 2014 at 10:17:48PM +0100, Waiman Long wrote:
> On 05/07/2014 02:29 PM, Will Deacon wrote:
> >    better_spin_unlock(atomic_t *lock)
> >    {
> > 	smp_store_release((u16 *)lock, atomic_read(lock) + 1);
> >    }
> 
> There is a problem that the current smp_store_release() supports only an 
> int or long data types. So the compilation will fail for a short or char 
> data types. It will make thing easier if short and char are also 
> supported, but that won't work in architectures like pre-EV56 alphas 
> which has no native 8 and 16 bits load/store instructions. Perhaps we 
> should think about retiring Linux support for those architectures.

I confess to having some Alphas from that timeframe, and it would be sad to
see them go :(

Despite that, if we could define some acquire/release accessors to work on a
bunch of native types then we could actually build atomic_t and atomic64_t
operations on top of those. So atomic_read(ACQUIRE, a) would be an
smp_load_acquire(a), where the latter can be used for u8/u16/u32/u64 too.

> > Another related area to clean up is the semantics around conditional
> > atomics (cmpxchg, add_unless, dec_if_positive etc) and barriers on the
> > failure paths.
> 
> The cmpxchg() function (xchg to a lesser extent) is frequently used in 
> synchronization primitives. If there are less costly instructions in 
> other architectures that implement that with just the acq or rel 
> semantics, we may consider adding the _acq() and _rel() versions.

I think Peter's approach of treating LL/SC and cmpxchg() as two different
ways to build other atomics probably works best here.

Will
