Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 66A35A04
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Jun 2014 14:04:57 +0000 (UTC)
Received: from qmta04.emeryville.ca.mail.comcast.net
	(qmta04.emeryville.ca.mail.comcast.net [76.96.30.40])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 55FF320207
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Jun 2014 14:04:55 +0000 (UTC)
Date: Mon, 16 Jun 2014 09:04:53 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Phillip Lougher <phillip@lougher.demon.co.uk>
In-Reply-To: <539BA32A.8090104@lougher.demon.co.uk>
Message-ID: <alpine.DEB.2.11.1406160901480.9480@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<53994FED.1080106@lougher.demon.co.uk>
	<alpine.DEB.2.10.1406131158490.913@gentwo.org>
	<539BA32A.8090104@lougher.demon.co.uk>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Redesign Memory Management layer
 and more core subsystem
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 14 Jun 2014, Phillip Lougher wrote:

> Embedded systems have long had the need to carve out (mainly heterogenous)
> processors from Linux.  Media systems have VLIW media processors (i.e.
> Philips Trimedia), and mobile phones typically have separate baseband
> processors.  This is done without any core support necessary from the kernel.
> Just write a device driver that presents a programming & I/O channel
> to the carved out hardware.

Well but this is bad because kernel services may be needed by these carved
out processors. If the kernel would support this then life would be much
easier for you.

> Additionally, where Linux kernel has been too heavy weight with its
> slow real-time response, and/or expensive paged multi-address spaces, the
> solution is often to use a nano-kernel like ADEOS or RTLinux,
> running Linux as a separate OS, leaving scope to run lighter weight
> real-time single address operating systems in parallel.

Having hardware and software that is handled by two differnt OSes is
pretty complex. Shoving something like that into the Linux kernel should
be pretty easy because most of the infrastructure is already there.

> My point about the hardware engineer is people can't have their cake
> and eat it.  Unix/Linux has been successful partly because of its
> strong protection/paged model.  It is difficult to be both secure
> and efficient.  If you want to both then you need to design
> it into the operating system from the outset.  Linux isn't a good
> place to start.

I think we can if we allow cores to run with simplified support and
reduced overhead.
