Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 144E17AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:17:50 +0000 (UTC)
Received: from mail.free-electrons.com (down.free-electrons.com
	[37.187.137.238])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 39BB11D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:17:49 +0000 (UTC)
Date: Wed, 3 Aug 2016 16:17:05 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20160803141705.GD23113@piout.net>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<2071960.gyaMIhrJi3@avalon> <20160728114624.GE4094@quack2.suse.cz>
	<2023901.fskbspMbmh@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2023901.fskbspMbmh@avalon>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

On 28/07/2016 at 19:00:36 +0300, Laurent Pinchart wrote :
> > So I'm complete outsider to media drivers so maybe my question is stupid
> > but I cannot resist: So how is the device bringup supposed to work for
> > devices where you have these cycles in the dependency graph? Do you just
> > bring up the controller and then the sensor and it works because the
> > controller doesn't need the clock from the sensor for startup?
> 
> That's pretty much the idea, yes. We first probe the controller, and register 
> a notifier to react to sensors being probed. The controller registers at probe 
> time the clocks it provides, so the sensor can get hold of them when it gets 
> probed. The controller is then notified that the sensor is available and 
> proceeds normally.
> 
> We also have a suspend/resume ordering issue, where we have to stop the 
> controller first (the hardware doesn't like when it loses the incoming video 
> stream while running), but we can't stop the clock just yet before the sensor 
> driver has a chance to suspend the sensor. We thus use the PM prepare and 
> complete callbacks to stop/restart the controller, and the PM suspend and 
> resume callbacks to stop/restart the clock. This is a hack that assumes that 
> the sensor gets probed after the controller (which is guaranteed by the fact 
> that the sensor needs a clock provided by the controller and thus probe will 
> be deferred if the controller hasn't been probed yet) and that the sensor 
> driver will use the PM suspend/resume callbacks, not the prepare/complete 
> callbacks. Ugly, but for now it works.
> 
> In the case of the Atmel device I mentioned we just don't reset the hardware 
> at probe time. We can still access the hardware registers we need without 
> getting a pixel clock, so it's not such a big deal. It would have been worse 
> if the hardware designers had decided to clock all registers with the pixel 
> clock.
> 

Well, I'm starting to be more and more interested in that thread as I'm
currently working on getting the Atmel "Backup mode" (CPU/SoC off and
DDR in self refresh) working and this is a device (re)initialization
hell.

-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
