Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AD9BC919
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 22:40:39 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 08904160
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 22:40:38 +0000 (UTC)
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6QMdEUv013976 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 18:40:38 -0400
Received: from e36.co.us.ibm.com (e36.co.us.ibm.com [32.97.110.154])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24e0gkg3jh-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 18:40:38 -0400
Received: from localhost
	by e36.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Tue, 26 Jul 2016 16:40:37 -0600
Received: from b01cxnp22036.gho.pok.ibm.com (b01cxnp22036.gho.pok.ibm.com
	[9.57.198.26])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id AE5121FF001E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 16:40:18 -0600 (MDT)
Received: from d01av01.pok.ibm.com (d01av01.pok.ibm.com [9.56.224.215])
	by b01cxnp22036.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u6QMeZJs62259208 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 22:40:35 GMT
Received: from d01av01.pok.ibm.com (localhost [127.0.0.1])
	by d01av01.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u6QMeYcQ012885 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 18:40:35 -0400
Date: Tue, 26 Jul 2016 15:40:35 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: Hannes Reinecke <hare@suse.com>
Reply-To: paulmck@linux.vnet.ibm.com
References: <Pine.LNX.4.44L0.1607260909420.12362-100000@netrider.rowland.org>
	<f7c305f7-939a-b66c-4d6b-333e41c23017@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f7c305f7-939a-b66c-4d6b-333e41c23017@suse.com>
Message-Id: <20160726224035.GD7094@linux.vnet.ibm.com>
Cc: jakub@redhat.com, parri.andrea@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org, peterz@infradead.org,
	Alan Stern <stern@rowland.harvard.edu>,
	ramana.radhakrishnan@arm.com, luc.maranget@inria.fr, j.alglave@ucl.ac.uk
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Memory model,
 using ISO C++11 atomic ops
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 26, 2016 at 05:23:36PM +0200, Hannes Reinecke wrote:
> On 07/26/2016 03:10 PM, Alan Stern wrote:
> >On Tue, 26 Jul 2016, Hannes Reinecke wrote:
> >
> >>I have been playing around with RCUs and memory barriers quite a lot
> >>recently, and found some really 'odd' use-cases in the kernel which
> >>would benefit from improvements here.
> >
> >Could you post one or two examples?  It would be interesting to see
> >what they involve.
> >
> I have been working on a performance regression when calling
> 'dm_suspend/dm_resume' repeatedly for several (hundreds) devices.
> That boiled down to the patch introducing srcu in the device mapper core
> with commit 83d5e5b0af907 (dm: optimize use SRCU and RCU).
> Looking at it the code they do things like:
> 
> 	set_bit(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags);
> 	if (map)
> 		synchronize_srcu(&md->io_barrier);
> 
> where the srcu is used to ensure the code has left the critical
> sections. However, if the memory pointed to by the srcu isn't
> actually freed why we could easily drop the 'synchronize_srcu' call.
> But that would require that
> a) the set_bit() above is indeed atomic
> and
> b) there's no need to call 'synchronize_rcu' if you're not actually
> freeing memory but rather fiddle pointers.
> Both are somewhat shady areas where the documentation nor usage
> reveals some obvious insights.

The set_bit() function is guaranteed to execute atomically, but it does
not guarantee any ordering against prior accesses.  The synchronize_rcu()
does provide ordering against the set_bit(), to subsequent accesses are
covered, but only in the case where "map" is non-zero.

For RCU, it does depend on the use case.  For example, there are some
rare but real cases where synchronize_rcu() is required even if you are
not freeing memory:

https://www.usenix.org/legacy/event/atc11/tech/final_files/Triplett.pdf

> On another example I've been doing performance patches to the lpfc
> driver (cf my talk at VAULT this year), where I've replaced most
> spinlocks with atomics and bitops.
> Which should work as well, only that it's still a bit unclear to me
> if an when you need barriers in addition to atomic resp bitops.

If the bitop returns a value, you don't need additional barriers.
Otherwise ...
 ... you need smp_mb__before_atomic() to order prior accesses
against the bitop and smp_mb__after_atomic() to order subsequent
accesses against the bitop.  If you need the bitop to be ordered
against both prior and subsequent accesses, then you need both
smp_mb__before_atomic() and smp_mb__after_atomic().

> And if you need barriers, which variant would be most appropriate?
> The __before or the __after variant?

 ... you need smp_mb__before_atomic() to order prior accesses
against the bitop and smp_mb__after_atomic() to order subsequent
accesses against the bitop.  If you need the bitop to be ordered
against both prior and subsequent accesses, then you need both
smp_mb__before_atomic() and smp_mb__after_atomic().

> Also, what happens to bitops on bitfields longer than an unsigned long?
> Are they still atomic?

>From what I can see, yes, sort of.  The "sort of" part is due to the fact
that bitops on widely separated bits would be would avoid interfering
with each other, but on the other hand, there would be no cause-and-effect
relationship between them, either.  Furthermore, processes reading the
bits set might disagree on the order in which they were set.

All that aside, please note that the initial memory model is limited
to memory reference, barriers, and RCU.  We do not yet have locking or
read-modify-write atomic operations.  We have to start somewhere!

							Thanx, Paul
