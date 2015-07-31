Return-Path: <riel@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8EB8540D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 14:52:40 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 210C11AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 14:52:40 +0000 (UTC)
Received: from int-mx14.intmail.prod.int.phx2.redhat.com
	(int-mx14.intmail.prod.int.phx2.redhat.com [10.5.11.27])
	by mx1.redhat.com (Postfix) with ESMTPS id 9E19229320F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 14:52:39 +0000 (UTC)
Message-ID: <55BB8BB2.2090809@redhat.com>
Date: Fri, 31 Jul 2015 10:52:34 -0400
From: Rik van Riel <riel@redhat.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org,
	Jerome Glisse <jglisse@redhat.com>
References: <20150730130027.GA14980@8bytes.org>
In-Reply-To: <20150730130027.GA14980@8bytes.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
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

On 07/30/2015 09:00 AM, Joerg Roedel wrote:

> 	(1) Do we need the concept of an off-CPU task in the kernel
> 	    together with a common interface to create and manage them
> 	    and probably a (collection of) batch scheduler(s) for these
> 	    tasks?

Given that some of these compute offload devices share the
same address space (mm_struct) as the threads running on
CPUs, it would be easiest if there was a reference on the
mm_struct for the threads that are running off-CPU.

I do not know if a generic scheduler would work, since
it is common to have N threads on compute devices all bound
to the same address space, etc.

Different devices might even require different schedulers,
but having a common data structure that pins mm_struct,
provides for a place to have state (like register content)
stored, and has pointers to scheduler, driver, and cleanup
functions could be really useful.

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

Jerome has a bunch of code for this already.

> 	(3) Does it make sense to implement automatic migration of
> 	    system memory to device memory (when available) and vice
> 	    versa? How do we decide what and when to migrate?

I believe he has looked at migration too, but not implemented
it yet.

If compute-offload devices are a kernel summit topic this year,
it would be useful to invite Jerome Glisse.

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

-- 
All rights reversed
