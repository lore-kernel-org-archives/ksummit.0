Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6BA9A323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 12:12:49 +0000 (UTC)
Received: from Galois.linutronix.de (www.linutronix.de [62.245.132.108])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EEE48EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 12:12:48 +0000 (UTC)
Date: Wed, 15 Jul 2015 14:12:39 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Christoph Hellwig <hch@infradead.org>
In-Reply-To: <20150715120708.GA24534@infradead.org>
Message-ID: <alpine.DEB.2.11.1507151408570.18576@nanos>
References: <20150715120708.GA24534@infradead.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] IRQ affinity
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 15 Jul 2015, Christoph Hellwig wrote:

> Many years ago we decided to move setting of IRQ to core affnities to
> userspace with the irqbalance daemon.
> 
> These days we have systems with lots of MSI-X vector, and we have
> hardware and subsystem support for per-CPU I/O queues in the block
> layer, the RDMA subsystem and probably the network stack (I'm not too
> familar with the recent developments there).  It would really help the
> out of the box performance and experience if we could allow such
> subsystems to bind interrupt vectors to the node that the queue is
> configured on.
> 
> I'd like to discuss if the rationale for moving the IRQ affinity setting
> fully to userspace are still correct in todays world any any pitfalls
> we'll have to learn from in irqbalanced and the old in-kernel affinity
> code.

I think setting an initial affinity is not going to create the horror
of the old in-kernel irq balancer again. It still could be changed
from user space and does not try to be smart by moving interrupts
around in circles all the time.

Thanks,

	tglx
