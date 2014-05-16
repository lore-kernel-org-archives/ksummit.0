Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B3F61711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 18:42:16 +0000 (UTC)
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 14F292020D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 18:42:16 +0000 (UTC)
Date: Fri, 16 May 2014 14:42:05 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Ben Hutchings <ben@decadent.org.uk>
Message-ID: <20140516184205.GL27822@titan.lakedaemon.net>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140511083729.211e9b5f@lwn.net>
	<20140515121546.3A06AC40B0E@trevor.secretlab.ca>
	<CAL_JsqJw11fZBbLVi=xxC559iWdwCMFOJ4XYM-8EjykttoWsOg@mail.gmail.com>
	<20140515194215.GR27822@titan.lakedaemon.net>
	<CAOesGMi0JrTp9kUVDod4duBOCZ+wNRJ0dMmgvBX7jEQRjE5cCA@mail.gmail.com>
	<20140516041022.GY27822@titan.lakedaemon.net>
	<1400265111.2647.54.camel@deadeye.wl.decadent.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1400265111.2647.54.camel@deadeye.wl.decadent.org.uk>
Cc: Rob Herring <robh@kernel.org>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ARM legacy board DT conversion
 finalization
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 16, 2014 at 07:31:51PM +0100, Ben Hutchings wrote:
> On Fri, 2014-05-16 at 00:10 -0400, Jason Cooper wrote:
> > Joking aside, I concede your point.  It looks like the last two mvebu
> > legacy platforms (dove, mv78xx0) might get merged into mach-mvebu during
> > the next cycle.  After that, we can reach out to the Debian and OpenWRT
> > guys and see what legacy platforms are in use or rotting.  We can go
> > from there.
> 
> I just removed ixp4xx from Debian as the kernel image wouldn't fit in
> the NSLU2's kernel partition any more (even after disabling quite a few
> features that are enabled in most other configurations).  iop32x was
> removed for the same reason, a while ago.

Hmmm, I have two NSLU2's, they might make a good platform for the
tinification/IoT work.  Small flash, small RAM, slow.

> Our 'legacy' (which I take to mean pre-v7) configurations are now
> kirkwood, mv78xx0, orion5x (all about to converge to mvebu) and
> versatile.

I'm not familiar with versatile, the others I've seen a few times. ;-)

Does Debian see any user activity with mv78xx0?  I know your build
system used to have boards with that SoC family, but are there any other
users?

thx,

Jason.
