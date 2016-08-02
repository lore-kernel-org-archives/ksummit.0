Return-Path: <peter.ujfalusi@ti.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E201B413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 06:57:08 +0000 (UTC)
Received: from bear.ext.ti.com (bear.ext.ti.com [198.47.19.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8E0AF198
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 06:57:07 +0000 (UTC)
To: Vinod Koul <vinod.koul@intel.com>, Arnd Bergmann <arnd@arndb.de>, Russell
	King - ARM Linux <linux@arm.linux.org.uk>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<3132432.DrxSMjl1Vi@wuerfel> <3411313.MV5bv347js@avalon>
	<23532527.pWCIkcecbr@wuerfel> <20160802044609.GS9681@localhost>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <2ddeb98b-7bf8-aa21-2dee-9e02f9c59a92@ti.com>
Date: Tue, 2 Aug 2016 09:48:53 +0300
MIME-Version: 1.0
In-Reply-To: <20160802044609.GS9681@localhost>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit
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

On 08/02/16 07:46, Vinod Koul wrote:
> On Mon, Aug 01, 2016 at 04:10:29PM +0200, Arnd Bergmann wrote:
>> On Monday, August 1, 2016 10:36:01 AM CEST Laurent Pinchart wrote:
>>> On Monday 01 Aug 2016 08:56:30 Arnd Bergmann wrote:
>>>> On Sunday, July 31, 2016 11:27:53 PM CEST Vinod Koul wrote:
>>>>> On Thu, Jul 28, 2016 at 10:44:23AM +0200, Arnd Bergmann wrote:
>>>>>> config FOO
>>>>>>
>>>>>>       bool "foo driver" if COMPILE_TEST && !ARCH_FOO
>>>>>>       default ARCH_FOO
>>>>>>       depends on GPIOLIB && I2C && OF && WHATEVER
>>>>>>
>>>>>> This becomes a silent always-on symbol if the platform is used,
>>>>>> and user-selectable on every other platform with COMPILE_TEST.
>>>>>
>>>>> Yeah this seems a bit more better. I am perhaps thinking to add top
>>>>> level arch dependency if required. I will try this out on DMAengine to
>>>>> start with and ease my build tests
>>>>
>>>> Sounds good. Let me know if you end up having to add a 'depends on ARM'
>>>> dependency anywhere, as that might indicate that we are doing something
>>>> different on ARM that should be done in a more generic way.
>>>
>>> OMAP DMA comes to mind, we still depend on the implementation provided by 
>>> arch/arm/plat-omap/dma.c.
>>
>> That's a dependency on MACH_OMAP instead of ARM though, which is a bit
>> different.
>>
>> (Getting offtopic and) speaking of this one, is anyone working
>> on converting the last four or five drivers to the dmaengine framework?
> 
> Rather lets' move this conversation to dmaengine list?
> 
>> drivers/media/platform/omap/omap_vout_vrfb.c

Needs the interleaved transfer type support in omap-dma. Now it is in -next.

>> drivers/mtd/onenand/omap2.c

Using memcpy, I have sent the patches:
https://patchwork.kernel.org/patch/7842891/
https://patchwork.kernel.org/patch/7851881/

but I need to revisit. I think the 'fix' will be to drop the DMA support from it.

>> drivers/usb/gadget/udc/omap_udc.c
>> drivers/usb/musb/tusb6010_omap.c

They are mostly slave implementations, but. As I recall they do some really
interesting non symmetric setup for the TX/RX DMA which I still need to figure
out. And I'm looking for HW to check for regression...

>> (and a bit of drivers/video/fbdev/omap/omapfb_main.c)

Hrm, that is OMAP1. Looks like highly coupled with mach-omap1/lcd_dma.c. This
is going to be a bit complicated IMHO.

> 
> Peter?
> 
>>
>> I guess we could improve build coverage by moving 
>> arch/arm/plat-omap/dma.c into drivers/dma/omap-dma.c, but that
>> has the disadvantage of exposing a nonstandard interface from
>> somewhere inside of the dmaengine subsystem.
> 
> yeah that won't be nice. I think we should get these removed... We have omap
> as well as edma driver in dmaengine.

I'm not going to move the legacy API under dmaengine, it makes no sense.

My plan is to do what I did with the eDMA driver stack:
- convert drivers using the legacy API to dmaengine
- 'merge' the code from plat-omap to the dmaengine driver
  - while doing this the legacy API will vanish along with the plat-omap/dma.c

As with the eDMA, the sDMA stack will need some cleanup, but the good thing is
that the dmaengine driver have minimal dependency on the legacy
plat-omap/dma.c API.

-- 
Péter
