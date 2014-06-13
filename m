Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 38EAFAF7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 18:22:04 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D5D9B201D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 18:22:02 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.mail.srv.osa [10.202.2.41])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id BD22C21090
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 14:21:45 -0400 (EDT)
Date: Fri, 13 Jun 2014 11:25:37 -0700
From: Greg KH <greg@kroah.com>
To: Christoph Lameter <cl@gentwo.org>
Message-ID: <20140613182537.GA24180@kroah.com>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
	<alpine.DEB.2.10.1406131155080.913@gentwo.org>
	<20140613173041.GA19513@kroah.com>
	<alpine.DEB.2.10.1406131300140.7778@gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1406131300140.7778@gentwo.org>
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

On Fri, Jun 13, 2014 at 01:01:02PM -0500, Christoph Lameter wrote:
> On Fri, 13 Jun 2014, Greg KH wrote:
> 
> > In the end, userspace wants a socket-like interface to the networking
> > "stack", right?  So either you provide that with a custom networking
> > library that talks directly to a specific hardware card (like 3
> > different companies provide), or you just deal with the in-kernel
> > network stack.  What else is there that we can do here?
> 
> Standardize the kernel APIs for this use case

The UIO interface is being used for this, so all should be good on the
kernel side, right?

> as well as the user space APIs so that software runs on any of the 3
> companies stacks.

As these libraries are outside of the kernel tree, there's not much us
kernel developers can do about this.  Work with those companies to do
this...

greg k-h
