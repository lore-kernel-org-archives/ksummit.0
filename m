Return-Path: <phillip@lougher.demon.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 948187AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Jun 2014 07:03:19 +0000 (UTC)
Received: from smtp.demon.co.uk (mdfmta010.mxout.tch.inty.net [91.221.169.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D4C7E1F952
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Jun 2014 07:03:17 +0000 (UTC)
Message-ID: <53994FED.1080106@lougher.demon.co.uk>
Date: Thu, 12 Jun 2014 07:59:57 +0100
From: Phillip Lougher <phillip@lougher.demon.co.uk>
MIME-Version: 1.0
To: Christoph Lameter <cl@gentwo.org>,
	ksummit-discuss@lists.linuxfoundation.org
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
In-Reply-To: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
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

On 11/06/14 20:03, Christoph Lameter wrote:
> Well this is likely to be a bit of a hot subject but I have been thinking
> about this for a couple of years now. This is just a loose collection of
> some concerns that I see mostly at the high end but many of these also are
> valid for more embedded solutions that have performance issues as well
> because the devices are low powered (Android?).
>
>
>
> There are numerous issues in memory management that create a level of
> complexity that suggests a rewrite would at some point be beneficial:

Slow incremental improvements, which are already happening, yes.
"Grand plans" to rewrite everything from scratch, please no.

Academic computing research is littered with grand plans that never
went anywhere.  Not least your list, which sound like the objectives
of the late 80s/mid 90s research into "multi-service operating systems"
(or the wider distributed operating systems research of the time).

There too we (I was doing research into this at the time), were envisaging
hundreds of heterogeneous CPUs with diverse memory hierarchies,
interconnects, I/O configurations, instruction set etc. and  imagining a
grand unifying system that would tie these together.  In addition this was
the time that audio and video became a serious proposition, and so ideas to
incorporate these new concepts into the operating system as "first-class"
objects became all the rage, so knowledge of the special characteristics of
audio/video were to be built into memory management, the schedulers, the
filesystems.  Old style operating systems like Unix were out, and everything
was to be redesigned from scratch.

There were some good ideas proposed, some which in various forms have made their
way incrementally into Linux (your list of zones, NUMA, page fault minimisation,
direct hardware access).  But, in general it failed, it made no discernible
impact on the state of the art in operating system implementation.  Because
it was too much, too grand, no research group has the wherewithal to
design this from scratch, and by and large the operating systems companies
were happy with what they had.  Some universities (like Lancaster and Cambridge
where I worked, had prototypes, but these were exemplars of how little rather
than how much).

Only one company to my knowledge had the hubris to design a new operating
system along these lines from scratch, Acorn computers of Cambridge UK
(the originators of the ARM CPU BTW), where I left Cambridge University to help
design the operating system.  Again, nice ideas, but, it proved too much and Acorn
went bankrupt in 1998.  The new operating system was called Galileo, and
there's a few links still around, i.e. http://www.poppyfields.net/acorn/news/acopress/97-02-10b.shtml

In contrast Linux which I'd installed in 1994, when I was busily
doing "real operating systems work" and dismissed as a toy, took the
"modest" approach of reimplementing Unix.  After 4 years in 1998, Linux
was becoming something to be reckoned with, whilst grand plans just
led to failure.

In fact within a few years Linux with its "old school" design on a single
core was doing things that took us specialised operating systems
techniques to do, simply because hardware had become so much better it
turned out they were no longer needed.

Yeah, this is probably highly off topic, but I had deja vu when reading
this "let's redesign everything from scratch, what could possibly go
wrong" list.

BTW I looked up some of my old colleagues, and it turns out they
were still writing papers on this as late as 2009 (only 13 years after I
left for Acorn and industry).

"The multikernel: a new OS architecture for scalable multicore systems"
http://dl.acm.org/citation.cfm?doid=1629575.1629579

It's pay walled, but the abstract has the following which may be of interest
to you

"We have implemented a multikernel OS to show that the approach is promising,
and we describe how traditional scalability problems for operating systems
(such as memory management) can be effectively recast using messages and can
exploit insights from distributed systems and networking."

lol

>
>
> 1. The need to use larger order pages, and the resulting problems with
> fragmentation. Memory sizes grow and therefore the number of page structs
> where state has to be maintained. Maybe there is something different? If
> we use hugepages then we have 511 useless page structs. Some apps need
> linear memory where we have trouble and are creating numerous memory
> allocators (recently the new bootmem allocator and CMA. Plus lots of
> specialized allocators in various subsystems).
>

This was never solved to my knowledge, there is no panacea here.
Even in the 90s we had video subsystems wanting to allocate in units
of 1Mbyte, and others in units of 4k.  The "solution" was so called
split-level allocators, each specialised to deal with a particular
"first class media", with them giving back memory to the underlying
allocator when memory got tight in another specialised allocator.
Not much different to the ad-hoc solutions being adopted in Linux,
except the general idea was each specialised allocator had the same
API.


> 2. Support machines with massive amounts of cpus. I got a power8 system
> for testing and it has 160 "cpus" on two sockets and four numa
> nodes. The new processors from Intel may have up to 18 cores per socket which
> only yields 72 "cpus" for a 2 socket sysetm but there are systems with
> more socket available and the out look on that level is scary.
>
> Per cpu state and per node state is replicated and it becomes problematic
> to aggregate the state for the whole machine since looping over the per
> cpu areas becomes expensive.
>
> Can we develop the notion that subsystems own certain cores so that their
> execution is restricted to a subset of the system avoiding data
> replication and keeping subsystem data hot? I.e. have a device driver
> and subsystems driving those devices just run on the NUMA node to which
> the PCI-E root complex is attached. Restricting to NUMA node reduces data
> locality complexity and increases performance due to cache hot data.

Lots of academic hot-air was expended here when designing distributed
systems which could scale seamlessly across heterogeneous CPUs connected
via different levels of interconnects (bus, ATM, ethernet etc.), zoning,
migration, replication etc.  The "solution" is probably out there somewhere
forgotten about.

>
> 3. Allocation "Zones". These are problematic because the zones often do
> not reflect the capabilities of devices to allocate in certain ranges.
> They are used for other purposes like MOVABLE pages but then the pages are
> not really movable because they are pinnned for other reasons. Argh.
>
> 4. Performance characteristics can often not be mapped to kernel
> mechanisms. We have NUMA where we can do things but the cpu caching
> effects as well as TLB sharing plus the caching of the DIMMs in page
> buffers is not really well exploited.
>
> 4. Swap: No one really wants to swap today. This needs to be replaced with
> something else. Going heavily into swap is akin to locking up the system.
> There are numerous band aid solutions but nothing appealing. Maybe the
> best idea is the Android idea of the saving app state and removing it from
> memory.

Embedded system operating systems by and large never had swap.
Embedded systems which today use Linux see swap as a null op.  It isn't
used. It is madness to swap to a NAND device.

But I actually think Linux is ahead of the curve here, with things
like zcache, zswap and compressed filesystems which can be used as
an intermediate stage, storing data compressed in memory which is only
expanded when necessary.  All of these minimise memory footprint without
having to resort to a swap device.

>
> 5. Page faults:
>
> We do not really use page faults the way they are intended to be used. A
> file fault causes numerous readahead requests and then only minor faults
> are generated.  There is the frequent desire to not have these long
> interruptions occur when code is running. mlock[all] is there but isnt
> there a better cleaner solution? Maybe we do not want to page a process at
> all. Virtualization-like approaches that only support a single process
> (like OSV) may be of interest.

You concentrate only on page faults swapping file data into memory.
By and large embedded systems aim to try and run with their working
set in memory (i.e. demand paged at start up but then in cache), trying
to preserve any kind of real time guarantee when you discover half your
working set has been flushed, and suddenly needs to paged back in from slow
NAND is a null op.

Page faults between processes with shared mmap segments or more often
context switches and repeated memcopying to do I/O between processes
is what concerns embedded systems.  Context switching and memcopying just
throws away limited bandwidth on an embedded system.

Case in point, many years ago I was the lead Linux guy for a company
designing a SOC for digital TV.  Just before I left I had an interesting
"conversation" with the chief hardware guy of the team who designed the SOC.
Turns out they'd budgeted for the RAM bandwidth needed to decode a typical
MPEG stream, but they'd not reckoned on all the memcopies Linux needs to do
between its "separate address space" processes.  He'd been used to embedded
oses which run in a single address space.

Fact is security is ever more important even in embedded systems, and a
multi address operating system gives security impossible in single
address operating systems which do away with paging for efficiency.
This security comes at a price.

Back when I was designing Galileo for Acorn in the 90s, we knew all about
the tradeoffs between single address and multi-address operating systems.
I introduced the concept of containers (not the same as the modern Linux
containers), separate units of I/O which could be transferred efficiently
between processes.  We had the concept that trusted processes could be
in the same address space, and untrusted processes would be in separate
address spaces.  Containers transferred between separate address spaces
was done via page flipping (unmapping from source, remapping to destination),
but containers passed between processes in the same address space would be
done via handle.  But the same API was done for both, processes could be
moved between address spaces but the API was the same.  Thus trading off
security and efficiency, but it was invisible to the application.

>
> Sometimes I think that something like MS-DOS (a "monitor")which provides
> services but then gets out of the way may be better because it does not
> create the problems that require workaround of an OS. Maybe the full
> features "OS" can run on some cores whereas others can only have monitor
> like services (we are on the way there with the dynticks approaches by
> Frederic Weisbecker).
>
> 6. Direct hardware access
>
> Often the kernel subsystems are impeding performance. In high speed
> computing we regularly bypass the kernel network subsystems, block I/O
> etc. Direct hardware access means though that one is explosed to the ugly
> particularities of how a certain device has to be handled. Can we have the
> cake and eat it too by defining APIs that allow low level hardware access
> but also provide hardware abstraction (maybe limited to certain types of
> devices).

Been there done that.  One of the ideas at the time was to reduce
the "operating system" to a micro micro kernel, dealing with
lowest possible abstraction only.  The relevant operating system "stack"
would be directly mapped into each process (i.e. the networking stack),
avoiding the costly context switch entering kernel mode.  But unless you
were to produce a "stack" for each and every possible hardware device
it meant you had to produce a stack dealing with hardware at the lowest
level, but in a generic API way, the actual mapping of that generic
hardware API in theory being a wafer thin "shim".  Real hardware doesn't
work like that.  One example, I tried to do that for DMA controllers, but it
turns out DMA controllers are widely different, the best performance is
obtained via direct knowledge of their quirks.  By the time I had worked
out a generic API that would work as shim across all controllers, none of
the elegance or performance of anything was retained.

Phillip


>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> .
>
