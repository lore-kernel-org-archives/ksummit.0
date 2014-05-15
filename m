Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6AEB448E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 23:33:58 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 882F020117
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 23:33:57 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Date: Fri, 16 May 2014 01:34:01 +0200
Message-ID: <6546269.8BCSq47QAR@avalon>
In-Reply-To: <15562464.UYP7rKZIQt@vostro.rjw.lan>
References: <1872038.43ncqEMWSx@avalon> <11117951.ql3xek1vCB@vostro.rjw.lan>
	<15562464.UYP7rKZIQt@vostro.rjw.lan>
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

On Wednesday 14 May 2014 00:34:56 Rafael J. Wysocki wrote:
> On Wednesday, May 14, 2014 12:27:47 AM Rafael J. Wysocki wrote:
> > On Monday, May 12, 2014 11:07:29 PM Mark Brown wrote:
> > > On Mon, May 12, 2014 at 11:16:57PM +0200, Tomasz Figa wrote:
> > > > On 12.05.2014 22:31, Mark Brown wrote:
> > > > > It also solves the system suspend dependencies.  Why don't the
> > > > > runtime PM dependencies just work with reference counting?
> > > > 
> > > > Runtime PM dependencies work with reference counting just fine, but
> > > > only for topologies matching Linux driver model, e.g. devices with
> > > > exactly one device they depend on, e.g. SPI controller and SPI devices
> > > > on the bus driven by it. Add there an IOMMU and other various strange
> > > > things that should be transparent to the drivers and it stops working.
> > > 
> > > There's no reason why runtime PM references have to follow the topology
> > > - you do get a default reference count up to any parent (though we break
> > > that sometimes, as is the case with SPI controllers being suspended even
> > > though the devices below them are active) but there's nothing stopping
> > > references being taken outside the topology.
> > 
> > Precisely.
> 
> BTW, I guess that the problem is resume and specifically the fact that if
> a child device resumes, the parent will also resume automatically, but the
> other devices the child may depend on will not (the child's resume may need
> to resume them directly).
> 
> But I'm not sure why that is a problem, so can anyone please share some
> details?

Here are two real life examples.

1. IOMMU and bus master

Bus master devices connected to an IOMMU need the IOMMU to be powered on in 
order to access memory. In order to save power the IOMMU should of course be 
powered off as much as possible.

The tricky part here comes from the fact that the IOMMU is hidden behind the 
DMA API. The bus master driver can't manage the IOMMU power state eplicitly by 
taking/releasing references to the IOMMU device.

This could easily be solved in an ad-hoc fashion by extending the DMA mapping 
API, but I'm wondering whether similar issues wouldn't benefit from a common 
solution (I'm not sure yet what all the similar issues are, hence the topic 
proposal to try and gather use cases).

2. Composite devices

I'll take an embedded camera devices as an example as that's the case I know 
better, but the same problem occurs on the display side as well.

Camera devices on embedded systems are usually made of a camera interface 
inside an SoC (possibly split into several IP cores, such as a CSI - Camera 
Serial Interface - receiver and a backend) and one or more external devices, 
such as sensors, flash controller, lens controller or sometimes dedicated 
video processing accelerators.

The external devices are most of the time controlled through I2C (SPI is an 
option as well, the exact interface doesn't matter much). Those that handle 
video data streams (sensor, video processor) use dedicated parallel or high 
speed serial busses.

Most of the external devices require an input clock. The clock can be fixed 
(easy), provided by a dedicated chip or IP core in the SoC (easy as well), 
sometimes by the SoC camera interface or even by one of the other external 
devices (for instance the lens controller could be clocked by the pixel clock 
output by the sensor - that's a bit far-fetched - or, more boring but equally 
annoying, I've seen a camera interface in an SoC that required the pixel clock 
output by the sensor to be running in order to complete its reset sequence).

On OMAP3 systems implementing a camera the image sensor is usually supplied 
with a clock output by the ISP (Image Signal Processor, the camera interface). 
When resuming the system from suspend (assuming the ISP was capturing video 
when the system got suspended), it's important to restart the ISP first and 
only then restart the sensor. To ensure that the order is followed the ISP 
driver resume path first restarts the ISP and then calls the sensor driver to 
start the video stream. The sensor driver will need to send I2C messages to 
the device in order to start it, which requires the I2C controller to be 
resumed. As the ISP is a platform device at the same level as the I2C 
controller, that ordering is not guaranteed.

Furthermore, if the sensor is resumed first, it might try to access the 
device, which requires the clock output by the ISP to be available, and thus 
requires the ISP to be resumed. To solve this problem the ISP driver only 
restarts the clocks in its PM resume callback, and restarts the video stream 
(following the sequence described above) in its PM complete callback.

When adding more external devices to the mix the problem just becomes more 
complex, especially when the devices are chained (for instance sensor -> video 
processor -> ISP). The problem is similar on the display side, possibly with a 
different resume ordering (it should be noted that the external devices vs. 
internal device ordering might vary even inside the same class of devices - 
camera or display).

-- 
Regards,

Laurent Pinchart
