Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 08FA5934
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 17:02:58 +0000 (UTC)
Received: from qmta08.emeryville.ca.mail.comcast.net
	(qmta08.emeryville.ca.mail.comcast.net [76.96.30.80])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A0A9D1F951
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 17:02:57 +0000 (UTC)
Date: Fri, 13 Jun 2014 12:02:54 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Phillip Lougher <phillip@lougher.demon.co.uk>
In-Reply-To: <53994FED.1080106@lougher.demon.co.uk>
Message-ID: <alpine.DEB.2.10.1406131158490.913@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<53994FED.1080106@lougher.demon.co.uk>
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Thu, 12 Jun 2014, Phillip Lougher wrote:

> > 1. The need to use larger order pages, and the resulting problems with
> > fragmentation. Memory sizes grow and therefore the number of page structs
> > where state has to be maintained. Maybe there is something different? If
> > we use hugepages then we have 511 useless page structs. Some apps need
> > linear memory where we have trouble and are creating numerous memory
> > allocators (recently the new bootmem allocator and CMA. Plus lots of
> > specialized allocators in various subsystems).
> >
>
> This was never solved to my knowledge, there is no panacea here.
> Even in the 90s we had video subsystems wanting to allocate in units
> of 1Mbyte, and others in units of 4k.  The "solution" was so called
> split-level allocators, each specialised to deal with a particular
> "first class media", with them giving back memory to the underlying
> allocator when memory got tight in another specialised allocator.
> Not much different to the ad-hoc solutions being adopted in Linux,
> except the general idea was each specialised allocator had the same
> API.

It is solvable if the objects are inherent movable. If any object
allocated provides a function that makes an object movable then
defragmentation is possible and therefore large contiguous area of memory
can be created at any time.


> > Can we develop the notion that subsystems own certain cores so that their
> > execution is restricted to a subset of the system avoiding data
> > replication and keeping subsystem data hot? I.e. have a device driver
> > and subsystems driving those devices just run on the NUMA node to which
> > the PCI-E root complex is attached. Restricting to NUMA node reduces data
> > locality complexity and increases performance due to cache hot data.
>
> Lots of academic hot-air was expended here when designing distributed
> systems which could scale seamlessly across heterogeneous CPUs connected
> via different levels of interconnects (bus, ATM, ethernet etc.), zoning,
> migration, replication etc.  The "solution" is probably out there somewhere
> forgotten about.

We have the issue with homogenous cpus due to the proliferation of cores
on processors now. Maybe that is solvable?

> Case in point, many years ago I was the lead Linux guy for a company
> designing a SOC for digital TV.  Just before I left I had an interesting
> "conversation" with the chief hardware guy of the team who designed the SOC.
> Turns out they'd budgeted for the RAM bandwidth needed to decode a typical
> MPEG stream, but they'd not reckoned on all the memcopies Linux needs to do
> between its "separate address space" processes.  He'd been used to embedded
> oses which run in a single address space.

Well maybe that is appropriate for some processes? And we could carve out
subsections of the hardware where single adress space stuff is possible?
