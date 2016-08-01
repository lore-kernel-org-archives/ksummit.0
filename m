Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9619F94D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 17:15:58 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A15D421E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 17:15:57 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Date: Mon, 01 Aug 2016 20:15:56 +0300
Message-ID: <2222413.KK3dIKDdIg@avalon>
In-Reply-To: <7d7f1387-f8a2-220d-97d8-6394ac029639@xs4all.nl>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<7250118.B4sqDGlW1h@avalon>
	<7d7f1387-f8a2-220d-97d8-6394ac029639@xs4all.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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

Hi Hans,

On Monday 01 Aug 2016 15:51:03 Hans Verkuil wrote:
> On 08/01/2016 03:38 PM, Laurent Pinchart wrote:
> > On Monday 01 Aug 2016 15:35:31 Hans Verkuil wrote:
> >> On 08/01/2016 03:26 PM, Laurent Pinchart wrote:
> >>> On Monday 01 Aug 2016 15:21:49 Hans Verkuil wrote:
> >>>> On 08/01/2016 03:09 PM, Laurent Pinchart wrote:
> >>>>> On Friday 29 Jul 2016 12:13:03 Mark Brown wrote:
> >>>>>> On Fri, Jul 29, 2016 at 09:45:55AM +0200, Hans Verkuil wrote:
> >>>>>>> My main problem is not so much with deferred probe (esp. for cyclic
> >>>>>>> dependencies it is a simple method of solving this, and simple is
> >>>>>>> good). My main problem is that you can't tell the system that driver
> >>>>>>> A needs to be probed after drivers B, C and D are probed first.
> >>>>>>> 
> >>>>>>> That would allow us to get rid of v4l2-async.c which is a horrible
> >>>>>>> hack.
> >>>>>>> 
> >>>>>>> That code allows a bridge driver to wait until all dependent drivers
> >>>>>>> are probed. This really should be core functionality.
> >>>>>>> 
> >>>>>>> Do other subsystems do something similar like
> >>>>>>> drivers/media/v4l2-core/v4l2-async.c? Does anyone know?
> >>>>>> 
> >>>>>> ASoC does, it has an explicit card driver to join things together and
> >>>>>> that just defers probe until everything it needs is present.  This
> >>>>>> was originally open coded in ASoC but once deferred probe was
> >>>>>> implemented we converted to that.
> >>>>> 
> >>>>> Asynchronous bindings of components, as done in ASoC, DRM and V4L2, is
> >>>>> a problem largely solved (or rather hacked around), but I'm curious to
> >>>>> know how ASoC handles device unbinding (due to device removal or
> >>>>> manual unbinding through sysfs). With asynchronous binding we can more
> >>>>> or less easily wait for all components to be present before creating
> >>>>> circular dependencies, but breaking them to implement unbinding is an
> >>>>> unsolved problem at least in V4L2.
> >>>> 
> >>>> We need to prevent subdevice drivers from being unbound. It's easy
> >>>> enough to do that (set suppress_bind_attrs to true), we just never did
> >>>> that. It's been on my TODO list for ages to make a patch adding that
> >>>> flag...
> >>>> 
> >>>> You can only unbind bridge drivers. Unbinding subdevs is pointless in
> >>>> general and should be prohibited. Perhaps in the future with
> >>>> dynamically reconfigurable video pipelines (FPGA) you want that, but
> >>>> then you need to do a lot of additional work. For everything we have
> >>>> today we should just set suppress_bind_attrs to true.
> >>> 
> >>> If wish reality was so simple :-) In Project Ara our camera modules are
> >>> hot-pluggable, and connect to a CSI-2 receiver on the SoC side.
> >> 
> >> I assume that when a camera module is unplugged the CSI driver is
> >> informed and it will then unregister the camera subdev. So this is
> >> controlled by the CSI-2 driver. What you don't want is someone unbinding
> >> the camera driver without the CSI-2 driver's knowledge. To prevent that
> >> you need to set that flag in the subdev driver.
> > 
> > The CSI-2 receiver is unaware of the modular nature of the system. The
> > camera module unplug event is delivered by the Greybus [0] core directly
> > to the camera module subdev driver.
> 
> 1) Wouldn't it make more sense to inform the CSI-2 receiver about this?

The CSI-2 receiver has no knowledge about modularity, it's a standard SoC 
CSI-2 receiver. A particular Ara device will use a particular SoC, but 
different devices can be based on different SoCs, with different CSI-2 
receivers. One of the design goals was to not have to teach every CSI-2 
receiver about Ara.

> 2) If it goes to the subdev driver anyway, then shouldn't that call the
> parent CSI-2 receiver driver and inform it that the device has been
> unplugged?

So far V4L2 has always assumed that the driver handling the CSI-2 receiver is 
the master/bridge/host driver (I still don't like the name bridge in that 
context, but that's a separate story). This assumption isn't true with Ara 
anymore, the CSI-2 receiver (and the other video blocks downstream, if any) 
are resources the same way that the sensor is a resource. There is a driver 
that can act as a master in the design, but it's not the CSI-2 receiver 
driver.

> It really should be the bridge driver that unbinds any hardware that
> disappeared, and the subdev shouldn't just disappear. The same happens with
> USB devices that are unplugged: the USB bridge driver gets the disconnect
> and there it knows what it should do to gracefully release everything.

It's easier in that case as the driver that receives the disconnection even is 
also the one that has complete view over the device.

> > [0] https://lwn.net/Articles/648400/ (slightly outdated, but the overall
> > architecture is there)

-- 
Regards,

Laurent Pinchart
