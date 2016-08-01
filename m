Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 20C1D83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 07:36:04 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A181513A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 07:36:03 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 01 Aug 2016 10:36:01 +0300
Message-ID: <3411313.MV5bv347js@avalon>
In-Reply-To: <3132432.DrxSMjl1Vi@wuerfel>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<20160731175753.GQ9681@localhost> <3132432.DrxSMjl1Vi@wuerfel>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: "Nikula, Jani" <jani.nikula@linux.intel.com>,
	Dave Airlie <airlied@linux.ie>, Grant Likely <grant.likely@linaro.org>,
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

On Monday 01 Aug 2016 08:56:30 Arnd Bergmann wrote:
> On Sunday, July 31, 2016 11:27:53 PM CEST Vinod Koul wrote:
> > On Thu, Jul 28, 2016 at 10:44:23AM +0200, Arnd Bergmann wrote:
> > > config FOO
> > > 
> > >       bool "foo driver" if COMPILE_TEST && !ARCH_FOO
> > >       default ARCH_FOO
> > >       depends on GPIOLIB && I2C && OF && WHATEVER
> > > 
> > > This becomes a silent always-on symbol if the platform is used,
> > > and user-selectable on every other platform with COMPILE_TEST.
> > 
> > Yeah this seems a bit more better. I am perhaps thinking to add top
> > level arch dependency if required. I will try this out on DMAengine to
> > start with and ease my build tests
> 
> Sounds good. Let me know if you end up having to add a 'depends on ARM'
> dependency anywhere, as that might indicate that we are doing something
> different on ARM that should be done in a more generic way.

OMAP DMA comes to mind, we still depend on the implementation provided by 
arch/arm/plat-omap/dma.c.

-- 
Regards,

Laurent Pinchart
