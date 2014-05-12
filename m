Return-Path: <tomasz.figa@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8324E70A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 18:09:40 +0000 (UTC)
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E6DE320359
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 18:09:39 +0000 (UTC)
Received: by mail-ee0-f45.google.com with SMTP id d49so4951599eek.32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 11:09:38 -0700 (PDT)
Message-ID: <53710E59.5030601@gmail.com>
Date: Mon, 12 May 2014 20:09:29 +0200
From: Tomasz Figa <tomasz.figa@gmail.com>
MIME-Version: 1.0
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Tomasz Figa <t.figa@samsung.com>, Andrzej Hajda <a.hajda@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Stanislawski <t.stanislaws@samsung.com>,
	Shuah Khan <shuahkhan@gmail.com>
References: <1872038.43ncqEMWSx@avalon>
In-Reply-To: <1872038.43ncqEMWSx@avalon>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

On 12.05.2014 19:43, Laurent Pinchart wrote:
> Hello,
> 
> On modern systems many PM dependencies don't follow the Linux kernel device 
> model based on parent-child relationships from a control bus point of view. 
> For instance a GPU will need the IOMMU that services its memory requests to be 
> powered on to perform DMA operations.
> 
> Ad-hoc solutions with subsystem-specific or even driver-specific APIs have 
> been implemented (see omap_iommu_save_ctx and omap_iommu_restore_ctx in 
> include/linux/omap-iommu.h for instance, that push the burden of saving and 
> restoring the IOMMU registers to bus master drivers), but they make automatic 
> handling of hardware resources difficult. In the IOMMU case again, the goal is 
> to hide IOMMU handling inside the DMA mapping API and make its usage 
> completely transparent to bus master drivers in most of the cases. An IOMMU-
> specific API to explicitly control IOMMU power from the bus master driver 
> would make that goal impossible to reach.
> 
> The problem is not limited to IOMMUs. We have similar dependencies at 
> suspend/resume time with camera interfaces for instance, where two completely 
> unrelated device in the Linux device hierarchy (a camera interface platform 
> device in the SoC and an I2C camera sensor) need to be suspended and resumed 
> in a controlled order. I'm sure many more use cases exist.
> 
> Whether we can (partly) reuse existing infrastructure for this is not clear. 
> I'd like to gather use cases, to first find out exactly how widespread the 
> need is, and whether we can come up with a common solution or we are really 
> faced with different classes of similarly looking but distinct issues.
> 
> Tomasz Figa (CC'ed) has recently expressed interest for this topic, if he's 
> still interested I'd like to nominate him.

Yes, I'm still interested.

IOMMUs are the use case I've been wondering about recently, but I'd like
to take some time to analyze other use cases useful for Samsung
platforms. I will post them in another reply to this thread as soon as I
get to some interesting conclusions.

Best regards,
Tomasz
