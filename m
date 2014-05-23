Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 026729A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 00:18:49 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF8C82030E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 00:18:47 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Kevin Hilman <khilman@linaro.org>
Date: Fri, 23 May 2014 02:18:59 +0200
Message-ID: <31131010.huPvrnkcye@avalon>
In-Reply-To: <7hwqdgqtg5.fsf@paris.lan>
References: <1872038.43ncqEMWSx@avalon> <6546269.8BCSq47QAR@avalon>
	<7hwqdgqtg5.fsf@paris.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Kevin,

On Tuesday 20 May 2014 09:57:14 Kevin Hilman wrote:
> Laurent Pinchart <laurent.pinchart@ideasonboard.com> writes:
> > On Wednesday 14 May 2014 00:34:56 Rafael J. Wysocki wrote:
> >> On Wednesday, May 14, 2014 12:27:47 AM Rafael J. Wysocki wrote:
> >> > On Monday, May 12, 2014 11:07:29 PM Mark Brown wrote:
> >> > > On Mon, May 12, 2014 at 11:16:57PM +0200, Tomasz Figa wrote:
> >> > > > On 12.05.2014 22:31, Mark Brown wrote:
> >> > > > > It also solves the system suspend dependencies.  Why don't the
> >> > > > > runtime PM dependencies just work with reference counting?
> >> > > > 
> >> > > > Runtime PM dependencies work with reference counting just fine, but
> >> > > > only for topologies matching Linux driver model, e.g. devices with
> >> > > > exactly one device they depend on, e.g. SPI controller and SPI
> >> > > > devices on the bus driven by it. Add there an IOMMU and other
> >> > > > various strange things that should be transparent to the drivers
> >> > > > and it stops working.
> >> > > 
> >> > > There's no reason why runtime PM references have to follow the
> >> > > topology - you do get a default reference count up to any parent
> >> > > (though we break that sometimes, as is the case with SPI controllers
> >> > > being suspended even though the devices below them are active) but
> >> > > there's nothing stopping references being taken outside the topology.
> >> > 
> >> > Precisely.
> >> 
> >> BTW, I guess that the problem is resume and specifically the fact that if
> >> a child device resumes, the parent will also resume automatically, but
> >> the other devices the child may depend on will not (the child's resume
> >> may need to resume them directly).
> >> 
> >> But I'm not sure why that is a problem, so can anyone please share some
> >> details?
> > 
> > Here are two real life examples.
> > 
> > 1. IOMMU and bus master
> > 
> > Bus master devices connected to an IOMMU need the IOMMU to be powered on
> > in order to access memory. In order to save power the IOMMU should of
> > course be powered off as much as possible.
> > 
> > The tricky part here comes from the fact that the IOMMU is hidden behind
> > the DMA API. The bus master driver can't manage the IOMMU power state
> > eplicitly by taking/releasing references to the IOMMU device.
> > 
> > This could easily be solved in an ad-hoc fashion by extending the DMA
> > mapping API, but I'm wondering whether similar issues wouldn't benefit
> > from a common solution (I'm not sure yet what all the similar issues are,
> > hence the topic proposal to try and gather use cases).
> 
> I'll continue to beat the runtime PM drum...

And I'll continue to sing a slightly different song :-)

> This would also easily be solved if the bus master device, the IOMMU and
> the dmaengine (or the platform-specific dma driver) were all using runtime
> PM.  e.g. bus master device is a user of dmaengine, which is a user of the
> IOMMU.  If all are using runtime PM, the fact that a device is "in use",
> means runtime PM would keep them active when needed.  In this example, it
> wouldn't matter that the bus master device doesn't know about the IOMMU. It
> suffices that the dmaengine driver knows about the IOMMU.

