Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C90BF92B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 09:57:25 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 348D4101
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 09:57:25 +0000 (UTC)
Date: Tue, 2 Aug 2016 02:49:56 -0700
From: Tony Lindgren <tony@atomide.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20160802094956.GY28563@atomide.com>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<20160802044609.GS9681@localhost>
	<2ddeb98b-7bf8-aa21-2dee-9e02f9c59a92@ti.com>
	<3068774.8abq2MRDm7@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3068774.8abq2MRDm7@avalon>
Cc: Russell King - ARM Linux <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Dave Airlie <airlied@linux.ie>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>,
	Peter Ujfalusi <peter.ujfalusi@ti.com>,
	Grant Likely <grant.likely@linaro.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

* Laurent Pinchart <laurent.pinchart@ideasonboard.com> [160802 01:33]:
> On Tuesday 02 Aug 2016 09:48:53 Peter Ujfalusi wrote:
> > >> drivers/media/platform/omap/omap_vout_vrfb.c
> > 
> > Needs the interleaved transfer type support in omap-dma. Now it is in -next.
> 
> Thank you for your work on this. When you'll have patches for 
> omap_vout_vrfb.c, please let me know and I'll test them.
> 
> > >> drivers/mtd/onenand/omap2.c
> > 
> > Using memcpy, I have sent the patches:
> > https://patchwork.kernel.org/patch/7842891/
> > https://patchwork.kernel.org/patch/7851881/
> >
> > but I need to revisit. I think the 'fix' will be to drop the DMA support
> > from it.

Yeah let's remove the DMA support from onenand/omapp.c. It's
wrongly using GPIO line instead of the external DMA trigger
line, and already mostly disabled. I doubt that anybody will
miss the DMA support here.

> > >> drivers/usb/gadget/udc/omap_udc.c
> > >> drivers/usb/musb/tusb6010_omap.c
> > 
> > They are mostly slave implementations, but. As I recall they do some really
> > interesting non symmetric setup for the TX/RX DMA which I still need to
> > figure out. And I'm looking for HW to check for regression...

I think the omap_udc.c is also used for modems on omap4 based
phones?

The tusb6010_omap.c case is a very good test case with variable
size ping test over USB Ethernet :) It's probably also the only
mainline DMA test case for omap external DMA request pins, so I'd
rather have it updated,

> > >> (and a bit of drivers/video/fbdev/omap/omapfb_main.c)
> > 
> > Hrm, that is OMAP1. Looks like highly coupled with mach-omap1/lcd_dma.c.
> > This is going to be a bit complicated IMHO.
> > 
> > > Peter?
> > > 
> > >> I guess we could improve build coverage by moving
> > >> arch/arm/plat-omap/dma.c into drivers/dma/omap-dma.c, but that
> > >> has the disadvantage of exposing a nonstandard interface from
> > >> somewhere inside of the dmaengine subsystem.
> > > 
> > > yeah that won't be nice. I think we should get these removed... We have
> > > omap as well as edma driver in dmaengine.
> > 
> > I'm not going to move the legacy API under dmaengine, it makes no sense.
> > 
> > My plan is to do what I did with the eDMA driver stack:
> > - convert drivers using the legacy API to dmaengine
> > - 'merge' the code from plat-omap to the dmaengine driver
> >   - while doing this the legacy API will vanish along with the
> > plat-omap/dma.c
> > 
> > As with the eDMA, the sDMA stack will need some cleanup, but the good thing
> > is that the dmaengine driver have minimal dependency on the legacy
> > plat-omap/dma.c API.

We can move the omap1 legacy dma support to be mach-omap1 specific
once the problem drivers are fixed.

Regards,

Tony
