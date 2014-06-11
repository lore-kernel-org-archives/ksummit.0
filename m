Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6F5B0847
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 19:03:08 +0000 (UTC)
Received: from qmta10.emeryville.ca.mail.comcast.net
	(qmta10.emeryville.ca.mail.comcast.net [76.96.30.17])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D2AC92027D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 19:03:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by gentwo.org (Postfix) with ESMTP id 5B88A4D8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 14:03:05 -0500 (CDT)
Date: Wed, 11 Jun 2014 14:03:05 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Subject: [Ksummit-discuss] [CORE TOPIC] Redesign Memory Management layer and
 more core subsystem
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Well this is likely to be a bit of a hot subject but I have been thinking
about this for a couple of years now. This is just a loose collection of
some concerns that I see mostly at the high end but many of these also are
valid for more embedded solutions that have performance issues as well
because the devices are low powered (Android?).



There are numerous issues in memory management that create a level of
complexity that suggests a rewrite would at some point be beneficial:


1. The need to use larger order pages, and the resulting problems with
fragmentation. Memory sizes grow and therefore the number of page structs
where state has to be maintained. Maybe there is something different? If
we use hugepages then we have 511 useless page structs. Some apps need
linear memory where we have trouble and are creating numerous memory
allocators (recently the new bootmem allocator and CMA. Plus lots of
specialized allocators in various subsystems).

2. Support machines with massive amounts of cpus. I got a power8 system
for testing and it has 160 "cpus" on two sockets and four numa
nodes. The new processors from Intel may have up to 18 cores per socket which
only yields 72 "cpus" for a 2 socket sysetm but there are systems with
more socket available and the out look on that level is scary.

Per cpu state and per node state is replicated and it becomes problematic
to aggregate the state for the whole machine since looping over the per
cpu areas becomes expensive.

Can we develop the notion that subsystems own certain cores so that their
execution is restricted to a subset of the system avoiding data
replication and keeping subsystem data hot? I.e. have a device driver
and subsystems driving those devices just run on the NUMA node to which
the PCI-E root complex is attached. Restricting to NUMA node reduces data
locality complexity and increases performance due to cache hot data.

3. Allocation "Zones". These are problematic because the zones often do
not reflect the capabilities of devices to allocate in certain ranges.
They are used for other purposes like MOVABLE pages but then the pages are
not really movable because they are pinnned for other reasons. Argh.

4. Performance characteristics can often not be mapped to kernel
mechanisms. We have NUMA where we can do things but the cpu caching
effects as well as TLB sharing plus the caching of the DIMMs in page
buffers is not really well exploited.

4. Swap: No one really wants to swap today. This needs to be replaced with
something else. Going heavily into swap is akin to locking up the system.
There are numerous band aid solutions but nothing appealing. Maybe the
best idea is the Android idea of the saving app state and removing it from
memory.

5. Page faults:

We do not really use page faults the way they are intended to be used. A
file fault causes numerous readahead requests and then only minor faults
are generated.  There is the frequent desire to not have these long
interruptions occur when code is running. mlock[all] is there but isnt
there a better cleaner solution? Maybe we do not want to page a process at
all. Virtualization-like approaches that only support a single process
(like OSV) may be of interest.

Sometimes I think that something like MS-DOS (a "monitor")which provides
services but then gets out of the way may be better because it does not
create the problems that require workaround of an OS. Maybe the full
features "OS" can run on some cores whereas others can only have monitor
like services (we are on the way there with the dynticks approaches by
Frederic Weisbecker).

6. Direct hardware access

Often the kernel subsystems are impeding performance. In high speed
computing we regularly bypass the kernel network subsystems, block I/O
etc. Direct hardware access means though that one is explosed to the ugly
particularities of how a certain device has to be handled. Can we have the
cake and eat it too by defining APIs that allow low level hardware access
but also provide hardware abstraction (maybe limited to certain types of
devices).
