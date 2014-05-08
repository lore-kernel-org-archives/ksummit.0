Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 34B5499D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 16:39:28 +0000 (UTC)
Received: from e38.co.us.ibm.com (e38.co.us.ibm.com [32.97.110.159])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B84CE2036D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 16:39:27 +0000 (UTC)
Received: from /spool/local
	by e38.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Thu, 8 May 2014 10:39:27 -0600
Received: from b03cxnp08025.gho.boulder.ibm.com
	(b03cxnp08025.gho.boulder.ibm.com [9.17.130.17])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id CFFFA1FF003B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 10:39:25 -0600 (MDT)
Received: from d03av06.boulder.ibm.com (d03av06.boulder.ibm.com [9.17.195.245])
	by b03cxnp08025.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s48GdPX564749750
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 8 May 2014 18:39:25 +0200
Received: from d03av06.boulder.ibm.com (loopback [127.0.0.1])
	by d03av06.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVout) with ESMTP
	id s48GhFrY011435 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 8 May 2014 10:43:16 -0600
Date: Thu, 8 May 2014 09:39:24 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Will Deacon <will.deacon@arm.com>
Message-ID: <20140508163924.GG8754@linux.vnet.ibm.com>
References: <20140507182916.GG3694@arm.com>
	<20140507191208.GZ30445@twins.programming.kicks-ass.net>
	<20140507212001.GA5311@arm.com>
	<20140508091312.GH2844@laptop.programming.kicks-ass.net>
	<20140508142734.GF13658@twins.programming.kicks-ass.net>
	<20140508151331.GD8981@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140508151331.GD8981@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>,
	"waiman.long@hp.com" <waiman.long@hp.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asm-generic implementations of
 low-level synchronisation constructs
Reply-To: paulmck@linux.vnet.ibm.com
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 08, 2014 at 04:13:31PM +0100, Will Deacon wrote:
> On Thu, May 08, 2014 at 03:27:34PM +0100, Peter Zijlstra wrote:
> > On Thu, May 08, 2014 at 11:13:12AM +0200, Peter Zijlstra wrote:
> > > ATOMIC_RET(ptr, __ret, stmt)
> > > ({
> > > 	typeof(*ptr) __new, __val;
> > > 
> > > 	smp_mb__before_llsc();
> > > 
> > > 	do {
> > > 		__val = load_locked(ptr);
> > > 		stmt;
> > > 	} while (!store_conditional(ptr, __new));
> > > 
> > > 	smp_mb__after_llsc();
> > > 
> > > 	__ret;
> > > })
> > 
> > So the most common constraint (which you've confirmed is true for ARM as
> > well) is that we should not have memory accesses in between an LL/SC.
> 
> Yup.
> 
> > Making sure GCC doesn't do any is tricky, the best I can come up with is
> > tagging all variables with the register qualifier, like:
> > 
> > ATOMIC_RET(ptr, __ret, stmt)
> > ({
> > 	register typeof(*ptr) __new, __val;
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
> > 
> > Now, I'm not at all sure if register still means anything to GCC, but in
> > the faint hope that it still sees it as a hint this might just work.
> 
> I just ran this past our compiler guys and they threw rocks at me. Even if
> it happens to work today, I don't think we can rely on it tomorrow,
> unfortunately.
> 
> I think that makes the case for extended the fine-grained atomics
> implemented by each architecture, but it would still be great to have a way
> to compose them.

I suppose that we could attempt to apply the same structure to the asms,
but it is not clear that this would be a win.  There is some benefit to
having the assembly for each primitive laid out in one place, even if
it does mean quite a bit of duplicate code.

But yes, it sure feels like there should be some better way to do this...

							Thanx, Paul
