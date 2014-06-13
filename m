Return-Path: <cl@gentwo.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8254AABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 18:07:50 +0000 (UTC)
Received: from qmta13.emeryville.ca.mail.comcast.net
	(qmta13.emeryville.ca.mail.comcast.net [76.96.27.243])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2219720266
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 18:07:50 +0000 (UTC)
Date: Fri, 13 Jun 2014 12:59:32 -0500 (CDT)
From: Christoph Lameter <cl@gentwo.org>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20140613173145.GB19513@kroah.com>
Message-ID: <alpine.DEB.2.10.1406131258230.7778@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
	<20140612133554.GB4073@tuxdriver.com>
	<alpine.DEB.2.10.1406131156210.913@gentwo.org>
	<20140613173145.GB19513@kroah.com>
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

> On Fri, Jun 13, 2014 at 11:57:04AM -0500, Christoph Lameter wrote:
> > On Thu, 12 Jun 2014, John W. Linville wrote:
> >
> > > AF_PACKET provides some level of hardware abstraction without a lot of
> > > overhead for networking apps that are prepared to deal with raw frames.
> > > Is this the kind of networking API you would propose?
> >
> > The kernel is still in the data path and will cause limitations in terms
> > of bandwidth and latency.
>
> Of course it will, nothing is "free".  If this is a problem, then run
> one of the many different networking stacks that are in userspace that
> are tailored to a specific use-case.  The kernel has to provide a
> "general" use case stack, that is its job.

But again I want both. A general stack that allows at least the data path
to go direct to the device. The metadata and connection management etc
should be firmly in the hand of the kernel.
