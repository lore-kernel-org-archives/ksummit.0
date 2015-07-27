Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 944C49D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 27 Jul 2015 00:14:14 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 67471FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 27 Jul 2015 00:14:13 +0000 (UTC)
Message-ID: <1437956048.7562.91.camel@kernel.crashing.org>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Pavel Machek <pavel@ucw.cz>
Date: Mon, 27 Jul 2015 10:14:08 +1000
In-Reply-To: <20150723105711.GB30929@amd>
References: <20150723105711.GB30929@amd>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] FPGAs and how to program them
 from kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2015-07-23 at 12:57 +0200, Pavel Machek wrote:
> Hi!
> 
> (Please cc me on replies)
> 
> FPGAs are common in embedded systems, where they can provide missing
> hardware interfaces, directly implement functionality, or provide
> custom hardware modules. These days they become available for servers,
> too, where they can act as high-performance co-processors (which are
> tricky to program).
> 
> There are very different requirements for FPGA that implements your
> SATA controller (so you need it for boot), and one where multiple
> userland applications directly access FPGA using it for different
> computations, needing FPGA netlist to be changed based on userspace
> needs. Yet, it would be nice to come up with single interface that can
> handle all the different applications, and is suitable for mainline
> kernel.

I am interested as well. POWER has this thing called "CAPI" for coherent
accelerators which is essentially FPGA based. It allows you to design an
FPGA solution that is both cache coherent (ie, can hold cache lines
locally) and has an MMU allowing to operate within a user space context.

We have been developing interfaces for that in Linux but mostly as a
specific driver, it might be worthwhile seeing whether there are any
commonalities.

Ben.

> People that might be interested:
> 
> Michal Simek <michal.simek@xilinx.com>
> Dinh Nguyen <dinguyen@opensource.altera.com>
> <atull@opensource.altera.com>
> Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Marek Vasut <marex@denx.de>
> Alan Cox
> 
> 
> 									Pavel
