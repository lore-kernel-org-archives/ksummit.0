Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA81B93D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 14:10:47 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 86CC4137
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 14:10:45 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Mon, 01 Aug 2016 16:10:29 +0200
Message-ID: <23532527.pWCIkcecbr@wuerfel>
In-Reply-To: <3411313.MV5bv347js@avalon>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<3132432.DrxSMjl1Vi@wuerfel> <3411313.MV5bv347js@avalon>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org, "Nikula,
	Jani" <jani.nikula@linux.intel.com>, Dave Airlie <airlied@linux.ie>,
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

On Monday, August 1, 2016 10:36:01 AM CEST Laurent Pinchart wrote:
> On Monday 01 Aug 2016 08:56:30 Arnd Bergmann wrote:
> > On Sunday, July 31, 2016 11:27:53 PM CEST Vinod Koul wrote:
> > > On Thu, Jul 28, 2016 at 10:44:23AM +0200, Arnd Bergmann wrote:
> > > > config FOO
> > > > 
> > > >       bool "foo driver" if COMPILE_TEST && !ARCH_FOO
> > > >       default ARCH_FOO
> > > >       depends on GPIOLIB && I2C && OF && WHATEVER
> > > > 
> > > > This becomes a silent always-on symbol if the platform is used,
> > > > and user-selectable on every other platform with COMPILE_TEST.
> > > 
> > > Yeah this seems a bit more better. I am perhaps thinking to add top
> > > level arch dependency if required. I will try this out on DMAengine to
> > > start with and ease my build tests
> > 
> > Sounds good. Let me know if you end up having to add a 'depends on ARM'
> > dependency anywhere, as that might indicate that we are doing something
> > different on ARM that should be done in a more generic way.
> 
> OMAP DMA comes to mind, we still depend on the implementation provided by 
> arch/arm/plat-omap/dma.c.

That's a dependency on MACH_OMAP instead of ARM though, which is a bit
different.

(Getting offtopic and) speaking of this one, is anyone working
on converting the last four or five drivers to the dmaengine framework?

drivers/media/platform/omap/omap_vout_vrfb.c
drivers/mtd/onenand/omap2.c
drivers/usb/gadget/udc/omap_udc.c
drivers/usb/musb/tusb6010_omap.c
(and a bit of drivers/video/fbdev/omap/omapfb_main.c)

I guess we could improve build coverage by moving 
arch/arm/plat-omap/dma.c into drivers/dma/omap-dma.c, but that
has the disadvantage of exposing a nonstandard interface from
somewhere inside of the dmaengine subsystem.

	Arnd
