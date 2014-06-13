Return-Path: <benh@au1.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 68F939FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 21:36:19 +0000 (UTC)
Received: from e23smtp01.au.ibm.com (e23smtp01.au.ibm.com [202.81.31.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7009D20213
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 21:36:18 +0000 (UTC)
Received: from /spool/local
	by e23smtp01.au.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from <benh@au1.ibm.com>;
	Sat, 14 Jun 2014 07:36:15 +1000
Received: from d23relay03.au.ibm.com (d23relay03.au.ibm.com [9.190.235.21])
	by d23dlp03.au.ibm.com (Postfix) with ESMTP id EB68C3578047
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jun 2014 07:36:12 +1000 (EST)
Received: from d23av04.au.ibm.com (d23av04.au.ibm.com [9.190.235.139])
	by d23relay03.au.ibm.com (8.13.8/8.13.8/NCO v10.0) with ESMTP id
	s5DLZv8T7995726 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jun 2014 07:35:57 +1000
Received: from d23av04.au.ibm.com (localhost [127.0.0.1])
	by d23av04.au.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	s5DLaCcg025047 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jun 2014 07:36:12 +1000
Message-ID: <1402695366.20360.14.camel@pasglop>
From: Benjamin Herrenschmidt <benh@au1.ibm.com>
To: Christoph Lameter <cl@gentwo.org>
Date: Sat, 14 Jun 2014 07:36:06 +1000
In-Reply-To: <alpine.DEB.2.10.1406131158490.913@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<53994FED.1080106@lougher.demon.co.uk>
	<alpine.DEB.2.10.1406131158490.913@gentwo.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Redesign Memory Management layer
 and more core subsystem
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2014-06-13 at 12:02 -0500, Christoph Lameter wrote:
> On Thu, 12 Jun 2014, Phillip Lougher wrote:
> 
> > > 1. The need to use larger order pages, and the resulting problems with
> > > fragmentation. Memory sizes grow and therefore the number of page structs
> > > where state has to be maintained. Maybe there is something different? If
> > > we use hugepages then we have 511 useless page structs. Some apps need
> > > linear memory where we have trouble and are creating numerous memory
> > > allocators (recently the new bootmem allocator and CMA. Plus lots of
> > > specialized allocators in various subsystems).
> > >
> >
> > This was never solved to my knowledge, there is no panacea here.
> > Even in the 90s we had video subsystems wanting to allocate in units
> > of 1Mbyte, and others in units of 4k.  The "solution" was so called
> > split-level allocators, each specialised to deal with a particular
> > "first class media", with them giving back memory to the underlying
> > allocator when memory got tight in another specialised allocator.
> > Not much different to the ad-hoc solutions being adopted in Linux,
> > except the general idea was each specialised allocator had the same
> > API.
> 
> It is solvable if the objects are inherent movable. If any object
> allocated provides a function that makes an object movable then
> defragmentation is possible and therefore large contiguous area of memory
> can be created at any time.

Another interesting thing is migration of pages with mapped DMA on
them :-)

Our IOMMUs support that, but there isn't a way to hook that up into
Linux page migration that wouldn't suck massively at this point.

> > > Can we develop the notion that subsystems own certain cores so that their
> > > execution is restricted to a subset of the system avoiding data
> > > replication and keeping subsystem data hot? I.e. have a device driver
> > > and subsystems driving those devices just run on the NUMA node to which
> > > the PCI-E root complex is attached. Restricting to NUMA node reduces data
> > > locality complexity and increases performance due to cache hot data.
> >
> > Lots of academic hot-air was expended here when designing distributed
> > systems which could scale seamlessly across heterogeneous CPUs connected
> > via different levels of interconnects (bus, ATM, ethernet etc.), zoning,
> > migration, replication etc.  The "solution" is probably out there somewhere
> > forgotten about.
> 
> We have the issue with homogenous cpus due to the proliferation of cores
> on processors now. Maybe that is solvable?
> 
> > Case in point, many years ago I was the lead Linux guy for a company
> > designing a SOC for digital TV.  Just before I left I had an interesting
> > "conversation" with the chief hardware guy of the team who designed the SOC.
> > Turns out they'd budgeted for the RAM bandwidth needed to decode a typical
> > MPEG stream, but they'd not reckoned on all the memcopies Linux needs to do
> > between its "separate address space" processes.  He'd been used to embedded
> > oses which run in a single address space.
> 
> Well maybe that is appropriate for some processes? And we could carve out
> subsections of the hardware where single adress space stuff is possible?
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
