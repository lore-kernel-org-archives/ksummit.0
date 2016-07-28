Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1591D91A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 16:00:27 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 43790121
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 16:00:26 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jan Kara <jack@suse.cz>
Date: Thu, 28 Jul 2016 19:00:36 +0300
Message-ID: <2023901.fskbspMbmh@avalon>
In-Reply-To: <20160728114624.GE4094@quack2.suse.cz>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<2071960.gyaMIhrJi3@avalon> <20160728114624.GE4094@quack2.suse.cz>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
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

Hi Jan,

On Thursday 28 Jul 2016 13:46:24 Jan Kara wrote:
> On Thu 28-07-16 14:03:46, Laurent Pinchart wrote:
> > On Thursday 28 Jul 2016 12:54:47 Hans Verkuil wrote:
> >>> One problem with those other dependencies is that they can't always be
> >>> expressed as a tree and may a graph instead. Worse, in some cases, the
> >>> graph can be cyclic (I've recently been told about an external
> >>> I2C-based PLL that takes an input clock and generates an output clock,
> >>> with the input clock being produced by an on-SoC sound device and the
> >>> output clock being used by the same sound device). Even when
> >>> individual resource trees or graphs are not cyclic, combining them in
> >>> a global dependency graph will often result in cycles. The challenge
> >>> is to find a proper way to both express the dependency graph and break
> >>> the cycles.
> >> 
> >> Do we need to capture 100% of all the weird and wonderful dependencies?
> >> I think (speaking for the media subsystem) that the vast majority of the
> >> dependencies are pretty simple trees without cycles. Being able to
> >> capture that would be a huge help. The remaining more complex devices
> >> could still fall back on deferred probe, I'd say.
> > 
> > When dealing with a single type of resources dependency graphs are very
> > rarely cyclic. However, when merging multiple resource dependency graphs,
> > cycles become quite common.
> > 
> > One example is the camera device found in OMAP3 chips. The SoC-side camera
> > controller can output a clock to the outside world (and is thus a CCF
> > clock provider). In most hardware designs that clock is used by the
> > external camera sensors, which in turn outputs a video data stream (with a
> > clock and other synchronization signals) fed to the camera controller. We
> > thus get a dependency loop. The situation is even worse on some Atmel
> > platforms where part of the camera controller logic is clocked by the
> > pixel clock received from the sensor. In that case the camera controller
> > can't be software reset without a sensor providing a pixel clock. We can
> > blame the hardware designers, but at the end of the day we need to
> > support such systems. Whether such cases need to be supported by generic
> > code is a discussion we can have, and I'm not pushing in either
> > direction, but I want to make sure we will always have *a* solution.
> 
> So I'm complete outsider to media drivers so maybe my question is stupid
> but I cannot resist: So how is the device bringup supposed to work for
> devices where you have these cycles in the dependency graph? Do you just
> bring up the controller and then the sensor and it works because the
> controller doesn't need the clock from the sensor for startup?

That's pretty much the idea, yes. We first probe the controller, and register 
a notifier to react to sensors being probed. The controller registers at probe 
time the clocks it provides, so the sensor can get hold of them when it gets 
probed. The controller is then notified that the sensor is available and 
proceeds normally.

We also have a suspend/resume ordering issue, where we have to stop the 
controller first (the hardware doesn't like when it loses the incoming video 
stream while running), but we can't stop the clock just yet before the sensor 
driver has a chance to suspend the sensor. We thus use the PM prepare and 
complete callbacks to stop/restart the controller, and the PM suspend and 
resume callbacks to stop/restart the clock. This is a hack that assumes that 
the sensor gets probed after the controller (which is guaranteed by the fact 
that the sensor needs a clock provided by the controller and thus probe will 
be deferred if the controller hasn't been probed yet) and that the sensor 
driver will use the PM suspend/resume callbacks, not the prepare/complete 
callbacks. Ugly, but for now it works.

In the case of the Atmel device I mentioned we just don't reset the hardware 
at probe time. We can still access the hardware registers we need without 
getting a pixel clock, so it's not such a big deal. It would have been worse 
if the hardware designers had decided to clock all registers with the pixel 
clock.

-- 
Regards,

Laurent Pinchart
