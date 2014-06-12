Return-Path: <linville@tuxdriver.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8F310934
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 01:30:21 +0000 (UTC)
Received: from smtp.tuxdriver.com (charlotte.tuxdriver.com [70.61.120.58])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E59DF1F8AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 01:30:20 +0000 (UTC)
Date: Thu, 12 Jun 2014 09:35:54 -0400
From: "John W. Linville" <linville@tuxdriver.com>
To: Greg KH <greg@kroah.com>
Message-ID: <20140612133554.GB4073@tuxdriver.com>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
	<20140611194504.GA2683@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140611194504.GA2683@kroah.com>
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

On Wed, Jun 11, 2014 at 12:45:04PM -0700, Greg KH wrote:
> On Wed, Jun 11, 2014 at 02:03:05PM -0500, Christoph Lameter wrote:
> > 6. Direct hardware access
> > 
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

AF_PACKET provides some level of hardware abstraction without a lot of
overhead for networking apps that are prepared to deal with raw frames.
Is this the kind of networking API you would propose?

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.
