Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 65791282
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 24 Jul 2015 20:59:10 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B65CE11E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 24 Jul 2015 20:59:09 +0000 (UTC)
Message-ID: <55B2A715.6010007@zytor.com>
Date: Fri, 24 Jul 2015 13:59:01 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Pavel Machek <pavel@ucw.cz>, ksummit-discuss@lists.linuxfoundation.org
References: <20150723105711.GB30929@amd>
In-Reply-To: <20150723105711.GB30929@amd>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
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

On 07/23/2015 03:57 AM, Pavel Machek wrote:
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
> 
> People that might be interested:
> 
> Michal Simek <michal.simek@xilinx.com>
> Dinh Nguyen <dinguyen@opensource.altera.com>
> <atull@opensource.altera.com>
> Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Marek Vasut <marex@denx.de>
> Alan Cox
> 

Definitely add me to that list.

	-hpa
