Return-Path: <andrew@lunn.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 20E18BE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 16:18:30 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [178.209.37.122])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9B82F1D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 16:18:29 +0000 (UTC)
Date: Fri, 14 Jul 2017 18:18:24 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20170714161824.GJ21743@lunn.ch>
References: <1498758126.2834.70.camel@HansenPartnership.com>
	<CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
	<20170629182044.GP21846@wotan.suse.de>
	<CAGXu5jL21gKAO1DxNHH-4x6H9jw1t84Z=Z8iCSDRmgcxh4TFrQ@mail.gmail.com>
	<20170630062717.534b06e9@canb.auug.org.au>
	<20170714040447.GT1528@mtr-leonro.local>
	<20170714095409.GF2269@kroah.com>
	<20170714102920.GY1528@mtr-leonro.local>
	<20170714141057.GC21743@lunn.ch>
	<20170714153544.GE1528@mtr-leonro.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170714153544.GE1528@mtr-leonro.local>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Developing across
 multiple areas of the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 14, 2017 at 06:35:44PM +0300, Leon Romanovsky wrote:
> On Fri, Jul 14, 2017 at 04:10:57PM +0200, Andrew Lunn wrote:
> > > The difference in maintainers style between netdev and RDMA causes to have long queue
> > > (100+) of patches posted to the ML [2], which are not cross-checked in various CIs.
> >
> > It is possible to get 0-day to run against any arbitrary git tree, if
> > you ask nicely. If same is true for the kernel-ci project. So if you
> > are willing to do the merge work, you can get it tested.
> 
> 0-day is checking my tree, so it is not the problem.
> 
> I don't see how kernel-ci can help me, because RDMA requires special
> hardware to run it and it usually requires more than two endpoints (servers)
> connected together.

kernel-ci are happy to receive hardware. I've sent them boards in the
past which have been added to their test farm. Kernel-ci is mostly
about boot testing, but they do do some tests post boot. So if you can
supply tests as well, they may run them for you.

> My problem is related to changes in other trees for example netdev, which
> can break RDMA functionality.
> 
> Technology wise, there are:
> 1. RoCE - RDMA over Converged Ethernet - netdev is below RDMA
> 2. IPoIB - IP over Infiniband - netdev is above RDMA
> 3. HFI-VNIC - Ethernet over OmniPath - netdev is above RDMA
> 4. iWARP - RDMA over IP networks

How much of this do you already have automated test for?  You can also
setup your own test farm, using the kernels kernel-ci builds.

      Andrew
