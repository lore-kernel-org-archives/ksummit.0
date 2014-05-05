Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C5F46995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 11:31:17 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1C01B20224
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 11:31:16 +0000 (UTC)
Message-ID: <1399289464.20388.57.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Date: Mon, 05 May 2014 21:31:04 +1000
In-Reply-To: <1762614.9EREcPdfhF@vostro.rjw.lan>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1753987.hbb65qFWcl@vostro.rjw.lan> <1399279435.20388.36.camel@pasglop>
	<1762614.9EREcPdfhF@vostro.rjw.lan>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Mon, 2014-05-05 at 13:32 +0200, Rafael J. Wysocki wrote:
> The interpretation - yes, the translation - not necessarily.  By putting
> the translation part into drivers we'll duplicate a lot of code used for
> that.  In my opinion there needs to be a layer doing the translation
> automatically.

I'm afraid I don't understand. How can you do the translation
automatically if you have fundamentally different representation of
device-specific concepts ?

> > Also if the bindings evolve, you just created a 3rd way dependency.
> > Instead of just having to deal with DT/ACPI binding version vs. driver
> > version, we now have to also handle quirk versioning.
> 
> The bindings should not depend on the translation.  In the end the bindings
> are what the driver will ask for.  If it asks for an integer property called
> "fred", for example, it should get that property from the upper layer
> regardless of the firmware interface used on that platform (if the property
> is there, of course).

Except that the DT will have something like ibm,fred as a 32-bit cell
and ACPI will have it named subtly differently in a different format and
thing will not be consistent accross devices, bindings or even FW
variants.

> Otherwise every driver has to know about all of the possible firmware interfaces
> that can be used with it and may I call that suboptimal?

Well as I said, it depends what we are talking about here. For well
defined resources such as MMIO regions, interrupts, and we might
possibly manage to classify things like GPIO, etc... in that bucket, yes
we can most definitely find a common ground.

However in that case it's less likely to be a "translation" from one
representation to another than it is to be the core interpreting both
representation and turning them into something linux specific such as
struct resource or higher level representations of linkage between
subsystems.

But then there's everything else ... The various device specific
properties which *are* going to be represented differently left right
and center, the buggy firmwares with bad ACPI tables or bad device-tree,
the representation for some new linkage to a subsytem that doesn't have
stable bindings yet, etc...

In the end, it's an evolutionary process. That stuff starts in the
drivers. If enough drivers do the same thing for a given category of
"properties" (in the generic meaning of the word, not specifically a
device-tree prop), then we can move that part into the core, either in
the form of helpers, or pre-parsing into some new type of struct
resource or whatever else match.

It's time and experience that will tell us what works. There is only so
much we can "design" for when what we're going to deal with is vendor
firwmare mostly developed behind closed doors.

>   With two of them on
> the table it would be workable I guess, but what if someone invents a *third*
> firmware interface to use with device drivers?  Are we going to change all of
> them, then?

Yes. Though the odds of that happening are fairly low at this point.

Ben.
