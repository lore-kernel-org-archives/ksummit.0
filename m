Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2B346A01
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 16:56:13 +0000 (UTC)
Received: from qmta09.emeryville.ca.mail.comcast.net
	(qmta09.emeryville.ca.mail.comcast.net [76.96.30.96])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3EF1520247
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 16:56:11 +0000 (UTC)
Date: Fri, 13 Jun 2014 11:56:08 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20140611194504.GA2683@kroah.com>
Message-ID: <alpine.DEB.2.10.1406131155080.913@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
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

On Wed, 11 Jun 2014, Greg KH wrote:

> > Often the kernel subsystems are impeding performance. In high speed
> > computing we regularly bypass the kernel network subsystems, block I/O
> > etc. Direct hardware access means though that one is explosed to the ugly
> > particularities of how a certain device has to be handled. Can we have the
> > cake and eat it too by defining APIs that allow low level hardware access
> > but also provide hardware abstraction (maybe limited to certain types of
> > devices).
>
> What type of devices are you wanting here, block and networking or
> something else?  We have the uio interface if you want to (and know how
> to) talk to your hardware directly from userspace, what else do you want
> to do here that this doesn't provide?

Block and networking mainly. The userspace VFIO API exposes device
specific registers. We need something that is a decent abstraction.
IBverbs is something like that but it could be done much better.
