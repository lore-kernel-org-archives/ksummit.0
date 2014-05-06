Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 721C5AF9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 12:02:22 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 67D1720114
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 12:02:19 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Date: Tue, 06 May 2014 14:18:56 +0200
Message-ID: <1560013.xlOCHMZ3P0@vostro.rjw.lan>
In-Reply-To: <1399289464.20388.57.camel@pasglop>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1762614.9EREcPdfhF@vostro.rjw.lan>
	<1399289464.20388.57.camel@pasglop>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"dvhart@dvhart.com" <dvhart@dvhart.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Monday, May 05, 2014 09:31:04 PM Benjamin Herrenschmidt wrote:
> On Mon, 2014-05-05 at 13:32 +0200, Rafael J. Wysocki wrote:
> > The interpretation - yes, the translation - not necessarily.  By putting
> > the translation part into drivers we'll duplicate a lot of code used for
> > that.  In my opinion there needs to be a layer doing the translation
> > automatically.
> 
> I'm afraid I don't understand. How can you do the translation
> automatically if you have fundamentally different representation of
> device-specific concepts ?

I'm not entirely sure how fundamentally different it is to be honest, but in
any case I'm talking about the situation in which the hardware is the same
and the driver is the same, only the firmware interface is different.  In
that case either the firmware supplies the information the driver needs, or
it doesn't (and as long as the information is supplied, the format doesn't
really matter, because it only is a matter of translation).

Now, the problem, as I see it, is that in many cases ACPI actually doesn't
supply information that is expected by drivers.  There may be two reasons
for that.

The first reason is when ACPI provides methods to be used for manipulating
things that aren't explicitly exposed.  I *think* this only is the case in
the power management area, where clocks and voltage regulators are often
hidden behind ACPI power resources and methods to switch device power states.
In this particular case, however, drivers are not supposed to execute those
methods and operate ACPI power resources directly anyway (there are other
layers of code taking care of that), so they simply need not touch things
that cannot be found.

The second reason is when ACPI doesn't have means to provide the expected
information to drivers and *that* is a real problem in my view.  To address
it, we might try to extend the ACPI spec to cover all of the things that
are covered by driver bindings for Device Trees, but that is impractical
for two reasons.  First, it would be trying to open a door that's already
opened.  Second, it wouldn't cover future additions to (or generally future
modifications of) those bindings.  Thus the only viable approach is to use
those bindings directly and put them into the ACPI tables (or generally into
the ACPI namespace) somehow.

Of course, there are obstacles to that.  First, ACPI already has its own ways
to describe things like GPIOs, I2C/SPI connections etc. which are not
compatible with the existing DT bindings.  That may be addressed by adding
extra "bindings" to map the information that ACPI already provides into what
drivers expect and adding some extra library code to process that.  Second,
vendors may not add the DT-style information to the ACPI tables they ship
(for example, because the machines in question ship with Windows and the
vendor doesn't care about Linux on them), which may be addressed by allowing
ACPI definition block overlays to be used to provide that information and
add it to the ACPI namespace during initialization.  In principle, such
overlays may be supplied along with the kernel and loaded during boot (kind
of like dts files).

Bottom line: I'd like to avoid modifying drivers that use the of_ interface
today if possible.  Instead, I'd prefer to modify the firmware layer so that
those drivers can get what they ask for regardless of what firmware interface
the platform is using.

> > > Also if the bindings evolve, you just created a 3rd way dependency.
> > > Instead of just having to deal with DT/ACPI binding version vs. driver
> > > version, we now have to also handle quirk versioning.
> > 
> > The bindings should not depend on the translation.  In the end the bindings
> > are what the driver will ask for.  If it asks for an integer property called
> > "fred", for example, it should get that property from the upper layer
> > regardless of the firmware interface used on that platform (if the property
> > is there, of course).
> 
> Except that the DT will have something like ibm,fred as a 32-bit cell
> and ACPI will have it named subtly differently in a different format and
> thing will not be consistent accross devices, bindings or even FW
> variants.
> 
> > Otherwise every driver has to know about all of the possible firmware interfaces
> > that can be used with it and may I call that suboptimal?
> 
> Well as I said, it depends what we are talking about here. For well
> defined resources such as MMIO regions, interrupts, and we might
> possibly manage to classify things like GPIO, etc... in that bucket, yes
> we can most definitely find a common ground.
> 
> However in that case it's less likely to be a "translation" from one
> representation to another than it is to be the core interpreting both
> representation and turning them into something linux specific such as
> struct resource or higher level representations of linkage between
> subsystems.
> 
> But then there's everything else ... The various device specific
> properties which *are* going to be represented differently left right
> and center, the buggy firmwares with bad ACPI tables or bad device-tree,
> the representation for some new linkage to a subsytem that doesn't have
> stable bindings yet, etc...
> 
> In the end, it's an evolutionary process. That stuff starts in the
> drivers. If enough drivers do the same thing for a given category of
> "properties" (in the generic meaning of the word, not specifically a
> device-tree prop), then we can move that part into the core, either in
> the form of helpers, or pre-parsing into some new type of struct
> resource or whatever else match.
> 
> It's time and experience that will tell us what works. There is only so
> much we can "design" for when what we're going to deal with is vendor
> firwmare mostly developed behind closed doors.

I agree.  That's why I think that the firmware layer has to be able to
evolve along with everything else and the driver bindings should define
what information the firmware is expected to provide.

Thanks!

-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
