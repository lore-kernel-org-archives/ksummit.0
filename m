Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D3769B05
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 22:30:34 +0000 (UTC)
Received: from qmta07.emeryville.ca.mail.comcast.net
	(qmta07.emeryville.ca.mail.comcast.net [76.96.30.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7061020099
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 22:30:34 +0000 (UTC)
Date: Fri, 13 Jun 2014 17:30:31 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Stephen Hemminger <stephen@networkplumber.org>
In-Reply-To: <20140613121846.10c72bed@nehalam.linuxnetplumber.net>
Message-ID: <alpine.DEB.2.11.1406131729300.25334@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
	<20140612133554.GB4073@tuxdriver.com>
	<alpine.DEB.2.10.1406131156210.913@gentwo.org>
	<20140613173145.GB19513@kroah.com>
	<alpine.DEB.2.10.1406131258230.7778@gentwo.org>
	<20140613121846.10c72bed@nehalam.linuxnetplumber.net>
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

On Fri, 13 Jun 2014, Stephen Hemminger wrote:

> > But again I want both. A general stack that allows at least the data path
> > to go direct to the device. The metadata and connection management etc
> > should be firmly in the hand of the kernel.
>
> There are several dataplane user mode networking implementations that
> do this. The problem is you either have to overlap with every networking
> driver (netmap) or do driver in userspace (DPDK).

The netmap stuff requires a system call for any sending and receiving so
that does not work right. The driver is userspace does the device control
etc etc in user space as well which means the kernel does not police the
device.
