Return-Path: <j.glisse@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AFB3D9B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 19:08:58 +0000 (UTC)
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33C4F19B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 19:08:58 +0000 (UTC)
Received: by qgeh16 with SMTP id h16so65989194qge.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 01 Aug 2015 12:08:57 -0700 (PDT)
Date: Sat, 1 Aug 2015 15:08:48 -0400
From: Jerome Glisse <j.glisse@gmail.com>
To: Joerg Roedel <joro@8bytes.org>
Message-ID: <20150801190847.GA2704@gmail.com>
References: <20150730130027.GA14980@8bytes.org> <55BB8BB2.2090809@redhat.com>
	<20150731161304.GA2039@redhat.com>
	<20150801155728.GC14980@8bytes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150801155728.GC14980@8bytes.org>
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

On Sat, Aug 01, 2015 at 05:57:29PM +0200, Joerg Roedel wrote:
> On Fri, Jul 31, 2015 at 12:13:04PM -0400, Jerome Glisse wrote:
> > Hence scheduling here is different, on GPU it is more about
> > a queue of several thousand thread and you just move things
> > up and down on what need to be executed first. Then GPU have
> > hw scheduling that constantly switch btw active thread this
> > why memory latency is so well hidden on GPU.
> 
> Thats why I wrote "batch"-scheduler in the proposal. Its right that it
> does not make sense to schedule out a GPU process, and some devices do
> scheduling in hardware anyway.
> 
> But the Linux kernel still needs to decide which jobs are sent to the
> offload device in which order, more like an io-scheduler.
> 
> There might be a compute job that only utilizes 60% of the device
> resources, to the in-kernel scheduler could start another job there to
> utilize the other 40%.
> 
> I think its worth a discussion if some common schedulers (like for
> blk-io) make sense here too.

It is definitly worth a discussion but i fear right now there is little
room for anything in the kernel. Hardware scheduling is done is almost
100% hardware. The idea of GPU is that you have 1000 compute unit but
the hardware keep track of 10000 threads and at any point in time there
is huge probability that 1000 of those 10000 threads are ready to compute
something. So if a job is only using 60% of the GPU then the remaining
40% would automaticly be use by the next batch of threads. This is a
simplification as the number of thread the hw can keep track of depend
of several factor and vary from one model to the other even inside same
family of the same manufacturer.

Where kernel have control is which command queue (today GPU have several
command queue than run concurently) can spawn threads inside the GPU.
Also thing like which queue got priority over another one. You even have
mecanism where you can "divide" the GPU among queue (you assign fraction
of the GPU compute unit to a particular queue). Thought i expect this
last one is vanishing.

Also note that many GPU manufacturer are pushing for userspace queue
(i think it is some microsoft requirement) in which case the kernel
have even less control.

I agree that blk-io design is probably closest thing that might fit.


> > I already implemented several version of it and posted for review
> > couple of them. You do not want automatic migration because kernel
> > as not enough informations here.
> 
> Some devices might provide that information, see the extended-access bit
> of Intel VT-d.

This would be limited to integrated GPU and so far only on one platform.
My point was more that userspace have way more informations to make good
decision here. The userspace program is more likely to know what part of
the dataset gonna be repeatedly access by the GPU threads.

Cheers,
Jérôme
