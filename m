Return-Path: <will.deacon@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 09196942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 15:14:07 +0000 (UTC)
Received: from cam-admin0.cambridge.arm.com (cam-admin0.cambridge.arm.com
	[217.140.96.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 678FA20248
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 15:14:06 +0000 (UTC)
Date: Thu, 8 May 2014 16:13:31 +0100
From: Will Deacon <will.deacon@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <20140508151331.GD8981@arm.com>
References: <20140507182916.GG3694@arm.com>
	<20140507191208.GZ30445@twins.programming.kicks-ass.net>
	<20140507212001.GA5311@arm.com>
	<20140508091312.GH2844@laptop.programming.kicks-ass.net>
	<20140508142734.GF13658@twins.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140508142734.GF13658@twins.programming.kicks-ass.net>
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

On Thu, May 08, 2014 at 03:27:34PM +0100, Peter Zijlstra wrote:
> On Thu, May 08, 2014 at 11:13:12AM +0200, Peter Zijlstra wrote:
> > ATOMIC_RET(ptr, __ret, stmt)
> > ({
> > 	typeof(*ptr) __new, __val;
> > 
> > 	smp_mb__before_llsc();
> > 
> > 	do {
> > 		__val = load_locked(ptr);
> > 		stmt;
> > 	} while (!store_conditional(ptr, __new));
> > 
> > 	smp_mb__after_llsc();
> > 
> > 	__ret;
> > })
> 
> So the most common constraint (which you've confirmed is true for ARM as
> well) is that we should not have memory accesses in between an LL/SC.

Yup.

> Making sure GCC doesn't do any is tricky, the best I can come up with is
> tagging all variables with the register qualifier, like:
> 
> ATOMIC_RET(ptr, __ret, stmt)
> ({
> 	register typeof(*ptr) __new, __val;
> 
> 	smp_mb__before_llsc();
> 
> 	do {
> 		__val = load_locked(ptr);
> 		stmt;
> 	} while (!store_conditional(ptr, __new));
> 
> 	smp_mb__after_llsc();
> 
> 	__ret;
> })
> 
> Now, I'm not at all sure if register still means anything to GCC, but in
> the faint hope that it still sees it as a hint this might just work.

I just ran this past our compiler guys and they threw rocks at me. Even if
it happens to work today, I don't think we can rely on it tomorrow,
unfortunately.

I think that makes the case for extended the fine-grained atomics
implemented by each architecture, but it would still be great to have a way
to compose them.

Will
