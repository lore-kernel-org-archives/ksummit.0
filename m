Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7D6989A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 16:10:29 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E33221C9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 16:10:28 +0000 (UTC)
Date: Mon, 3 Aug 2015 18:10:27 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20150803161027.GK14980@8bytes.org>
References: <20150730130027.GA14980@8bytes.org> <19442497.AqUzQeifsl@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19442497.AqUzQeifsl@wuerfel>
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

Hi Arnd,

On Sat, Aug 01, 2015 at 10:46:49PM +0200, Arnd Bergmann wrote:
> I think we did this part right with the Cell SPUs 10 years ago: A
> task is a task, and you just switch between running in user mode and
> running on the offload engine through some syscall or ioctl.

Do you mean that on Cell the offload is synchronous, so that a task that
schedules something to the SPU sleeps until the job there is done?

> The part that got us into endless trouble though was trying to
> satisfy two opposite requirements: 
> 
> a) having the kernel schedule tasks automatically onto the offload
>    engines and take care of context switches and placement, so you
>    can do multi-user and multi-tasking processing on them.
> 
> b) getting most performance out of the of offload engines, by giving
>    a single user total control over the placement and no do any
>    scheduling in the kernel at all.
> 
> I would strongly recommend now that any new interface tries to do
> only one of the two models, but does it right.

I think it mostly depends on the use-cases which approach makes more
sense. An HPC environment would certainly want to have full control over
the placement and scheduling on the offload devices. A desktop
environment with typical applications that offload stuff to one or
multiple GPUs through optimized libraries would benefit more from
automatic scheduling and placement.

It is probably good to hear about the use-cases of the different offload
devices to make a good decission here.



	Joerg
