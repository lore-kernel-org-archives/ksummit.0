Return-Path: <vinod.koul@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9674B2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 04:38:36 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 2C71FAA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 04:38:36 +0000 (UTC)
Date: Tue, 2 Aug 2016 10:16:09 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Arnd Bergmann <arnd@arndb.de>, Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <20160802044609.GS9681@localhost>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<3132432.DrxSMjl1Vi@wuerfel> <3411313.MV5bv347js@avalon>
	<23532527.pWCIkcecbr@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <23532527.pWCIkcecbr@wuerfel>
Cc: ksummit-discuss@lists.linuxfoundation.org, Dave Airlie <airlied@linux.ie>,
	"Nikula, Jani" <jani.nikula@linux.intel.com>,
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

On Mon, Aug 01, 2016 at 04:10:29PM +0200, Arnd Bergmann wrote:
> On Monday, August 1, 2016 10:36:01 AM CEST Laurent Pinchart wrote:
> > On Monday 01 Aug 2016 08:56:30 Arnd Bergmann wrote:
> > > On Sunday, July 31, 2016 11:27:53 PM CEST Vinod Koul wrote:
> > > > On Thu, Jul 28, 2016 at 10:44:23AM +0200, Arnd Bergmann wrote:
> > > > > config FOO
> > > > > 
> > > > >       bool "foo driver" if COMPILE_TEST && !ARCH_FOO
> > > > >       default ARCH_FOO
> > > > >       depends on GPIOLIB && I2C && OF && WHATEVER
> > > > > 
> > > > > This becomes a silent always-on symbol if the platform is used,
> > > > > and user-selectable on every other platform with COMPILE_TEST.
> > > > 
> > > > Yeah this seems a bit more better. I am perhaps thinking to add top
> > > > level arch dependency if required. I will try this out on DMAengine to
> > > > start with and ease my build tests
> > > 
> > > Sounds good. Let me know if you end up having to add a 'depends on ARM'
> > > dependency anywhere, as that might indicate that we are doing something
> > > different on ARM that should be done in a more generic way.
> > 
> > OMAP DMA comes to mind, we still depend on the implementation provided by 
> > arch/arm/plat-omap/dma.c.
> 
> That's a dependency on MACH_OMAP instead of ARM though, which is a bit
> different.
> 
> (Getting offtopic and) speaking of this one, is anyone working
> on converting the last four or five drivers to the dmaengine framework?

Rather lets' move this conversation to dmaengine list?

> drivers/media/platform/omap/omap_vout_vrfb.c
> drivers/mtd/onenand/omap2.c
> drivers/usb/gadget/udc/omap_udc.c
> drivers/usb/musb/tusb6010_omap.c
> (and a bit of drivers/video/fbdev/omap/omapfb_main.c)

Peter?

> 
> I guess we could improve build coverage by moving 
> arch/arm/plat-omap/dma.c into drivers/dma/omap-dma.c, but that
> has the disadvantage of exposing a nonstandard interface from
> somewhere inside of the dmaengine subsystem.

yeah that won't be nice. I think we should get these removed... We have omap
as well as edma driver in dmaengine.

-- 
~Vinod
