Return-Path: <BATV+d504b0c0890635d9e802+4343+infradead.org+hch@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E7889BC7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 12:07:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F118A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 12:07:10 +0000 (UTC)
Date: Wed, 15 Jul 2015 05:07:08 -0700
From: Christoph Hellwig <hch@infradead.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20150715120708.GA24534@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Cc: linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Subject: [Ksummit-discuss] [TECH TOPIC] IRQ affinity
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Many years ago we decided to move setting of IRQ to core affnities to
userspace with the irqbalance daemon.

These days we have systems with lots of MSI-X vector, and we have
hardware and subsystem support for per-CPU I/O queues in the block
layer, the RDMA subsystem and probably the network stack (I'm not too
familar with the recent developments there).  It would really help the
out of the box performance and experience if we could allow such
subsystems to bind interrupt vectors to the node that the queue is
configured on.

I'd like to discuss if the rationale for moving the IRQ affinity setting
fully to userspace are still correct in todays world any any pitfalls
we'll have to learn from in irqbalanced and the old in-kernel affinity
code.
