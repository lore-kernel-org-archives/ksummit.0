Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 68A3E95A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:41:23 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D29EE1F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:41:22 +0000 (UTC)
Message-ID: <1400031646.17624.215.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Roland Dreier <roland@kernel.org>
Date: Wed, 14 May 2014 11:40:46 +1000
In-Reply-To: <CAG4TOxNJxWLWSZYW313XATtCpV+SM9WrYFJ-V+0Pf-yryLh67g@mail.gmail.com>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<CAG4TOxNJxWLWSZYW313XATtCpV+SM9WrYFJ-V+0Pf-yryLh67g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Device error handling /
 reporting / isolation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2014-05-09 at 10:48 -0700, Roland Dreier wrote:
> 
> I think there's a more general problem that's worth talking about
> here.  In addition to IOMMU faults, there are lots of other PCI errors
> that can happen, and we have some small number of drivers that have
> been "hardened" to try and recover from these errors.  However even
> for these "hardened" drivers it seems pretty easy to hit deadlocks
> when the driver tries to tear down and reinitialize things.

Right. We are hitting that every time we test  a new round of machines /
FW / Distro on power when testing EEH. The error path in the drivers are
very badly tested.

For example, when our HW "isolates" a device, all reads start returning
ff's on MMIOs. Plenty of drivers will have either infinite or
very-long-timeout loops waiting for a bit to clear...

Also, when our HW decides to fence the entire PCI Express controller
(which can happen for example if it took a parity error in an internal
cache), subsequent MMIOs return ff's but also take a long time (hundreds
of microseconds or more).

We had issues where driver implement timeouts like this:

	for (i = 0; i < 10000; i++) {
		foo = readl(bar);
		if ((foo & my_bit) == 0)
			break;
		udelay(1);
	}

And expect this to be a 10ms timeout ... in fenced situations, it ends
up being a 100ms or 1s timeout (we've seen much longer ones).

One way to help find/fix these would be a better error injection
capability to "isolate" devices, for example my remapping their
MMIOs to something that returns ff's :-)

> So I wonder if we can do better without proliferating error handling
> tentacles into all sorts of low-level drivers ("did we just read
> 0xffffffff here?  how about here?  are we in the middle of error
> recovery?  how about now?").

We can't because ultimately, that is what HW will return when it's
broken, disconnected, lost a link, or EEH.

> One context where this is becoming a real concern is with NVMe drives.
>  These are SSDs that (may) look like normal 2.5" drives, but use PCIe
> rather than SATA or SAS to connect to the host.  Since they look like
> normal drives, it's natural to put them into hot-pluggable JBODs, but
> it turns out we react much worse to PCIe surprise removal than, say,
> SAS hotplug.

Cheers,
Ben.
