Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5EB4A487
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 16:10:23 +0000 (UTC)
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B1B847C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 16:10:22 +0000 (UTC)
Date: Sat, 1 Aug 2015 18:10:21 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Message-ID: <20150801161021.GD14980@8bytes.org>
References: <20150730130027.GA14980@8bytes.org>
	<1438295541.14073.52.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1438295541.14073.52.camel@kernel.crashing.org>
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

Hi Ben,

thanks for your thoughts.

On Fri, Jul 31, 2015 at 08:32:21AM +1000, Benjamin Herrenschmidt wrote:
> > Across architectures and vendors there are new devices coming up for
> > offloading tasks from the CPUs. Most of these devices are capable to
> > operate on user address spaces.
> 
> There is cross-overs with the proposed FPGA topic as well, for example
> CAPI is typically FPGA's that can operate on user address spaces ;-)

True, I was not sure how to put this into the proposal, as FPGAs are a
bit different from other compute-offload devices. GPUs take a kernel to
execute that is basically a piece of software while FPGAs take a
hardware description which in the end might be able to execute its own
software. But there is overlap between the topics, thats right.

> So I'd think that such an off-core scheduler, while a useful thing for
> some of these devices, should be an optional component, ie, the other
> functionalities shouldn't necessarily depend on it.

Yes, of course. The scheduler(s) could be implemented as a library and
optionally be used by the device drivers.

> Right. Some of this (GPUs, MLX) use the proposed HMM infrastructure that
> Jerome Glisse have been developing, so he would be an interested party
> here, which hooks into the existing MM. Some of these like CAPI (or more
> stuff I can't quite talk about just yet) will just share the MMU data
> structures (direct access to the host page tables).

Everything (what I am aware of), besides of the hardware HMM targets,
reuses the CPU MMU structures :) For example all three hardware
implementations of ATS/PRI/PASID I am aware of can share them, and as
you said, CAPI on Power too.

But they also need to attach some state to mm_struct. As David already
said, there will be a need to a global PASID allocation, for example.



	Joerg
