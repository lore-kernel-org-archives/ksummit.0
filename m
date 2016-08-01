Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8495A98C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 17:40:27 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 978BF202
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 17:40:26 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 01 Aug 2016 20:40:25 +0300
Message-ID: <2756250.sEDmrCK4m2@avalon>
In-Reply-To: <63f6e3b4-3a48-182f-e8d5-87e720b60d5d@metafoo.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<579F6049.9030408@samsung.com>
	<63f6e3b4-3a48-182f-e8d5-87e720b60d5d@metafoo.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
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

Hi Lars,

On Monday 01 Aug 2016 16:54:46 Lars-Peter Clausen wrote:
> On 08/01/2016 04:44 PM, Andrzej Hajda wrote:
> > On 08/01/2016 03:55 PM, Mauro Carvalho Chehab wrote:
> >> Em Mon, 1 Aug 2016 15:33:22 +0200 Lars-Peter Clausen escreveu:
> >>> On 08/01/2016 03:21 PM, Hans Verkuil wrote:
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
> >>>>> manual unbinding through sysfs). With asynchronous binding we can
> >>>>> more or less easily wait for all components to be present before
> >>>>> creating circular dependencies, but breaking them to implement
> >>>>> unbinding is an unsolved problem at least in V4L2.>>>> 
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
> >>> suppress_bind_attrs is the lazy solution and as you pointed out does not
> >>> work too well for all cases.
> >> 
> >> Agreed.
> >> 
> >> What we really need is a kind of "usage count" behavior to suppress
> >> unbinds, e. g. a device driver can be unbound only if any other driver
> >> using resources on it gets unbind first.
> >> 
> >> That will solve most of unbind issues at the media subsystem.
> > 
> > When I was investigating issues with unbind sysfs attribute I have found
> > claim by Greg KH that unbind should be rather unavoidable, like in case
> > of hw removal - kernel is not able to prevent users from removing usb
> > device, even if it is in use.
> > 
> > Assuming the claim is still valid, the only solution I see are callbacks
> > notifying resource consumers about removal of the resources.
> 
> There are multiple options.
> 
> One option, which I think is currently the most used option in the kernel,
> is to unregister the resource when the provider is removed, but keep the
> resource object alive as long as there are users. Any further operation on
> such object will fail with an error. This works to the point where things
> don't crash, but it wont function in any meaningful way. There is no way to
> automatically recover if the resource reappears.

As Mark mentioned, I don't think we can do anything else than this when it 
comes to userspace-facing interfaces. We need to keep objects alive until they 
can't be accessed by userspace anymore, otherwise we'll oops. The device will 
obviously stop working if it loses mandatory resources, this is all about 
failing gracefully.

One a side note, this is actually very difficult to get right in drivers in a 
race-free way. I'm not sure how core frameworks could help, but if they can, 
they should. And I'm afraid that devm_kzalloc() worsened the situation as many 
drivers use it to allocate the driver-specific data structure that can be 
accessed through userspace API calls. The memory is then freed at unbind time 
without any reference counting.

> Other options are as you pointed out notifier callbacks that allows the
> resource use to be aware that a resource has disappeared and it might adjust
> and continue to function with limited functionality.

That's especially important for optional resources, when the consumer can 
still work, possibly in a degraded mode, when the resource isn't available. I 
don't think such a callback could replace the reference counting used in the 
above option though. Callbacks can be racy, and make locking tricky. Keeping 
pointers valid until the last user goes away should simplify the 
implementation and be our lowest level safety net.

Note that option resources here has a very specific meaning. For instance, a 
reset GPIO might be optional in the sense that if the reset pin of the device 
is tied to a power rail, the driver doesn't need to control the reset signal. 
If the GPIO is available though, and then disappears, it might get pulled back 
to the reset state due to the GPIO controller being unbound, which would 
prevent the device from working properly.

> Another option is to teach the device core about critical resource
> dependencies so that a consumer is automatically unbound by the core if any
> of its resource dependencies are unregistered. The device can also
> automatically be re-bound once the critical resources re-appear.

That could be an interesting shortcut, I'd be curious to see how it could be 
implemented.

> The most likely solution is probably a mixture of all of them.

-- 
Regards,

Laurent Pinchart
