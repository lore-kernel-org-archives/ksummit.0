Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6AFA72FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 12:14:31 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 7E61E20111
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 12:14:30 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 14 May 2014 14:31:18 +0200
Message-ID: <11210229.hr5qRv76HM@vostro.rjw.lan>
In-Reply-To: <4779952.HbUGmSHJeO@wuerfel>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140513211442.GB28268@quad.lixom.net>
	<4779952.HbUGmSHJeO@wuerfel>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"dvhart@dvhart.com" <dvhart@dvhart.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
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

On Wednesday, May 14, 2014 02:06:10 PM Arnd Bergmann wrote:
> On Tuesday 13 May 2014 14:14:42 Olof Johansson wrote:
> > On Tue, May 06, 2014 at 03:35:41PM +0200, Arnd Bergmann wrote:
> > > On Tuesday 06 May 2014 14:18:56 Rafael J. Wysocki wrote:
> > > 
> > > We should definitely be able to have an interface like this for
> > > ACPI, but you don't have a 'struct device_node' pointer then.
> > > We can add a new
> > > 
> > > bool dev_property_read_bool(const struct device *dev,
> > >                             const char *propname);
> > 
> > > 
> > > that handles both, but then you have to change every driver
> > > that is already using of_property_read_bool() and that can
> > > get used with ACPI.
> > 
> > It's actually not that easy in practice. There's not a one-to-one
> > correspondence between device tree nodes and struct devices in the
> > kernel. There are many bindings that use subnodes for sections of their
> > information, and so on.
> 
> I also don't think we can have a grand unified solution to the general
> problem, but doing the above would solve a lot of individual problems
> for all the simple drivers that don't use sub-nodes in DT.
> 
> I really don't see any downsides to using a common named property
> API for simple values in drivers that can.

I agree.

> Devices with sub-nodes are by definition complex to handle, and
> I think we will always have cases that are too complex to use
> a common interface. At the moment, we can share drivers that
> have only memory and irq resources, which is a significant share
> already. We can over time extend this to drivers that use strings,
> booleans, integers, or arrays of those. We can also extend it
> for things like gpios and dma-channels (both of which partly work
> already but are limited when it comes to naming) and a few other
> things.

Yes.

> > > An advantage of the dev_property_read_bool()
> > > interface however is that it would also work for platform
> > > devices that are created in platform code using
> > > platform_device_register_full() or similar if we add a way
> > > to define simple properties in C code. That would also simplify
> > > a lot of drivers that use both (simple) platform_data and DT
> > > today.
> > 
> > I'm not a fan of this "grand unified abstraction layer". Driver writes are
> > already complaining that things are too complicated with the move to device
> > tree, and we're making things even more abstracted and complicated here. People
> > will need to peel back even more layers to figure out what's actually going on.
> > 
> > 
> > For the truly trivial stuff, there are some quite simple ways to handle this:
> > 
> > 1. Make sure that anything that can be a named IORESOURCE_* is so. Which could
> >    mean moving over GPIO and possibly clocks to that, and use those for lookup.
> 
> We are actually moving away from IORESOURCE_* for things that are not
> originally handled as resources. I don't think we should reverse that
> course.
> 
> For both the examples I mentioned above (GPIO and DMA), people have in the
> past put them into resource structures with a platform specific
> interpretation. With the move to DT, we have actually broken this
> because there is no longer a global number space for them in general.
> 
> Instead, you have a device pointer and a local name that you can use
> to resolve a pointer to a structure (gpio descriptor or dma channel).
> For GPIOs, we keep the integer based API for compatibility, but it would
> be nice to move to the descriptor interface over time.
> 
> If it were not so much work, we'd probably also move away from IRQ numbers
> towards passing IRQ descriptor pointers.
> 
> The way I see things moving forward for ACPI is to add a standard way to
> name things (GPIOs, IRQs, DMAs, ...) so we can have a generic 'give me
> a pointer to the X object for this device' for each subsystem we want to
> have it for. Note that this would probably not be a combined interface
> across subsystems though.

That's my idea too.

Rafael
