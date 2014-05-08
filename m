Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1FA7F4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 23:59:29 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 3087F1F8D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 May 2014 23:59:27 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 08 May 2014 02:16:07 +0200
Message-ID: <11405760.gZcH7KrxyI@vostro.rjw.lan>
In-Reply-To: <11391971.y9GOPHmK72@wuerfel>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1560013.xlOCHMZ3P0@vostro.rjw.lan> <11391971.y9GOPHmK72@wuerfel>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

On Tuesday, May 06, 2014 03:35:41 PM Arnd Bergmann wrote:
> On Tuesday 06 May 2014 14:18:56 Rafael J. Wysocki wrote:
> > On Monday, May 05, 2014 09:31:04 PM Benjamin Herrenschmidt wrote:
> > > On Mon, 2014-05-05 at 13:32 +0200, Rafael J. Wysocki wrote:
> > > > The interpretation - yes, the translation - not necessarily.  By putting
> > > > the translation part into drivers we'll duplicate a lot of code used for
> > > > that.  In my opinion there needs to be a layer doing the translation
> > > > automatically.
> > > 
> > > I'm afraid I don't understand. How can you do the translation
> > > automatically if you have fundamentally different representation of
> > > device-specific concepts ?
> > 
> > I'm not entirely sure how fundamentally different it is to be honest, but in
> > any case I'm talking about the situation in which the hardware is the same
> > and the driver is the same, only the firmware interface is different.  In
> > that case either the firmware supplies the information the driver needs, or
> > it doesn't (and as long as the information is supplied, the format doesn't
> > really matter, because it only is a matter of translation).
> 
> One example for something that is fundamentally different between an
> embedded system using DT and any ACPI system is how a PCI(e) host bridge
> gets treated, we are currently having long discussions about this elsewhere.

Well, that's rather an extreme example. :-)

The PCI host bridge is also special, because there already is an ACPI drvier
for it, so that is not a case when we have a driver using DTs and would
like to modify it to add ACPI-specific handling.  This one is a different
problem.

> With ACPI (or a server running OF for that matter), you assume that the
> PCI host is operational and all buses are fully probed and then you
> have methods for doing hotplugging, you just look at the device that
> are already initialized by the firmware.
> 
> With embedded systems, you (in general, some steps may get skipped
> in practice) go through a lot more steps:
> - detect the presence of the host bridge device
> - enable clocks, voltages, phys, resets, etc.
> - set up inbound and outbound MMIO and PIO address translation windows
> - perform a full bus scan and assign bus and device resources
> 
> We probably woulnd't go through that hassle on ACPI systems. I think
> we shouldn't attempt any translation here, and keep the code completely
> separate, with the common parts being handled by the PCI core as we
> do today.

I agree.

> An example about a subsystem where translate complex information
> from both DT and ACPI into a common format is the dmaengine: We can
> have references to dma channels in completely incompatible ways
> but still use the same dma_request_slave_channel() interface for
> both. The ACPI path currently is lacking a bit (e.g. there is no
> way to specify the channel name in ACPI, so the code makes
> assumptions that don't hold true in general), but that's fixable.
> 
> I assume we will see more of the second kind in the future, and this
> would be limited to embedded systems on both ACPI and DT, since you
> shouldn't see dma slave devices on general purpose systems with
> either.
> 
> > Bottom line: I'd like to avoid modifying drivers that use the of_ interface
> > today if possible.  Instead, I'd prefer to modify the firmware layer so that
> > those drivers can get what they ask for regardless of what firmware interface
> > the platform is using.
> 
> Looking at the most trivial example:
> 
> bool of_property_read_bool(const struct device_node *np,                                       				    const char *propname);
> 
> We should definitely be able to have an interface like this for
> ACPI, but you don't have a 'struct device_node' pointer then.
> We can add a new
> 
> bool dev_property_read_bool(const struct device *dev,
>                             const char *propname);
> 
> that handles both, but then you have to change every driver
> that is already using of_property_read_bool() and that can
> get used with ACPI.

Yes, but that's not a very difficult change to make, arguably.

> An advantage of the dev_property_read_bool()
> interface however is that it would also work for platform
> devices that are created in platform code using
> platform_device_register_full() or similar if we add a way
> to define simple properties in C code. That would also simplify
> a lot of drivers that use both (simple) platform_data and DT
> today.

Yes.

Thanks!


-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
