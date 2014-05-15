Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 350F94D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 11:48:57 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 341371FB50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 11:48:55 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mark Brown <broonie@kernel.org>
Date: Thu, 15 May 2014 14:05:43 +0200
Message-ID: <1527482.CPBrbWbyLU@vostro.rjw.lan>
In-Reply-To: <20140514130401.GC12304@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1461572.JtpPDPW8DH@vostro.rjw.lan>
	<20140514130401.GC12304@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: dvhart@dvhart.com, ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>
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

On Wednesday, May 14, 2014 02:04:01 PM Mark Brown wrote:
> 
> --7Mplw3OCI4oLNRBG
> Content-Type: text/plain; charset=us-ascii
> Content-Disposition: inline
> 
> On Tue, May 13, 2014 at 11:19:00PM +0200, Rafael J. Wysocki wrote:
> 
> > Of course, ACPI "support" can be shoehorned into a limited number of things
> > this way, but it really doesn't scale and very often the result is really
> > disgusting.  Also ACPI in its current form may not even be able to provide
> > information expected by device drivers in the first place, because ACPI
> > doesn't have means to encode that information in any sensible way today
> > (that includes clocks, voltage regulators, PWMs, pin control and even GPIOs
> > to some extent).
> 
> > If ACPI is extended so that such information can be put into the tables,
> > there is no reason why the interface for extracting it should be much different
> > from the of_ one, except that instead of calling of_get_something(device_node, ...)
> > drivers will call fw_get_something(device, ...).  And that can use the old good
> > of_ for systems with DT, so it really is a matter of getting the ACPI side of
> > things to match it.
> 
> Of course, and for all of these things other than GPIOs we already
> handle the lookups without any DT code at all in the drivers (and GPIOs
> are moving away from needing explicit code too).  Things like that just
> aren't an issue and I'd say that if we are adding new fw_ interfaces for
> resource lookup like you describe we're doing things wrong, we already
> have the idiom of looking up by device and some key which works well.

The "key" think doesn't really work in ACPI if it is a string, however.

That's a real problem, because, for example, ACPI says "I have these GPIO
connections between your device and controller X" and it gives you pin
numbers.  Now the driver (or someone else) needs to figure out which pin
is used for what.

If there's only one pin per device, all is fine, but if there are more of
them things get very ugly quite quickly.

So in "native" ACPI something like gpiod_get() cannot really be implemented
to use con_id and if you look at acpi_find_gpio() (the one in gpiolib.c),
you'll see that it actually only uses the index for this very reason.

It may look good on the surface, but if you go deeper into things, it really
doesn't.

Same goes for similar "resources".

> It gets more interesting with compound devices like multimedia; there's
> not really a clear general model for handling these in kernel in the
> first place plus also some ongoing discussion about how they are best
> represented in DT.  Those might well fall into the too hard to handle
> generically category though.

Well, that's hard to say wihtout looking at specific examples.

If something proves too hard to be addressed in a common fashion, which is
not unlikely, we'll need to find some other way to address it, but as long
as we *can* do things in common ways, we should do that in my opinion.

> > And if you're asking why things are currently done in different ways, the
> > reason is simple: ACPI has not been extended yet and the fw_get_something(device, ...)
> > interface doesn't exist, so people have to use what is available today and there are
> > products to support in the meatime.
> 
> Not really, the issue is more about the model and applies just as much
> to things like device specific properties as it does to resource lookup
> (to be honest resource lookup is the easiest thing here - it's not a
> relevant issue with the in tree stuff).
> 
> Active ACPI systems have the idea that the firmware is going to go and
> interact with the hardware directly itself, one of the goals being to
> allow the hardware to be extended in ways that the OS would otherwise
> need to be modified to support.

I agree.

Nevertheless, it often turns out that the OS needs to interact with that
hardware too for various reasons.

> In contrast FDT and the new passive
> ACPI model you are describing just provide data and leave everything up
> to the OS in terms of interacting with the hardware.  What's tasteful
> and what system integrators expect to work with both seem to vary
> between the two - one of the most common I'm seeing is that with active
> firmware configuration written into the device on startup may actually
> be real and worth paying attention to while with passive firmware it's
> usually best to ignore the device state.

Again, I agree.  The PCI host bridge is actually a good example of that.

> Some of what's going on is limitations in current ACPI and it does make
> sense to address those in as generic a fashion as possible but it isn't
> clear to me that all ACPI users want to have something that looks like
> DT.

For things that are not covered by ACPI either directly or indirectly today,
that seems to be the only approach feasible in a reasonable time frame.

For things that are covered by ACPI that is less clear.  Even in that case,
though, if there's a binding (defined as a set of keys and value data types
associated with them) that a driver expects to be used, it makes a little
sense to create a second binding for it just for the purpose of using it with
a different firmware interface.

Rafael
