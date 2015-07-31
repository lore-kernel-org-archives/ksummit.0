Return-Path: <jglisse@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CD02247E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:13:08 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ACAFD7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:13:07 +0000 (UTC)
Received: from int-mx09.intmail.prod.int.phx2.redhat.com
	(int-mx09.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	by mx1.redhat.com (Postfix) with ESMTPS id F33EE8CF75
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:13:06 +0000 (UTC)
Date: Fri, 31 Jul 2015 12:13:04 -0400
From: Jerome Glisse <jglisse@redhat.com>
To: Rik van Riel <riel@redhat.com>
Message-ID: <20150731161304.GA2039@redhat.com>
References: <20150730130027.GA14980@8bytes.org> <55BB8BB2.2090809@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <55BB8BB2.2090809@redhat.com>
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

On Fri, Jul 31, 2015 at 10:52:34AM -0400, Rik van Riel wrote:
> On 07/30/2015 09:00 AM, Joerg Roedel wrote:
> 
> > 	(1) Do we need the concept of an off-CPU task in the kernel
> > 	    together with a common interface to create and manage them
> > 	    and probably a (collection of) batch scheduler(s) for these
> > 	    tasks?
> 
> Given that some of these compute offload devices share the
> same address space (mm_struct) as the threads running on
> CPUs, it would be easiest if there was a reference on the
> mm_struct for the threads that are running off-CPU.
> 
> I do not know if a generic scheduler would work, since
> it is common to have N threads on compute devices all bound
> to the same address space, etc.
> 
> Different devices might even require different schedulers,
> but having a common data structure that pins mm_struct,
> provides for a place to have state (like register content)
> stored, and has pointers to scheduler, driver, and cleanup
> functions could be really useful.

Kernel scheduling does not match what hw (today and tomorrow)
can do. You have to think 10 000 or 100 000 threads when it
comes to GPU (and i would not be surprise that couple years
down the road we reach the 1Millions threads).

With so many threads, you do not want to stop them midway,
what you really want is rush to completion so you never have
to store/save their information.

Hence scheduling here is different, on GPU it is more about
a queue of several thousand thread and you just move things
up and down on what need to be executed first. Then GPU have
hw scheduling that constantly switch btw active thread this
why memory latency is so well hidden on GPU.

That being said like Rik said, some common framework would
probably make sense, especialy to keep some kind of fairness.
But it is definitly not the preempt taks, schedule another
one model.

It is the wait current active thread of process A to finish
and schedule bunch of thread of process B.

> 
> > 	(2) Changes in memory management for devices accessing user
> > 	    address spaces:
> > 	    
> > 	    (2.1) How can we best support the different memory models
> > 	          these devices support?
> > 	    
> > 	    (2.2) How do we handle the off-CPU users of an mm_struct?
> > 	    
> > 	    (2.3) How can we attach common state for off-CPU tasks to
> > 	          mm_struct (and what needs to be in there)?
> 
> Jerome has a bunch of code for this already.

Yes HMM is all about that. It is the first step to provide common
framework inside the kernel (not only for GPU but for any device
that wish to transparently access process address space.

> 
> > 	(3) Does it make sense to implement automatic migration of
> > 	    system memory to device memory (when available) and vice
> > 	    versa? How do we decide what and when to migrate?
> 
> I believe he has looked at migration too, but not implemented
> it yet.

I already implemented several version of it and posted for review
couple of them. You do not want automatic migration because kernel
as not enough informations here.

HMM design is to let the device driver decide and then device driver
can take clue from userspace and use any kind of heuristic to decide
what we want to migrate.

> 
> If compute-offload devices are a kernel summit topic this year,
> it would be useful to invite Jerome Glisse.

I would happy to discuss this topic i have work on GPU open source
driver for a long time and last couple year i spend them working on
compute and how to integrate this inside the kernel.


> > 	(4) What features do we require in the hardware to support it
> > 	    with a common interface?
> > 
> > I think it would be great if the kernel would have a common interface
> > for these kind of devices. Currently every vendor develops its own
> > interface with various hacks to work around core code behavior.
> > 
> > I am particularily interested in this topic because on PCIe newer IOMMUs
> > are often an integral part in supporting these devices (ARM-SMMUv3,
> > Intel VT-d with SVM, AMD IOMMUv2). so that core work here will also
> > touch the IOMMU code.
> > 
> > Probably (uncomplete list of) interested people:
> > 
> > 	David Woodhouse
> > 	Jesse Barnes
> > 	Will Deacon
> > 	Paul E. McKenney
> > 	Rik van Riel
> > 	Mel Gorman
> > 	Andrea Arcangeli
> > 	Christoph Lameter
> > 	Jérôme Glisse

Cheers,
Jérôme
