Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BE760AE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:15:25 +0000 (UTC)
Received: from mail.8bytes.org (8bytes.org [85.214.48.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3BEBC2031B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:15:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.8bytes.org (Postfix) with SMTP id 295CF12B187
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 19:15:24 +0200 (CEST)
Date: Mon, 12 May 2014 19:15:23 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20140512171523.GS12376@8bytes.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<CALCETrXo7Zqg9EadLHTniLhAB9f13C9wzFWZAqTSG=4z0ocgQg@mail.gmail.com>
	<20140512162814.GR12376@8bytes.org> <34146140.0uJ5dObpbT@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <34146140.0uJ5dObpbT@avalon>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Mon, May 12, 2014 at 06:59:34PM +0200, Laurent Pinchart wrote:
> On Monday 12 May 2014 18:28:14 Joerg Roedel wrote:
> > Probably about disabling the reporting of IOMMU faults. An IOMMU that is
> > used for DMA-API mappings can not be disabled at runtime in a safe way.
> 
> If possible I'd like to avoid the fault to be generated instead of just not 
> reporting it. As long as the bus master generates bad requests, even if we 
> don't report the fault to upper layers, the IOMMU fault interrupts that will 
> occur will hurt. When the hardware supports ignoring requests (either globally 
> or from a particular bus master) that feature should be used, much like we 
> disable interrupts at the IRQ controller when an interrupt storm is detected.

Yes, when a device is isolated by the IOMMU it might create a
lot of faults. These should be blocked in the IOMMU hardware already. If
this is not supported the whole isolation might is useless because the
CPU is still busy handling IOMMU interrupts.


	Joerg
