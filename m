Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D603F9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 26 Jul 2015 14:19:48 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 067ADB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 26 Jul 2015 14:19:47 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sun, 26 Jul 2015 17:20:21 +0300
Message-ID: <8128204.353R9quOj0@avalon>
In-Reply-To: <20150723105711.GB30929@amd>
References: <20150723105711.GB30929@amd>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Pavel Machek <pavel@ucw.cz>
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

On Thursday 23 July 2015 12:57:11 Pavel Machek wrote:
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

I've been working on V4L2 drivers for Xilinx FPGAs and I'm interested in this 
topic from that point of view. I see interactions with userspace being one of 
the most complex part, both in terms of triggering the reprogramming 
operations and handling applications that actively use the FPGA resources.

-- 
Regards,

Laurent Pinchart
