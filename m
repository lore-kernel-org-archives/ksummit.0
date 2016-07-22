Return-Path: <paulmck@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 954CD360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 16:44:08 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 156DA2C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 16:44:07 +0000 (UTC)
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6MGYdpP144016 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 12:44:07 -0400
Received: from e33.co.us.ibm.com (e33.co.us.ibm.com [32.97.110.151])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24bhktcj32-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 12:44:06 -0400
Received: from localhost
	by e33.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<paulmck@linux.vnet.ibm.com>; Fri, 22 Jul 2016 10:44:05 -0600
Received: from b01cxnp22035.gho.pok.ibm.com (b01cxnp22035.gho.pok.ibm.com
	[9.57.198.25])
	by d03dlp03.boulder.ibm.com (Postfix) with ESMTP id 1FEBA19D80C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:43:22 -0600 (MDT)
Received: from d01av01.pok.ibm.com (d01av01.pok.ibm.com [9.56.224.215])
	by b01cxnp22035.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u6MGhjTS57016424 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 16:43:45 GMT
Received: from d01av01.pok.ibm.com (localhost [127.0.0.1])
	by d01av01.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u6MGhi9n001105 for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 12:43:45 -0400
Date: Fri, 22 Jul 2016 09:44:11 -0700
From: "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>
To: David Howells <dhowells@redhat.com>
Reply-To: paulmck@linux.vnet.ibm.com
References: <15500.1469183675@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <15500.1469183675@warthog.procyon.org.uk>
Message-Id: <20160722164411.GJ7094@linux.vnet.ibm.com>
Cc: jakub@redhat.com, parri.andrea@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org, peterz@infradead.org,
	stern@rowland.harvard.edu, ramana.radhakrishnan@arm.com,
	luc.maranget@inria.fr, j.alglave@ucl.ac.uk
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

On Fri, Jul 22, 2016 at 11:34:35AM +0100, David Howells wrote:
> Earlier this year we had a discussion of the possibilities of using ISO C++11
> atomic operations inside the kernel to implement kernel atomic ops of sorts
> various, posted here:
> 
> 	Subject: [RFC PATCH 00/15] Provide atomics and bitops implemented with ISO C++11 atomics
> 	Date: Wed, 18 May 2016 16:10:37 +0100
> 
> Is it worth getting together to discuss these in person in one of the tech
> slots - especially if there are some gcc or llvm people available at plumbers
> who could join in?
> 
> 
> Further, Paul McKenney and others are assembling a memory model description.

We are attempting to automate memory-barriers.txt, so that you could
provide fragments of C code, and the tool would tell you whether a given
outcome happens always, sometimes, or never.  The current prototype
handles memory accesses, memory barriers, and RCU, but not yet locking
or read-modify-write atomics (though there is some vestigal support for
RMW atomics).  We are currently playing whack-a-mole with odd corner cases
of various architectures' memory models.  We are therefore also working
on ways of handling the resulting uncertainty.  Good clean fun!  ;-)

> Do we want to consider loosening up the kernel memory model?
> 
> Currently, for example, locks imply semi-permeable barriers that are not tied
> to the lock variable - but, as I understand it, this may not hold true on all
> arches, and on those arches an extra memory barrier would be required.  For
> example, { LOCK(A), UNLOCK(A), LOCK(B), UNLOCK(B) } would not imply a full
> memory barrier in the middle.

Agreed, the current version of memory-barriers.txt documents the fact
that an unlock/lock sequence does not imply a full memory barrier:

	Similarly, the reverse case of a RELEASE followed by an ACQUIRE
	does not imply a full memory barrier.

If we are going to talk about changing this, we should most definitely
include a powerpc arch maintainer.

> Also, we have read and write memory barrier constructs - but not all CPUs have
> such things, some instead have acquire and release.  Would it be worth having
> higher level constructs that encapsulate what you're trying to do and select
> the most appropriate barrier from the available choices?  For instance, we
> have a fair few circular buffers, with linux/circ_buf.h providing some useful
> bits.  Should we provide circular buffering barrier constructs?
> 
> 
> If we do this, Will Deacon, Peter Zijlstra and Paul McKenney should definitely
> be there.  I would suggest Jakub Jelinek and Ramana Radhakrishnan as gcc
> representatives.  I don't know anyone from LLVM.

Alan Stern should be included, as he is the author of the most recent
version of the prototype formalized memory model (including the current
extremely nice formal model of RCU!), Luc Maranget as the author of
the previous version, Jade Alglave as author of the first version and
founder of this project, and Andrea Parri for his many contributions to
recent models.

Shouldn't we also include experts on other SMP architectures?

							Thanx, Paul
