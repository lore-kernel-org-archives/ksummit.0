Return-Path: <Bart.VanAssche@sandisk.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 13707BFB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 15:56:03 +0000 (UTC)
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0081.outbound.protection.outlook.com [65.55.169.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EE80E1EF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 15:56:00 +0000 (UTC)
Message-ID: <55A67F11.1030709@sandisk.com>
Date: Wed, 15 Jul 2015 08:41:05 -0700
From: Bart Van Assche <bart.vanassche@sandisk.com>
MIME-Version: 1.0
To: Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@infradead.org>
References: <20150715120708.GA24534@infradead.org>
	<alpine.DEB.2.11.1507151408570.18576@nanos>
In-Reply-To: <alpine.DEB.2.11.1507151408570.18576@nanos>
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
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

On 07/15/2015 05:12 AM, Thomas Gleixner wrote:
> On Wed, 15 Jul 2015, Christoph Hellwig wrote:
>> Many years ago we decided to move setting of IRQ to core affnities to
>> userspace with the irqbalance daemon.
>>
>> These days we have systems with lots of MSI-X vector, and we have
>> hardware and subsystem support for per-CPU I/O queues in the block
>> layer, the RDMA subsystem and probably the network stack (I'm not too
>> familar with the recent developments there).  It would really help the
>> out of the box performance and experience if we could allow such
>> subsystems to bind interrupt vectors to the node that the queue is
>> configured on.
>>
>> I'd like to discuss if the rationale for moving the IRQ affinity setting
>> fully to userspace are still correct in todays world any any pitfalls
>> we'll have to learn from in irqbalanced and the old in-kernel affinity
>> code.
>
> I think setting an initial affinity is not going to create the horror
> of the old in-kernel irq balancer again. It still could be changed
> from user space and does not try to be smart by moving interrupts
> around in circles all the time.

Thanks Thomas for your feedback. But no matter whether IRQ balancing 
happens in user space or in the kernel, the following issues need to be 
addressed and have not yet been addressed today:
* irqbalanced is not aware of the relationship between MSI-X vectors.
   If e.g. two kernel drivers each allocate 24 MSI-X vectors for the
   PCIe interfaces they control irqbalanced could e.g. decide to
   associate all MSI-X vectors for the first PCIe interface with a first
   set of CPUs and the MSI-X vectors of the second PCIe interface with a
   second set of CPUs. This will result in suboptimal performance if
   these two PCIe interfaces are used alternatingly instead of
   simultaneously.
* With blk-mq and scsi-mq optimal performance can only be achieved if
   the relationship between MSI-X vector and NUMA node does not change
   over time. This is necessary to allow a blk-mq/scsi-mq driver to
   ensure that interrupts are processed on the same NUMA node as the
   node on which the data structures for a communication channel have
   been allocated. However, today there is no API that allows
   blk-mq/scsi-mq drivers and irqbalanced to exchange information
   about the relationship between MSI-X vector ranges and NUMA nodes.
   The only approach I know of that works today to define IRQ affinity
   for blk-mq/scsi-mq drivers is to disable irqbalanced and to run a
   custom script that defines IRQ affinity (see e.g. the
   spread-mlx4-ib-interrupts attachment of 
http://thread.gmane.org/gmane.linux.kernel.device-mapper.devel/21312/focus=98409).

Bart.
