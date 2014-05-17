Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D65CF70A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 02:13:01 +0000 (UTC)
Received: from mail-pb0-f54.google.com (mail-pb0-f54.google.com
	[209.85.160.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D6E8D20114
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 02:13:00 +0000 (UTC)
Received: by mail-pb0-f54.google.com with SMTP id jt11so3355879pbb.27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 19:13:00 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
Message-ID: <1400291694.9575.63.camel@wasp-deb.dvhart.com>
From: Darren Vincent Hart <darren@dvhart.com>
To: Olof Johansson <olof@lixom.net>
Date: Fri, 16 May 2014 18:54:54 -0700
In-Reply-To: <20140504171807.GA4418@quad.lixom.net>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan> <6728604.hICTKAEWzt@wuerfel>
	<20140504111436.GC15180@arm.com> <20140504171807.GA4418@quad.lixom.net>
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

On Sun, 2014-05-04 at 10:18 -0700, Olof Johansson wrote:

...


> Intel, on the other hand, are already shipping this hardware, and have
> a platforms to do the work on (Minnowboard and Galieo, for example).
> 
> So, to address Arnd's original question: 
> 
> Yes, it could make more sense to translate the data to a common
> format and use the existing accessors for that data format, instead
> of reinventing the accessors and still needing to represent the data

In my opinion, the common dev_get_property() interface which calls the
appropriate firmware accessor function makes the most sense. Creating
another intermediate format which we then have to make into something
useful (like pdata) strikes me as unnecessary and likely limiting. 

> some way. I think it depends on how some of the other things develop --
> I don't know enough about what Darren's current approach is, for example,
> to tell if it would be easier to do it that way.

Right, so let me give a trivial example indicating what this looks like.

In ASL (DSDT that ships with the board, or an SSDT that we add after the
fact - another discussion on how to integrate that at boot time, table
that for now), under the Device objection, you have a named object (not
a method) that provides a Package in a known format, something like:

Package () {
  Package (2) { "label", "foo" },
  Package (2) { "value", 1}
  Package (2) { "devs_indices", Package { _SB.DEV1, 1, _SB.DEV2, 0 }
}

NOTE: I've pared off some implementation detail above just to focus on
what's relevant to this discussion. We're in a mad rush right now
between working group meetings, writing documentation to explain all
this, and discussing things here while we have people's attention. All
important, all time sensitive. I apologize for not just having a
complete wiki page to point everyone to - but we'll have something a lot
more concrete *very* shortly.

When the platform driver discovers pdata is NULL and that there is
firmware to be probed (dev exists), it starts populating a pdata
structure with calls like:

pdata.label = dev_get_property_string("label");

This would go through ACPICA to get the property on this device, but
could also go through OF on a different system, without any change to
the driver.


> 
> Also, even if we do a common API with different backends, there will
> need to be some knowledge somewhere about custom bindings and what they mean,
> how to translate them and how the different descriptions correlate.


Of course there will be exceptions in the way certain things are
represented in each firmware type, but we already have accessors per
firmware type, so we have the groundwork to deal with those via
specific-property-type accessors.

> I personally think we're best off putting that in the drivers, instead of
> making some part of the driver core aware of a bunch of quirks/hooks for
> various devices.

Hrm, I was hoping to see it in the properties core (driver core I guess)
so we didn't have to see every driver. I suppose  we could approach this
like we do subsystems in general. If we see something repeated enough,
we abstract it and move it down a level :-)

For example, DT and ACPI handle device references differently - but that
isn't a quirky device-specific kind of thing, it's a firmware
representation thing, and that should be abstracted away from the driver
IMO.

GPIO is another example (which is actually dependent on the phandle/ACPI
namespace difference).

Thanks,

-- 
Darren
