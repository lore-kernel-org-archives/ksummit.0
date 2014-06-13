Return-Path: <stephen@networkplumber.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 604BBAF8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 19:18:50 +0000 (UTC)
Received: from mail-pb0-f54.google.com (mail-pb0-f54.google.com
	[209.85.160.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E26B220277
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 19:18:49 +0000 (UTC)
Received: by mail-pb0-f54.google.com with SMTP id jt11so2405879pbb.41
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 12:18:49 -0700 (PDT)
Date: Fri, 13 Jun 2014 12:18:46 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Christoph Lameter <cl@gentwo.org>
Message-ID: <20140613121846.10c72bed@nehalam.linuxnetplumber.net>
In-Reply-To: <alpine.DEB.2.10.1406131258230.7778@gentwo.org>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
	<20140612133554.GB4073@tuxdriver.com>
	<alpine.DEB.2.10.1406131156210.913@gentwo.org>
	<20140613173145.GB19513@kroah.com>
	<alpine.DEB.2.10.1406131258230.7778@gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Fri, 13 Jun 2014 12:59:32 -0500 (CDT)
Christoph Lameter <cl@gentwo.org> wrote:

> On Fri, 13 Jun 2014, Greg KH wrote:
> 
> > On Fri, Jun 13, 2014 at 11:57:04AM -0500, Christoph Lameter wrote:
> > > On Thu, 12 Jun 2014, John W. Linville wrote:
> > >
> > > > AF_PACKET provides some level of hardware abstraction without a lot of
> > > > overhead for networking apps that are prepared to deal with raw frames.
> > > > Is this the kind of networking API you would propose?
> > >
> > > The kernel is still in the data path and will cause limitations in terms
> > > of bandwidth and latency.
> >
> > Of course it will, nothing is "free".  If this is a problem, then run
> > one of the many different networking stacks that are in userspace that
> > are tailored to a specific use-case.  The kernel has to provide a
> > "general" use case stack, that is its job.
> 
> But again I want both. A general stack that allows at least the data path
> to go direct to the device. The metadata and connection management etc
> should be firmly in the hand of the kernel.

There are several dataplane user mode networking implementations that
do this. The problem is you either have to overlap with every networking
driver (netmap) or do driver in userspace (DPDK).
