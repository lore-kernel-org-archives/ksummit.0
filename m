Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4935C74
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 16:02:06 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B341311E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 16:02:05 +0000 (UTC)
Date: Mon, 3 Aug 2015 18:02:03 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Jerome Glisse <j.glisse@gmail.com>
Message-ID: <20150803160203.GJ14980@8bytes.org>
References: <20150730130027.GA14980@8bytes.org> <55BB8BB2.2090809@redhat.com>
	<20150731161304.GA2039@redhat.com>
	<20150801155728.GC14980@8bytes.org>
	<20150801190847.GA2704@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150801190847.GA2704@gmail.com>
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

Hi Jerome,

On Sat, Aug 01, 2015 at 03:08:48PM -0400, Jerome Glisse wrote:
> It is definitly worth a discussion but i fear right now there is little
> room for anything in the kernel. Hardware scheduling is done is almost
> 100% hardware. The idea of GPU is that you have 1000 compute unit but
> the hardware keep track of 10000 threads and at any point in time there
> is huge probability that 1000 of those 10000 threads are ready to compute
> something. So if a job is only using 60% of the GPU then the remaining
> 40% would automaticly be use by the next batch of threads. This is a
> simplification as the number of thread the hw can keep track of depend
> of several factor and vary from one model to the other even inside same
> family of the same manufacturer.

So the hardware scheduled individual threads, that is right. But still,
as you say, there are limits of how many threads the hardware can handle
which the device driver needs to take care of, and decide which job will
be sent to the offload device next. Same with the priorities for the
queues.

> > Some devices might provide that information, see the extended-access bit
> > of Intel VT-d.
> 
> This would be limited to integrated GPU and so far only on one platform.
> My point was more that userspace have way more informations to make good
> decision here. The userspace program is more likely to know what part of
> the dataset gonna be repeatedly access by the GPU threads.

Hmm, so what is the point of HMM then? If userspace is going to decide
which part of the address space the device needs it could just copy the
data over (keeping the address space layout and thus the pointers
stable) and you would basically achieve the same without adding a lot of
code to memory manangement, no?


	Joerg
