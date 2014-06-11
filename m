Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 88CE0A8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 19:41:18 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 831FC201AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 19:41:16 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.mail.srv.osa [10.202.2.44])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 8B466218C1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Jun 2014 15:41:15 -0400 (EDT)
Date: Wed, 11 Jun 2014 12:45:04 -0700
From: Greg KH <greg@kroah.com>
To: Christoph Lameter <cl@gentwo.org>
Message-ID: <20140611194504.GA2683@kroah.com>
References: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1406111336240.9616@gentwo.org>
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

On Wed, Jun 11, 2014 at 02:03:05PM -0500, Christoph Lameter wrote:
> 6. Direct hardware access
> 
> Often the kernel subsystems are impeding performance. In high speed
> computing we regularly bypass the kernel network subsystems, block I/O
> etc. Direct hardware access means though that one is explosed to the ugly
> particularities of how a certain device has to be handled. Can we have the
> cake and eat it too by defining APIs that allow low level hardware access
> but also provide hardware abstraction (maybe limited to certain types of
> devices).

What type of devices are you wanting here, block and networking or
something else?  We have the uio interface if you want to (and know how
to) talk to your hardware directly from userspace, what else do you want
to do here that this doesn't provide?

thanks,

greg k-h
