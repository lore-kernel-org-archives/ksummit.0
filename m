Return-Path: <keith.busch@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7F2EFACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 17:19:37 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id BAAB623E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 17:19:36 +0000 (UTC)
Date: Wed, 15 Jul 2015 17:19:33 +0000 (UTC)
From: Keith Busch <keith.busch@intel.com>
To: Bart Van Assche <bart.vanassche@sandisk.com>
In-Reply-To: <55A67F11.1030709@sandisk.com>
Message-ID: <alpine.LNX.2.00.1507151700300.15930@localhost.lm.intel.com>
References: <20150715120708.GA24534@infradead.org>
	<alpine.DEB.2.11.1507151408570.18576@nanos>
	<55A67F11.1030709@sandisk.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
Cc: ksummit-discuss@lists.linuxfoundation.org, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
	Christoph Hellwig <hch@infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] IRQ affinity
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 15 Jul 2015, Bart Van Assche wrote:
> * With blk-mq and scsi-mq optimal performance can only be achieved if
>  the relationship between MSI-X vector and NUMA node does not change
>  over time. This is necessary to allow a blk-mq/scsi-mq driver to
>  ensure that interrupts are processed on the same NUMA node as the
>  node on which the data structures for a communication channel have
>  been allocated. However, today there is no API that allows
>  blk-mq/scsi-mq drivers and irqbalanced to exchange information
>  about the relationship between MSI-X vector ranges and NUMA nodes.

We could have low-level drivers provide blk-mq the controller's irq
associated with a particular h/w context, and the block layer can provide
the context's cpumask to irqbalance with the smp affinity hint.

The nvme driver already uses the hwctx cpumask to set hints, but this
doesn't seems like it should be a driver responsibility. It currently
doesn't work correctly anyway with hot-cpu since blk-mq could rebalance
the h/w contexts without syncing with the low-level driver.

If we can add this to blk-mq, one additional case to consider is if the
same interrupt vector is used with multiple h/w contexts. Blk-mq's cpu
assignment needs to be aware of this to prevent sharing a vector across
NUMA nodes.

>  The only approach I know of that works today to define IRQ affinity
>  for blk-mq/scsi-mq drivers is to disable irqbalanced and to run a
>  custom script that defines IRQ affinity (see e.g. the
>  spread-mlx4-ib-interrupts attachment of 
> http://thread.gmane.org/gmane.linux.kernel.device-mapper.devel/21312/focus=98409).
