Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5DACC65
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 15:57:32 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B8DE4EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 15:57:31 +0000 (UTC)
Date: Sat, 1 Aug 2015 17:57:29 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Jerome Glisse <jglisse@redhat.com>
Message-ID: <20150801155728.GC14980@8bytes.org>
References: <20150730130027.GA14980@8bytes.org> <55BB8BB2.2090809@redhat.com>
	<20150731161304.GA2039@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150731161304.GA2039@redhat.com>
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

On Fri, Jul 31, 2015 at 12:13:04PM -0400, Jerome Glisse wrote:
> Hence scheduling here is different, on GPU it is more about
> a queue of several thousand thread and you just move things
> up and down on what need to be executed first. Then GPU have
> hw scheduling that constantly switch btw active thread this
> why memory latency is so well hidden on GPU.

Thats why I wrote "batch"-scheduler in the proposal. Its right that it
does not make sense to schedule out a GPU process, and some devices do
scheduling in hardware anyway.

But the Linux kernel still needs to decide which jobs are sent to the
offload device in which order, more like an io-scheduler.

There might be a compute job that only utilizes 60% of the device
resources, to the in-kernel scheduler could start another job there to
utilize the other 40%.

I think its worth a discussion if some common schedulers (like for
blk-io) make sense here too.

> I already implemented several version of it and posted for review
> couple of them. You do not want automatic migration because kernel
> as not enough informations here.

Some devices might provide that information, see the extended-access bit
of Intel VT-d.



	Joerg
