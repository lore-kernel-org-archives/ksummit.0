Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 251DC482
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 11:07:12 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3C351164
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 11:07:11 +0000 (UTC)
Date: Thu, 23 Jul 2015 12:57:11 +0200
From: Pavel Machek <pavel@ucw.cz>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20150723105711.GB30929@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] [TECH TOPIC] FPGAs and how to program them from
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi!

(Please cc me on replies)

FPGAs are common in embedded systems, where they can provide missing
hardware interfaces, directly implement functionality, or provide
custom hardware modules. These days they become available for servers,
too, where they can act as high-performance co-processors (which are
tricky to program).

There are very different requirements for FPGA that implements your
SATA controller (so you need it for boot), and one where multiple
userland applications directly access FPGA using it for different
computations, needing FPGA netlist to be changed based on userspace
needs. Yet, it would be nice to come up with single interface that can
handle all the different applications, and is suitable for mainline
kernel.

People that might be interested:

Michal Simek <michal.simek@xilinx.com>
Dinh Nguyen <dinguyen@opensource.altera.com>
<atull@opensource.altera.com>
Steffen Trumtrar <s.trumtrar@pengutronix.de>
Marek Vasut <marex@denx.de>
Alan Cox


									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