You're confusing the DMA engine and DMA mapping APIs here. IOMMU integration 
occurs in the DMA mapping API, which lets the bus master map/unmap memory 
regions for DMA. The DMA mapping API itself doesn't expose any underlying 
device (when no IOMMU is used there's no underlying device to be exposed), so 
the bus master can't take a PM reference on the IOMMU device neither directly 
nor indirectly at the moment.

The DMA mapping API is not request-based, so we can't rely on requests to 
manage the IOMMU power. There's a concept of mappings being created and torn 
down, where no memory access can happen without a mapping. A first step would 
be to keep the IOMMU powered on while mappings exist. However, as creating a 
mapping can be expensive, devices usually keep mappings around even when they 
don't need to access memory.

This could be solved pretty easily (at least in my mind, coding a solution 
would likely reveal issues) by extending the DMA mapping API, but what I'm 
wondering is whether that ad-hoc solution is the right way to go, or if 
something more generic could be useful. I don't think this falls in the same 
PM dependency category as the problem below, but it might still benefit from a 
more generic solution than just a DMA mapping API extension. If nobody can see 
a real added value here I would be fine with just extending the DMA mapping 
API.

> > 2. Composite devices
> > 
> > I'll take an embedded camera devices as an example as that's the case I
> > know better, but the same problem occurs on the display side as well.
> > 
> > Camera devices on embedded systems are usually made of a camera interface
> > inside an SoC (possibly split into several IP cores, such as a CSI -
> > Camera Serial Interface - receiver and a backend) and one or more external
> > devices, such as sensors, flash controller, lens controller or sometimes
> > dedicated video processing accelerators.
> > 
> > The external devices are most of the time controlled through I2C (SPI is
> > an option as well, the exact interface doesn't matter much). Those that
> > handle video data streams (sensor, video processor) use dedicated parallel
> > or high speed serial busses.
> > 
> > Most of the external devices require an input clock. The clock can be
> > fixed (easy), provided by a dedicated chip or IP core in the SoC (easy as
> > well), sometimes by the SoC camera interface or even by one of the other
> > external devices (for instance the lens controller could be clocked by the
> > pixel clock output by the sensor - that's a bit far-fetched - or, more
> > boring but equally annoying, I've seen a camera interface in an SoC that
> > required the pixel clock output by the sensor to be running in order to
> > complete its reset sequence).
> > 
> > On OMAP3 systems implementing a camera the image sensor is usually
> > supplied with a clock output by the ISP (Image Signal Processor, the
> > camera interface). When resuming the system from suspend (assuming the ISP
> > was capturing video when the system got suspended), it's important to
> > restart the ISP first and only then restart the sensor. To ensure that the
> > order is followed the ISP driver resume path first restarts the ISP and
> > then calls the sensor driver to start the video stream. The sensor driver
> > will need to send I2C messages to the device in order to start it, which
> > requires the I2C controller to be resumed. As the ISP is a platform
> > device at the same level as the I2C controller, that ordering is not
> > guaranteed.
> 
> As you likely already know, at least on OMAP, the I2C ordering would
> work just fine because the I2C driver is (what I like to call) runtime
> PM centric.  IOW, it doesn't really implement suspend/resume, instead it
> only does runtime PM "on demand" on a per-xfer basis.  That means that
> the I2C driver can be used anytime during the [runtime] suspend/resume
> of any other device without any ordering problems because it's activated
> on demand.

That's nice. As long as all devices up the chain can work that way (if the bus 
the I2C master sits on is suspended, we would just be moving the problem one 
square up) that should fix at least part of the problem

> Extending this same "runtime PM centric" view of the world to the other
> devices, I think that the runtime PM reference counting invovled when
> all the components are using runtime PM would solve this problem.
> 
> (I realize that this I2C solution doesn't solve the more general "resume
> ISP before sensor" problem though, but with better modeling, I think it
> can.  More on that below...)
> 
> > Furthermore, if the sensor is resumed first, it might try to access the
> > device, which requires the clock output by the ISP to be available, and
> > thus requires the ISP to be resumed. To solve this problem the ISP driver
> > only restarts the clocks in its PM resume callback, and restarts the
> > video stream (following the sequence described above) in its PM complete
> > callback.
>
> For most devices, input clocks are modeled by the clock framework (or
> managed by the SoC's runtime PM core), and therefore, a pm_runtime_get()
> (or possibly an explict clk_enable()) is used to ensure the input clock
> is running.  In this external device example, it sounds to me like the
> sensor driver has no knowledge of its input clock so it has to rely on
> some other layer to resume things in the right order for correct
> functionality.
> 
> Maybe I'm wrong here (likely, since I haven't looked at the code, and am
> admittedly very ignorant of the camera and display subsystems) but it
> sounds to me like what's missing is the sensor driver having knowledge
> of it's input clock and/or a way for it to request it's input clock to
> be enabled (e.g. clk_get/clk_enable.)

I'm glad that you point out likely being wrong yourself, as you are ;-) The 
sensor driver manages the sensor input clock explicitly through CCF (or at 
least it should, not all drivers do their homework properly, but that's just a 
matter of fixing them), so it can enable/disable the clock when needed. If the 
clock provider driver becomes runtime PM centric then part of the problem 
would be fixed.

> Alternatively, what would proably be even better would be that the
> sensor driver has a reference to the actual device that provides its
> input clock (possibly via a DT phandle?) so that the sensor driver can
> simply do a pm_runtime_get() on the device providing the clock.

Isn't it better for the sensor DT node to reference its input clock through 
the clocks property and enable/disable the clock on demand instead of 
explicitly calling pm_runtime_(get|put) on the clock provider device ?

> > When adding more external devices to the mix the problem just becomes more
> > complex, especially when the devices are chained (for instance sensor ->
> > video processor -> ISP). The problem is similar on the display side,
> > possibly with a different resume ordering (it should be noted that the
> > external devices vs. internal device ordering might vary even inside the
> > same class of devices - camera or display).
> 
> IMO, I still think that properly modeling the device dependenies
> combined with a "runtime PM centric" view of suspend/resume should allow
> the dependencies to be handled correctly for system suspend/resume and
> runtime PM.

I definitely need to give this a bit more thought. I agree that it would 
likely solve part of the issue, but I'm not sure whether the rest is solvable 
with the infrastructure we have now.

> I think what complicates things here is not the PM specifics but
> probably the fact that the device hierarchy (and dependencies) may be
> dynamic depending on many factors like which sensors are in use,
> post-processing, etc. etc.
> 
> Above, I suggested possibly using DT phandles to model these non
> parent/child relationships.  That's all fine if the dependencies are not
> changing, but if they are dynamic, we'll probably need something
> different.

They can be dynamic, yes. However, we already model the video data streams 
dependencies using phandles in the V4L2 bindings, so the required information 
is there. It would thus "just" be a matter of orchestrating all the involved 
components. If we go the runtime PM way the problem might be simplified, but 
as Ulf Hansson mentioned interactions between runtime PM and system 
suspend/resume need to be taken care of.

> At least for starters though, static dependencies like this should be
> (relatively) easy to model in DT and combined with runtime PM
> refcounding on the dependencies, should be able to address the problem.

-- 
Regards,

Laurent Pinchart
