Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C083095A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 03:16:03 +0000 (UTC)
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1C09B1F9D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 03:16:03 +0000 (UTC)
Received: by mail-pa0-f45.google.com with SMTP id ey11so3321186pad.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 20:16:02 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
Message-ID: <1400295472.9575.101.camel@wasp-deb.dvhart.com>
From: Darren Vincent Hart <darren@dvhart.com>
To: Olof Johansson <olof@lixom.net>
Date: Fri, 16 May 2014 19:57:52 -0700
In-Reply-To: <20140513211442.GB28268@quad.lixom.net>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1399289464.20388.57.camel@pasglop> <1560013.xlOCHMZ3P0@vostro.rjw.lan>
	<11391971.y9GOPHmK72@wuerfel> <20140513211442.GB28268@quad.lixom.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
 etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2014-05-13 at 14:14 -0700, Olof Johansson wrote:
> On Tue, May 06, 2014 at 03:35:41PM +0200, Arnd Bergmann wrote:
> > On Tuesday 06 May 2014 14:18:56 Rafael J. Wysocki wrote:
> > > On Monday, May 05, 2014 09:31:04 PM Benjamin Herrenschmidt wrote:
> > > > On Mon, 2014-05-05 at 13:32 +0200, Rafael J. Wysocki wrote:
> > > > > The interpretation - yes, the translation - not necessarily.  By putting
> > > > > the translation part into drivers we'll duplicate a lot of code used for
> > > > > that.  In my opinion there needs to be a layer doing the translation
> > > > > automatically.
> > > > 
> > > > I'm afraid I don't understand. How can you do the translation
> > > > automatically if you have fundamentally different representation of
> > > > device-specific concepts ?
> > > 
> > > I'm not entirely sure how fundamentally different it is to be honest, but in
> > > any case I'm talking about the situation in which the hardware is the same
> > > and the driver is the same, only the firmware interface is different.  In
> > > that case either the firmware supplies the information the driver needs, or
> > > it doesn't (and as long as the information is supplied, the format doesn't
> > > really matter, because it only is a matter of translation).
> > 
> > One example for something that is fundamentally different between an
> > embedded system using DT and any ACPI system is how a PCI(e) host bridge
> > gets treated, we are currently having long discussions about this elsewhere.
> > 
> > With ACPI (or a server running OF for that matter), you assume that the
> > PCI host is operational and all buses are fully probed and then you
> > have methods for doing hotplugging, you just look at the device that
> > are already initialized by the firmware.
> > 
> > With embedded systems, you (in general, some steps may get skipped
> > in practice) go through a lot more steps:
> > - detect the presence of the host bridge device
> > - enable clocks, voltages, phys, resets, etc.
> > - set up inbound and outbound MMIO and PIO address translation windows
> > - perform a full bus scan and assign bus and device resources
> > 
> > We probably woulnd't go through that hassle on ACPI systems. I think
> > we shouldn't attempt any translation here, and keep the code completely
> > separate, with the common parts being handled by the PCI core as we
> > do today.
> > 
> > An example about a subsystem where translate complex information
> > from both DT and ACPI into a common format is the dmaengine: We can
> > have references to dma channels in completely incompatible ways
> > but still use the same dma_request_slave_channel() interface for
> > both. The ACPI path currently is lacking a bit (e.g. there is no
> > way to specify the channel name in ACPI, so the code makes
> > assumptions that don't hold true in general), but that's fixable.
> > 
> > I assume we will see more of the second kind in the future, and this
> > would be limited to embedded systems on both ACPI and DT, since you
> > shouldn't see dma slave devices on general purpose systems with
> > either.
> > 
> > > Bottom line: I'd like to avoid modifying drivers that use the of_ interface
> > > today if possible.  Instead, I'd prefer to modify the firmware layer so that
> > > those drivers can get what they ask for regardless of what firmware interface
> > > the platform is using.
> > 
> > Looking at the most trivial example:
> > 
> > bool of_property_read_bool(const struct device_node *np,                                       				    const char *propname);
> > 
> > We should definitely be able to have an interface like this for
> > ACPI, but you don't have a 'struct device_node' pointer then.
> > We can add a new
> > 
> > bool dev_property_read_bool(const struct device *dev,
> >                             const char *propname);
> 
> > 
> > that handles both, but then you have to change every driver
> > that is already using of_property_read_bool() and that can
> > get used with ACPI.
> 
> It's actually not that easy in practice. There's not a one-to-one
> correspondence between device tree nodes and struct devices in the
> kernel. There are many bindings that use subnodes for sections of their
> information, and so on.


This is the approach that we have prototyped and demonstrated for some
admittedly trivial examples. One gap in my original approach was how to
deal with the DT sub-nodes - or rather didn't. The latest approach uses
a 1:1 device tree node to ACPI DEVICE object (which can also be nested
inside parent DEVICE objects in much the same way) and provide
properties to these sub nodes as well.  This will at least provide us
with the ability to us the same schema with the same hiearchy.

> 
> > An advantage of the dev_property_read_bool()
> > interface however is that it would also work for platform
> > devices that are created in platform code using
> > platform_device_register_full() or similar if we add a way
> > to define simple properties in C code. That would also simplify
> > a lot of drivers that use both (simple) platform_data and DT
> > today.
> 
> I'm not a fan of this "grand unified abstraction layer". Driver writes are
> already complaining that things are too complicated with the move to device
> tree, and we're making things even more abstracted and complicated here. People
> will need to peel back even more layers to figure out what's actually going on.
> 

I guess I can't argue with that since when I first started into this I
said very much the same thing about driver code being simple - but the
APIs being complicated (vs core kernel code which tends have very simple
APIs with some pretty complicated algorithms and such).

> 
> For the truly trivial stuff, there are some quite simple ways to handle this:
> 
> 1. Make sure that anything that can be a named IORESOURCE_* is so. Which could
>    mean moving over GPIO and possibly clocks to that, and use those for lookup.

That's seems consistent with what one of our guiding principles has
been: We're looking to fill the gaps in ACPI, not replace the existing
mechanism. I will need to look into the IORESOURCE_* in more detail to
make sure I fully understand the implications.

> 
> 2. If Rafael's arguments are to be believed, that the translation should be
>    trivial and easy to do, then we might as well reuse the structures and APIs
>    that are already in the kernel. In other words, allocate a struct
>    device_node, populate it with the properties from the ACPI structure, and
>    attach it to the struct device. Then there's no need for any churn in the
>    drivers (until they need ACPI-specific tweaks, which they will all need).
> 

There is some missing context that I think is confusing this issue.
Current ACPI tables don't translate like this. The new ACPI Device
Properties stuff in the works will provide the flexibility we need to
provide the missing properties in a format which is much more trivial to
translate. That is only part of the problem though.

> 
> The real problem is the non-trivial stuff. There, I think there's no real
> alternative than to teach the drivers about both firmware interfaces.

I think it would help me a great deal to pick a driver and discuss it
specifically.

Olof - could you recommend one where you feel specific knowledge of
firmware interfaces is really unavoidable?

-- 
Darren Hart
Intel Open Source Technology Center
