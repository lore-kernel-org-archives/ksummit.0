Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9DA3FA8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 17:26:51 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 051DD20214
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 17:26:50 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.mail.srv.osa [10.202.2.43])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 613F720E66
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 13:26:49 -0400 (EDT)
Date: Fri, 13 Jun 2014 10:30:41 -0700
From: Greg KH <greg@kroah.com>
To: Christoph Lameter <cl@gentwo.org>
Message-ID: <20140613173041.GA19513@kroah.com>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
	<alpine.DEB.2.10.1406131155080.913@gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1406131155080.913@gentwo.org>
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

On Fri, Jun 13, 2014 at 11:56:08AM -0500, Christoph Lameter wrote:
> On Wed, 11 Jun 2014, Greg KH wrote:
> 
> > > Often the kernel subsystems are impeding performance. In high speed
> > > computing we regularly bypass the kernel network subsystems, block I/O
> > > etc. Direct hardware access means though that one is explosed to the ugly
> > > particularities of how a certain device has to be handled. Can we have the
> > > cake and eat it too by defining APIs that allow low level hardware access
> > > but also provide hardware abstraction (maybe limited to certain types of
> > > devices).
> >
> > What type of devices are you wanting here, block and networking or
> > something else?  We have the uio interface if you want to (and know how
> > to) talk to your hardware directly from userspace, what else do you want
> > to do here that this doesn't provide?
> 
> Block and networking mainly. The userspace VFIO API exposes device
> specific registers. We need something that is a decent abstraction.
> IBverbs is something like that but it could be done much better.

Heh, we've been down this road before :)

In the end, userspace wants a socket-like interface to the networking
"stack", right?  So either you provide that with a custom networking
library that talks directly to a specific hardware card (like 3
different companies provide), or you just deal with the in-kernel
network stack.  What else is there that we can do here?

And as for block device, "raw access", really?  What is lacking with
what we already provide in "raw mode", and a no-op block scheduler?  How
much more "lean" can we possibly go without you having to write a custom
userspace uio driver for every block controller out there?

thanks,

greg k-h
