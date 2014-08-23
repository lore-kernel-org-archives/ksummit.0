Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6D5E38A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Aug 2014 09:40:00 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9A89D1F969
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Aug 2014 09:39:59 +0000 (UTC)
Received: from avalon.localnet (unknown [109.140.245.10])
	by galahad.ideasonboard.com (Postfix) with ESMTPSA id 9AF3A20AF0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 23 Aug 2014 11:39:21 +0200 (CEST)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 23 Aug 2014 11:40:39 +0200
Message-ID: <1559718.6beX2bEi5U@avalon>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [Ksummit-discuss] PM dependencies unconference notes
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

Here's a summary of the PM dependencies unconference track. As I had to get 
the discussion going and take notes at the same time the report might be 
missing a couple of points, so please correct me where my memory failed me.

Two separate topics were discussed. Feedback was largely constructive, thank 
you to all participants for their contributions.


PM dependencies for media composite devices
-------------------------------------------

Complex media devices, especially video-related devices, are made of 
components located in unrelated locations in the Linux device model tree (for 
instance a platform device on an AHB or AXI bus can receive video from a 
sensor connected to a generic I2C controller). This creates suspend and resume 
ordering requirements that don't match the Linux control busses topology.

Mark Brown explained that ALSA has solved the problem by creating a logical 
card device that groups all individual components. The card device gets probed 
after all the components due to deferred probing, and is thus suspended first 
and resumed last.

Benjamin Herrenschmidt went into more details and explained that 
suspend/resume in that model is split between individual component drivers and 
the card driver. The component drivers only perform low level power management 
operations in their PM callbacks. The card driver is responsible for pausing 
and restarting the audio stream by calling subsystem-specific operations on 
individual components in its suspend and resume callbacks.

The general agreement was that a similar model can be used for V4L devices 
without requiring a new core infrastructure.

Mauro Carvalho Chehab presented a slightly different use case related to USB 
devices. Complex media USB devices can expose multiple functions over several 
USB interfaces. As the drivers for those functions bind to interfaces 
independently, dependencies between the functions are lost.

James Bottomley mentioned that similar cases exist with PCI devices built from 
multiple functions.

Grant Likely and Benjamin Herrenschmidt proposed using a top-level USB driver 
binding to the device instead of the interfaces, and storing knowledge about 
the dependencies in that driver to orchestrate suspend/resume.

Greg K-H wasn't thrilled by that idea and explained that binding the USB 
device should be avoided.

No perfect solution has been agreed on yet and discussions are still ongoing.


PM dependencies for IOMMUs
--------------------------

As IOMMUs are hidden from bus master drivers by the DMA mapping API, drivers 
can't control IOMMU power directly. Several options were proposed for 
automatic suspend/resume handling.

- Reference-count the attachments. This is the simplest solution but has the 
drawback that the IOMMU will consume power even when no bus master needs to 
perform any transfer.

- Reference-count the mappings. This can result in better power saving, but 
isn't an option if PM handling can block, as the map/unmap operations can be 
called from atomic context.

- Add explicit reference counting to the DMA mapping API (proposed by Benjamin 
Herrenschmidt among others). That's the most flexible solution, but requires 
extending the DMA mapping API.

James Bottomley pointed out that IOMMUs are commonly used for security and 
virtualization reasons, in which case fine-grained power management would 
disable protection from rogue devices and/or drivers. Aggressive PM handling 
should thus be performed with care.

Furthermore, doubts were raised by several developers about the real power 
savings of aggressively disabling IOMMUs. Will Deacon mentioned that Qualcomm 
has submitted IOMMU PM patches without performance numbers. The room agreed 
that measurements showing a real gain need to be supplied before merging a DMA 
mapping API extension.

-- 
Regards,

Laurent Pinchart
