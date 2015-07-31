Return-Path: <jglisse@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 66DCD415
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:34:57 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E6E888B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:34:56 +0000 (UTC)
Date: Fri, 31 Jul 2015 12:34:53 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: Joerg Roedel <joro@8bytes.org>
Message-ID: <20150731163453.GB2039@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150730135440.GB14980@8bytes.org>
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

On Thu, Jul 30, 2015 at 13:54:40 UTC 2015, Joerg Roedel wrote:
> On Thu, Jul 30, 2015 at 02:31:38PM +0100, David Woodhouse wrote:
> > On Thu, 2015-07-30 at 15:00 +0200, Joerg Roedel wrote:
> > > 	    (2.3) How can we attach common state for off-CPU tasks to
> > > 	          mm_struct (and what needs to be in there)?
> > 
> > And how do we handle the assignment of Address Space IDs? The AMD
> > implementation currently allows the PASID space to be managed per
> > -device, but I understand ARM systems handle the TLB shootdown
> > broadcasts in hardware and need the PASID that the device sees to be
> > identical to the ASID on the CPU's MMU? And there are reasons why we
> > might actually want that model on Intel systems too. I'm working on the
> > Intel SVM right now, and looking at a single-PASID-space model (partly
> > because the PASID tables have to be physically contiguous, and they can
> > be huge!).
> 
> True, ASIDs would be one thing that needs to be attached to a mm_struct,
> but I am also interested what other platforms might need here. For
> example, is there a better way to track these off-cpu users than using
> mmu-notifiers.

No the ASID should not be associated with mm_struct. There is to
few ASID to have enough of them. I think currently there is only
8bits worth of ASID. So what happen is that the GPU device driver
schedule process and recycle ASID as it does.

Which means that ASID really need to be on device driver control
as i explained in another mail only device driver knows how to
schedule thing for a given device and it is too much hw specific
to be move to common code.


> > > 	(3) Does it make sense to implement automatic migration of
> > > 	    system memory to device memory (when available) and vice
> > > 	    versa? How do we decide what and when to migrate?
> > 
> > This is quite a horrid one, but perhaps ties into generic NUMA
> > considerations — if a memory page is being frequently accessed by
> > something that it's far away from, can we move it to closer memory?
>
> Yeah, conceptually it is NUMA, so it might fit there. But the difference
> to the current NUMA handling is that the device memory is not always
> completly visible to the CPU, so I think quite some significant changes
> are necessary to make this work.

My HMM patchset already handle all this for anonymous memory, i showed
a proof of concept for file back one but i am exploring other method
for that.


> > Another idea is to handle migration like swapping. The difference to
> > real swapping is that it is not relying on the LRU lists but the device
> > access patterns we measure.
> 
> > The question is how we handle that. We do have Extended Accessed bits
> > in the Intel implementation of SVM that let us know that a given PTE
> > was used from a device. Although not *which* device, in cases where
> > there might be more than one.
> 
> One way would be to use seperate page-tables for the devices (which, on
> the other side, somehow contradicts the design of the hardware, because
> its designed to reuse cpu page-tables).

So HMM use a seperate page table for storing information relating to
migrated memory. Note that not all hw reuse the CPU page table, some
hardware do not and it is very much a platform thing.

> And I don't know which features other devices have (like the CAPI
> devices on Power that Paul wrote about) to help in this decission.

CAPI would not need special PTE, as on CAPI device memory is accessible
by the CPU as regular memory. Only platform that can not offer this
need some special handling. AFAICT x86 and ARM have nothing plan to
offer such level of integration (thought lately i have not paid close
attention to what new features the PCIe consortium is discussing).

Joerg i think you really want to take a look at my patchset to see
how i implemented this. I have been discussing this with AMD, Mellanox,
NVidia and couple other smaller specialize hw manufacturer.

Cheers,
Jérôme
