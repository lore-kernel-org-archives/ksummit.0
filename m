Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8D23848E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 23:03:45 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9229620114
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 23:03:44 +0000 (UTC)
Message-ID: <1400367794.24420.23.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Darren Vincent Hart <darren@dvhart.com>
Date: Sun, 18 May 2014 09:03:14 +1000
In-Reply-To: <1400291694.9575.63.camel@wasp-deb.dvhart.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan> <6728604.hICTKAEWzt@wuerfel>
	<20140504111436.GC15180@arm.com> <20140504171807.GA4418@quad.lixom.net>
	<1400291694.9575.63.camel@wasp-deb.dvhart.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
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

On Fri, 2014-05-16 at 18:54 -0700, Darren Vincent Hart wrote:

> In my opinion, the common dev_get_property() interface which calls the
> appropriate firmware accessor function makes the most sense. Creating
> another intermediate format which we then have to make into something
> useful (like pdata) strikes me as unnecessary and likely limiting. 

So in the end it will really depend on whether people are good enough to
use the same property/value "names" and format accross the
representations.

So yes, maybe something like dev_get_property() would work fine for
most cases, which would be great. And for the always necessary quirks
where for example the ACPI variant used a wrong spelling or the DT
variant used a different size or something, the driver can either
openly call different of and acpi variants or we could have quirks in
the driver itself... ie, a pointer in struct device to a quirk table,
possibly based on hash of the name for fast lookup. But let's wait
for some real implementations to see how necessary that really is.

Ben.

> Right, so let me give a trivial example indicating what this looks like.
> 
> In ASL (DSDT that ships with the board, or an SSDT that we add after the
> fact - another discussion on how to integrate that at boot time, table
> that for now), under the Device objection, you have a named object (not
> a method) that provides a Package in a known format, something like:
> 
> Package () {
>   Package (2) { "label", "foo" },
>   Package (2) { "value", 1}
>   Package (2) { "devs_indices", Package { _SB.DEV1, 1, _SB.DEV2, 0 }
> }
> 
> NOTE: I've pared off some implementation detail above just to focus on
> what's relevant to this discussion. We're in a mad rush right now
> between working group meetings, writing documentation to explain all
> this, and discussing things here while we have people's attention. All
> important, all time sensitive. I apologize for not just having a
> complete wiki page to point everyone to - but we'll have something a lot
> more concrete *very* shortly.
> 
> When the platform driver discovers pdata is NULL and that there is
> firmware to be probed (dev exists), it starts populating a pdata
> structure with calls like:
> 
> pdata.label = dev_get_property_string("label");
>
> This would go through ACPICA to get the property on this device, but
> could also go through OF on a different system, without any change to
> the driver.

Very minor detail ... do we return the const string pointer or do we
return a copy of it that must be freed ? The latter give more latitude
for quirks or fancy ways to retrieve it in case it's not readily
available but at the expense of more driver complexity and resulting
mistakes causing leaks.

> Of course there will be exceptions in the way certain things are
> represented in each firmware type, but we already have accessors per
> firmware type, so we have the groundwork to deal with those via
> specific-property-type accessors.

Yes.

> > I personally think we're best off putting that in the drivers, instead of
> > making some part of the driver core aware of a bunch of quirks/hooks for
> > various devices.
> 
> Hrm, I was hoping to see it in the properties core (driver core I guess)
> so we didn't have to see every driver. I suppose  we could approach this
> like we do subsystems in general. If we see something repeated enough,
> we abstract it and move it down a level :-)

:-)

> For example, DT and ACPI handle device references differently - but that
> isn't a quirky device-specific kind of thing, it's a firmware
> representation thing, and that should be abstracted away from the driver
> IMO.

Yes. I agree. I was more thinking of "oops, this thing is an int on OF
and a string on ACPI" kind of accidental difference in device specific
properties, or spelling mistakes in property names (_ vs - etc...)

> GPIO is another example (which is actually dependent on the phandle/ACPI
> namespace difference).

Yes, anything that is generic such as resources, references etc...
should be handled there. What is related to a given subsystem (and
common accross drivers of that subsystem) should be handled at the
subsystem level of course, so GPIO fits that category.

Cheers,
Ben.
