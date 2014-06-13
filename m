Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 75443ABF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 18:01:05 +0000 (UTC)
Received: from qmta05.emeryville.ca.mail.comcast.net
	(qmta05.emeryville.ca.mail.comcast.net [76.96.30.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 18EF720278
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 18:01:05 +0000 (UTC)
Date: Fri, 13 Jun 2014 13:01:02 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20140613173041.GA19513@kroah.com>
Message-ID: <alpine.DEB.2.10.1406131300140.7778@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
	<alpine.DEB.2.10.1406131155080.913@gentwo.org>
	<20140613173041.GA19513@kroah.com>
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

On Fri, 13 Jun 2014, Greg KH wrote:

> In the end, userspace wants a socket-like interface to the networking
> "stack", right?  So either you provide that with a custom networking
> library that talks directly to a specific hardware card (like 3
> different companies provide), or you just deal with the in-kernel
> network stack.  What else is there that we can do here?

Standardize the kernel APIs for this use case as well as the user space
APIs so that software runs on any of the 3 companies stacks.
