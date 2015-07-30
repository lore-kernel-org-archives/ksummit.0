Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2CFB1268
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 Jul 2015 22:37:31 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 535F11C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 Jul 2015 22:37:29 +0000 (UTC)
Message-ID: <1438295541.14073.52.camel@kernel.crashing.org>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Joerg Roedel <joro@8bytes.org>
Date: Fri, 31 Jul 2015 08:32:21 +1000
In-Reply-To: <20150730130027.GA14980@8bytes.org>
References: <20150730130027.GA14980@8bytes.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Core Kernel support for
 Compute-Offload Devices
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2015-07-30 at 15:00 +0200, Joerg Roedel wrote:
> [
>  The topic is highly technical and could be a tech topic. But it also
>  touches multiple subsystems, so I decided to submit it as a core
>  topic.
> ]
> 
> Across architectures and vendors there are new devices coming up for
> offloading tasks from the CPUs. Most of these devices are capable to
> operate on user address spaces.

There is cross-overs with the proposed FPGA topic as well, for example
CAPI is typically FPGA's that can operate on user address spaces ;-)

> Besides the commonalities there are important differences in the memory
> model these devices offer. Some work only on system RAM, others come
> with their own memory which may or may not be accessible by the CPU.
> 
> I'd like to discuss what support we need in the core kernel for these
> devices. A probably incomplete list of open questions:

I would definitely like to attend this.

> 	(1) Do we need the concept of an off-CPU task in the kernel
> 	    together with a common interface to create and manage them
> 	    and probably a (collection of) batch scheduler(s) for these
> 	    tasks?

It might be interesting at least to cleanup how we handle & account page
faults for these things. Scheduling is a different matter, for CAPI for
example the scheduling is entirely done in HW. For things like GPU, it's
a mixture of HW and generally some kind of on-GPU kernel isn't it ?
Quite proprietary in any case. Back in the Cell days, the kernel did
schedule the SPUs so this would have been a use case of what you
propose.

So I'd think that such an off-core scheduler, while a useful thing for
some of these devices, should be an optional component, ie, the other
functionalities shouldn't necessarily depend on it.

> 	(2) Changes in memory management for devices accessing user
> 	    address spaces:
> 	    
> 	    (2.1) How can we best support the different memory models
> 	          these devices support?
> 	    
> 	    (2.2) How do we handle the off-CPU users of an mm_struct?
> 	    
> 	    (2.3) How can we attach common state for off-CPU tasks to
> 	          mm_struct (and what needs to be in there)?

Right. Some of this (GPUs, MLX) use the proposed HMM infrastructure that
Jerome Glisse have been developing, so he would be an interested party
here, which hooks into the existing MM. Some of these like CAPI (or more
stuff I can't quite talk about just yet) will just share the MMU data
structures (direct access to the host page tables).

The refcounting of mm_struct comes to mind, but also, dealing with the
tracking of which CPU accessed a given context (for example, on POWER,
with CAPI, we need to "upgrade" to global tlb invalidations even for
single threaded apps if the context was used by such an accelerator).

> 	(3) Does it make sense to implement automatic migration of
> 	    system memory to device memory (when available) and vice
> 	    versa? How do we decide what and when to migrate?

Definitely a hot subject. I don't now if you have seen the "proposal"
that Paul McKenney posted a while back. This is in part what HMM does
for non-cache-coherent devices. There are lots of open questions for
cache-coherent ones, such as should we provide struct page for them, how
do we keep normal kernel allocs off the device, etc... ideas like
memory-only NUMA nodes with large distance did crop up.

> 	(4) What features do we require in the hardware to support it
> 	    with a common interface?
>
> I think it would be great if the kernel would have a common interface
> for these kind of devices. Currently every vendor develops its own
> interface with various hacks to work around core code behavior.
> 
> I am particularily interested in this topic because on PCIe newer IOMMUs
> are often an integral part in supporting these devices (ARM-SMMUv3,
> Intel VT-d with SVM, AMD IOMMUv2). so that core work here will also
> touch the IOMMU code.
> 
> Probably (uncomplete list of) interested people:
> 
> 	David Woodhouse
> 	Jesse Barnes
> 	Will Deacon
> 	Paul E. McKenney
> 	Rik van Riel
> 	Mel Gorman
> 	Andrea Arcangeli
> 	Christoph Lameter
> 	Jérôme Glisse

Add me :)

Cheers,
Ben.

> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
