Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3FC54ACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:59:36 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A5AEC20348
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:59:35 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 12 May 2014 18:59:34 +0200
Message-ID: <34146140.0uJ5dObpbT@avalon>
In-Reply-To: <20140512162814.GR12376@8bytes.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<CALCETrXo7Zqg9EadLHTniLhAB9f13C9wzFWZAqTSG=4z0ocgQg@mail.gmail.com>
	<20140512162814.GR12376@8bytes.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Device error handling /
	reporting / isolation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday 12 May 2014 18:28:14 Joerg Roedel wrote:
> On Mon, May 12, 2014 at 09:16:11AM -0700, Andy Lutomirski wrote:
> > On Mon, May 12, 2014 at 8:35 AM, Daniel Vetter <daniel.vetter@ffwll.ch>
> > wrote: Just to check: are you talking about disabling the IOMMU if
> > there's a fault storm or disabling reporting of IOMMU faults?
> 
> Probably about disabling the reporting of IOMMU faults. An IOMMU that is
> used for DMA-API mappings can not be disabled at runtime in a safe way.

If possible I'd like to avoid the fault to be generated instead of just not 
reporting it. As long as the bus master generates bad requests, even if we 
don't report the fault to upper layers, the IOMMU fault interrupts that will 
occur will hurt. When the hardware supports ignoring requests (either globally 
or from a particular bus master) that feature should be used, much like we 
disable interrupts at the IRQ controller when an interrupt storm is detected.

-- 
Regards,

Laurent Pinchart
