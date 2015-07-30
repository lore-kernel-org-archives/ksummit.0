Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 932A0267
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 Jul 2015 13:00:37 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2F8C4118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 30 Jul 2015 13:00:30 +0000 (UTC)
Date: Thu, 30 Jul 2015 15:00:27 +0200
From: Joerg Roedel <joro@8bytes.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20150730130027.GA14980@8bytes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [Ksummit-discuss] [CORE TOPIC] Core Kernel support for
	Compute-Offload Devices
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

[
 The topic is highly technical and could be a tech topic. But it also
 touches multiple subsystems, so I decided to submit it as a core
 topic.
]

Across architectures and vendors there are new devices coming up for
offloading tasks from the CPUs. Most of these devices are capable to
operate on user address spaces.

Besides the commonalities there are important differences in the memory
model these devices offer. Some work only on system RAM, others come
with their own memory which may or may not be accessible by the CPU.

I'd like to discuss what support we need in the core kernel for these
devices. A probably incomplete list of open questions:

	(1) Do we need the concept of an off-CPU task in the kernel
	    together with a common interface to create and manage them
	    and probably a (collection of) batch scheduler(s) for these
	    tasks?

	(2) Changes in memory management for devices accessing user
	    address spaces:
	    
	    (2.1) How can we best support the different memory models
	          these devices support?
	    
	    (2.2) How do we handle the off-CPU users of an mm_struct?
	    
	    (2.3) How can we attach common state for off-CPU tasks to
	          mm_struct (and what needs to be in there)?

	(3) Does it make sense to implement automatic migration of
	    system memory to device memory (when available) and vice
	    versa? How do we decide what and when to migrate?

	(4) What features do we require in the hardware to support it
	    with a common interface?

I think it would be great if the kernel would have a common interface
for these kind of devices. Currently every vendor develops its own
interface with various hacks to work around core code behavior.

I am particularily interested in this topic because on PCIe newer IOMMUs
are often an integral part in supporting these devices (ARM-SMMUv3,
Intel VT-d with SVM, AMD IOMMUv2). so that core work here will also
touch the IOMMU code.

Probably (uncomplete list of) interested people:

	David Woodhouse
	Jesse Barnes
	Will Deacon
	Paul E. McKenney
	Rik van Riel
	Mel Gorman
	Andrea Arcangeli
	Christoph Lameter
	Jérôme Glisse
