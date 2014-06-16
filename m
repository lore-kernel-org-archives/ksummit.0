Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 99AF2A05
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Jun 2014 14:28:17 +0000 (UTC)
Received: from qmta06.emeryville.ca.mail.comcast.net
	(qmta06.emeryville.ca.mail.comcast.net [76.96.30.56])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 4182620241
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Jun 2014 14:28:17 +0000 (UTC)
Date: Mon, 16 Jun 2014 09:28:13 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
In-Reply-To: <20140616160951.10c455dc@free-electrons.com>
Message-ID: <alpine.DEB.2.11.1406160924570.27702@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
	<alpine.DEB.2.10.1406131155080.913@gentwo.org>
	<20140613173041.GA19513@kroah.com>
	<1402682146.2224.44.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.10.1406131338520.8092@gentwo.org>
	<20140616133932.7f8e6bbe@free-electrons.com>
	<alpine.DEB.2.11.1406160905030.9480@gentwo.org>
	<20140616160951.10c455dc@free-electrons.com>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Mon, 16 Jun 2014, Thomas Petazzoni wrote:

> Well, my understanding is that libdrm exposes on API, but internally
> has support for various graphics hardware. Same for OpenGL: a unified
> normalized API that applications can rely on, and pure user-space
> implementations that know about the hardware details.

Ok then we would need to come up with an API for NICs and storage that
allows user space to determine the hardware and use the correct logic.

The same approach is used in the Infiniband subsystem. However this means
that device driver like code is distributed separately from the kernel.
There are separate ibverbs, ibrdma etc trees and its an issue to keep the
in kernel portions in sync with the userspace code.

Ideally these would go together and be modified by patches that change
both the kernel portion and the userspace portion.

So maybe add a directory for userspace driver code to the kernel?
