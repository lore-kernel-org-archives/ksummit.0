Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 78B444D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:51:55 +0000 (UTC)
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0BEB12039F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:51:54 +0000 (UTC)
Received: by mail-qa0-f49.google.com with SMTP id cm18so7336290qab.22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:51:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1872038.43ncqEMWSx@avalon>
References: <1872038.43ncqEMWSx@avalon>
Date: Mon, 12 May 2014 11:51:54 -0600
Message-ID: <CAKocOOMk-jVW9-M+6SOzAJ3-6-i-5TWwLmQE6CRqf7tFGTM=jw@mail.gmail.com>
From: Shuah Khan <shuahkhan@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Cc: Tomasz Figa <tomasz.figa@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 11:43 AM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
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

We discussed this topic briefly at the Media Mini-summit.  I looking
into similar
use-cases in media devices. Suspend/resume of a tuner for example should only
be done once as opposed multiple times by drivers that think they have exclusive
access to the tuner on a media device.

I am interested in this discussion and would like to participate.
Requesting nomination.

-- Shuah
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
