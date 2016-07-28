Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AEE2D7AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 11:03:36 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E30E7AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 11:03:35 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Date: Thu, 28 Jul 2016 14:03:46 +0300
Message-ID: <2071960.gyaMIhrJi3@avalon>
In-Reply-To: <cf4ea315-fcbc-a7f5-758a-298cfac321e8@xs4all.nl>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<4826466.kMrAaT2rsn@avalon>
	<cf4ea315-fcbc-a7f5-758a-298cfac321e8@xs4all.nl>
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

On Thursday 28 Jul 2016 12:54:47 Hans Verkuil wrote:
> On 07/28/2016 12:41 PM, Laurent Pinchart wrote:
> > On Thursday 28 Jul 2016 02:54:56 Rafael J. Wysocki wrote:
> >> On Wednesday, July 27, 2016 09:20:40 PM Luis R. Rodriguez wrote:
> >>> On Wed, Jul 27, 2016 at 07:03:46PM +0100, Mark Brown wrote:
> >>>> On Wed, Jul 27, 2016 at 07:58:29PM +0200, Luis R. Rodriguez wrote:
> >>>>> On Wed, Jul 27, 2016 at 06:26:36PM +0100, Mark Brown wrote:
> >>>>>>> to help enable asynchronous probe, however for built-in devices
> >>>>>>> this requires very specific platform knowledge otherwise using
> >>>>>>> async probe will blow up your kernel -- if you get it right
> >>>>>>> though, using async probe can help with
> >>>>>> 
> >>>>>> I'm not sure what specific platform knowledge you're thinking of
> >>>>>> here? We have coverage for most things in the form of deferred probe
> >>>>>> (messy though it is).
> >>>>> 
> >>>>> Deferred probe is a complete a hack and sub-optimal. Being able to
> >>>>> address
> >>>> 
> >>>> Sure, I don't think anyone disagrees on that but it does mean we don't
> >>>> actually blow up easily like we used to - it's messy but it does get
> >>>> there safely.
> >>> 
> >>> Good point, without learning from the past we would otherwise expect
> >>> this is just a sloppy situation, so indeed deferred probe had its
> >>> merits, and we're at least now safe. The goal here is then how to
> >>> do this better, optimized and make it a non-hack.
> > 
> > Let's not demonize deferred probing, I think it's a good safety net to be
> > used as a last resort when everything else failed. The problem is that
> > we're using it as our primary mean to order initialization, and that
> > leads to all sorts of inefficient behaviours at boot time.
> > 
> >> Well, my patchset uses deferred probing, so it won't help much here I
> >> guess.
> >>
> >>>> I was specifically querying your statement that things would blow up.
> >>> 
> >>> In practice this varies as it depends on the device driver or component,
> >>> but the general theme seems to be "relying on something which is not
> >>> yet available".
> >> 
> >> Not only that.
> >> 
> >> There also is a "relying on something that is not a direct ancestor of
> >> the device you care about" angle of that.
> >> 
> >> The device hierarchy as we know it is insufficient for representing
> >> dependencies beyond parent-child and that really is part of the problem,
> >> and a significant one IMO.
> > 
> > That's the core of the issue.
> > 
> > Linux has traditionally represented the device hierarchy from a control
> > bus point of view, both in the driver model and in DT. We know other
> > dependencies exist (data bus access, clocks, regulators, power domains,
> > ...), and we try to address them with various heuristics.
> > 
> > One problem with those other dependencies is that they can't always be
> > expressed as a tree and may a graph instead. Worse, in some cases, the
> > graph can be cyclic (I've recently been told about an external I2C-based
> > PLL that takes an input clock and generates an output clock, with the
> > input clock being produced by an on-SoC sound device and the output clock
> > being used by the same sound device). Even when individual resource trees
> > or graphs are not cyclic, combining them in a global dependency graph
> > will often result in cycles. The challenge is to find a proper way to
> > both express the dependency graph and break the cycles.
> 
> Do we need to capture 100% of all the weird and wonderful dependencies? I
> think (speaking for the media subsystem) that the vast majority of the
> dependencies are pretty simple trees without cycles. Being able to capture
> that would be a huge help. The remaining more complex devices could still
> fall back on deferred probe, I'd say.

When dealing with a single type of resources dependency graphs are very rarely 
cyclic. However, when merging multiple resource dependency graphs, cycles 
become quite common.

One example is the camera device found in OMAP3 chips. The SoC-side camera 
controller can output a clock to the outside world (and is thus a CCF clock 
provider). In most hardware designs that clock is used by the external camera 
sensors, which in turn outputs a video data stream (with a clock and other 
synchronization signals) fed to the camera controller. We thus get a 
dependency loop. The situation is even worse on some Atmel platforms where 
part of the camera controller logic is clocked by the pixel clock received 
from the sensor. In that case the camera controller can't be software reset 
without a sensor providing a pixel clock. We can blame the hardware designers, 
but at the end of the day we need to support such systems. Whether such cases 
need to be supported by generic code is a discussion we can have, and I'm not 
pushing in either direction, but I want to make sure we will always have *a* 
solution.

> I'm never very keen on creating complex code to cater to a small percentage
> of problem cases.

-- 
Regards,

Laurent Pinchart
