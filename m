Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AD7DC41C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 Jul 2015 13:54:42 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0D4BA79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 Jul 2015 13:54:41 +0000 (UTC)
Date: Thu, 30 Jul 2015 15:54:40 +0200
From: Joerg Roedel <joro@8bytes.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150730135440.GB14980@8bytes.org>
References: <20150730130027.GA14980@8bytes.org>
	<1438263098.26511.179.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1438263098.26511.179.camel@infradead.org>
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

On Thu, Jul 30, 2015 at 02:31:38PM +0100, David Woodhouse wrote:
> On Thu, 2015-07-30 at 15:00 +0200, Joerg Roedel wrote:
> > 	    (2.3) How can we attach common state for off-CPU tasks to
> > 	          mm_struct (and what needs to be in there)?
> 
> And how do we handle the assignment of Address Space IDs? The AMD
> implementation currently allows the PASID space to be managed per
> -device, but I understand ARM systems handle the TLB shootdown
> broadcasts in hardware and need the PASID that the device sees to be
> identical to the ASID on the CPU's MMU? And there are reasons why we
> might actually want that model on Intel systems too. I'm working on the
> Intel SVM right now, and looking at a single-PASID-space model (partly
> because the PASID tables have to be physically contiguous, and they can
> be huge!).

True, ASIDs would be one thing that needs to be attached to a mm_struct,
but I am also interested what other platforms might need here. For
example, is there a better way to track these off-cpu users than using
mmu-notifiers.

> > 	(3) Does it make sense to implement automatic migration of
> > 	    system memory to device memory (when available) and vice
> > 	    versa? How do we decide what and when to migrate?
> 
> This is quite a horrid one, but perhaps ties into generic NUMA
> considerations — if a memory page is being frequently accessed by
> something that it's far away from, can we move it to closer memory?

Yeah, conceptually it is NUMA, so it might fit there. But the difference
to the current NUMA handling is that the device memory is not always
completly visible to the CPU, so I think quite some significant changes
are necessary to make this work.

Another idea is to handle migration like swapping. The difference to
real swapping is that it is not relying on the LRU lists but the device
access patterns we measure.

> The question is how we handle that. We do have Extended Accessed bits
> in the Intel implementation of SVM that let us know that a given PTE
> was used from a device. Although not *which* device, in cases where
> there might be more than one.

One way would be to use seperate page-tables for the devices (which, on
the other side, somehow contradicts the design of the hardware, because
its designed to reuse cpu page-tables).

And I don't know which features other devices have (like the CAPI
devices on Power that Paul wrote about) to help in this decission.



	Joerg
