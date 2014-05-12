Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 264CB979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:43:23 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9EC5D20398
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:43:22 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 12 May 2014 19:43:22 +0200
Message-ID: <1872038.43ncqEMWSx@avalon>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Tomasz Figa <tomasz.figa@gmail.com>
Subject: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

On modern systems many PM dependencies don't follow the Linux kernel device 
model based on parent-child relationships from a control bus point of view. 
For instance a GPU will need the IOMMU that services its memory requests to be 
powered on to perform DMA operations.

Ad-hoc solutions with subsystem-specific or even driver-specific APIs have 
been implemented (see omap_iommu_save_ctx and omap_iommu_restore_ctx in 
include/linux/omap-iommu.h for instance, that push the burden of saving and 
restoring the IOMMU registers to bus master drivers), but they make automatic 
handling of hardware resources difficult. In the IOMMU case again, the goal is 
to hide IOMMU handling inside the DMA mapping API and make its usage 
completely transparent to bus master drivers in most of the cases. An IOMMU-
specific API to explicitly control IOMMU power from the bus master driver 
would make that goal impossible to reach.

The problem is not limited to IOMMUs. We have similar dependencies at 
suspend/resume time with camera interfaces for instance, where two completely 
unrelated device in the Linux device hierarchy (a camera interface platform 
device in the SoC and an I2C camera sensor) need to be suspended and resumed 
in a controlled order. I'm sure many more use cases exist.

Whether we can (partly) reuse existing infrastructure for this is not clear. 
I'd like to gather use cases, to first find out exactly how widespread the 
need is, and whether we can come up with a common solution or we are really 
faced with different classes of similarly looking but distinct issues.

Tomasz Figa (CC'ed) has recently expressed interest for this topic, if he's 
still interested I'd like to nominate him.

-- 
Regards,

Laurent Pinchart
