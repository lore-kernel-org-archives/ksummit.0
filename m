Return-Path: <j.glisse@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA1777AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 18:28:58 +0000 (UTC)
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6957D22D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 18:28:58 +0000 (UTC)
Received: by qgii95 with SMTP id i95so94645197qgi.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Aug 2015 11:28:57 -0700 (PDT)
Date: Mon, 3 Aug 2015 14:28:54 -0400
From: Jerome Glisse <j.glisse@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Message-ID: <20150803182853.GB2981@gmail.com>
References: <20150730130027.GA14980@8bytes.org> <55BB8BB2.2090809@redhat.com>
	<20150731161304.GA2039@redhat.com>
	<20150801155728.GC14980@8bytes.org>
	<20150801190847.GA2704@gmail.com>
	<20150803160203.GJ14980@8bytes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150803160203.GJ14980@8bytes.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Core Kernel support for
 Compute-Offload Devices
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 03, 2015 at 06:02:03PM +0200, Joerg Roedel wrote:
> Hi Jerome,
> 
> On Sat, Aug 01, 2015 at 03:08:48PM -0400, Jerome Glisse wrote:
> > It is definitly worth a discussion but i fear right now there is little
> > room for anything in the kernel. Hardware scheduling is done is almost
> > 100% hardware. The idea of GPU is that you have 1000 compute unit but
> > the hardware keep track of 10000 threads and at any point in time there
> > is huge probability that 1000 of those 10000 threads are ready to compute
> > something. So if a job is only using 60% of the GPU then the remaining
> > 40% would automaticly be use by the next batch of threads. This is a
> > simplification as the number of thread the hw can keep track of depend
> > of several factor and vary from one model to the other even inside same
> > family of the same manufacturer.
> 
> So the hardware scheduled individual threads, that is right. But still,
> as you say, there are limits of how many threads the hardware can handle
> which the device driver needs to take care of, and decide which job will
> be sent to the offload device next. Same with the priorities for the
> queues.

What i was pointing to is that right now you do not have such granularity
of choice from device driver point of view. Right now it is either let
command queue spawn thread or not. So it is either stop a command queue
or let it run. Thought how and when you can stop a queue vary. In some
hw you can only stop it at execution boundary ie you have a packet in
a command queue that request 500k thread to be launch, you can only stop
that queue once the 500k thread are launch and you can not stop in the
middle.

Given that some of those queue a programmed directly from userspace, you
can not even force the queue to only schedule small batches of thread (ie
something like 1000 thread no more per command packet in the queue).

But newer hw is becoming more capable on that front.

> 
> > > Some devices might provide that information, see the extended-access bit
> > > of Intel VT-d.
> > 
> > This would be limited to integrated GPU and so far only on one platform.
> > My point was more that userspace have way more informations to make good
> > decision here. The userspace program is more likely to know what part of
> > the dataset gonna be repeatedly access by the GPU threads.
> 
> Hmm, so what is the point of HMM then? If userspace is going to decide
> which part of the address space the device needs it could just copy the
> data over (keeping the address space layout and thus the pointers
> stable) and you would basically achieve the same without adding a lot of
> code to memory manangement, no?

Well no, you can not be "transparent" if you do it in userspace. Let
say userspace decide to migrate, then it means CPU will not be able
to access that memory, so you have to either PROT_NONE the range or
unmap it. This is not what we want. If we get CPU access to memory
that is migrated to device memory then we want to migrate it back (at
very least one page of it) so CPU can access it. We want this migration
back to be transparent from process point of view, like if the memory
was swapped on a disk.

Even on hw where the CPU can access device memory properly (maintaining
CPU atomic operation for instance which is not the case on PCIe) like
with CAPI on powerpc. You have to either have struct page for the device
memory of the kernel must know how to handle those special range of
memory.

So here HMM never makes any decission, it just leave that with the device
driver that can gather more informations from hw and user space to make
the best decision. But it might get things wrong or user space program
might do stupid thing like trying to access data set with the CPU while
the GPU is churning on it. Still we do not want CPU access to be handle
as fault or forbidden, when this happen HMM will force migration back
to service CPU page fault.


HMM also intends to provide more features that are not doable from user
space. Like exclusive write access on a range for the device so that
device can perform atomic operation. Again PCIe offer limited capabilities
on atomic so only way to provide more advance atomic operations is to map
thing read only for CPU and other devices while atomic operation on a
device progress.

Another feature is sharing device memory btw different devices. Some
devices (not necessarily from the same manufacturer) can communicate
to one another and access one another device memory. When a range is
migrated on one of such device pair, there must be a way for the other
device to find about it. Having userspace device driver try to exchange
that kind of information is racy in many way. So easier and better to
have it in kernel.

Cheers,
Jérôme
