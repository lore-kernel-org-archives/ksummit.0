Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3DAB995A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 02:51:04 +0000 (UTC)
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 76C911F8A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 02:51:03 +0000 (UTC)
Received: by mail-pa0-f52.google.com with SMTP id fa1so3294119pad.25
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 19:51:03 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
Message-ID: <1400293976.9575.87.camel@wasp-deb.dvhart.com>
From: Darren Vincent Hart <darren@dvhart.com>
To: Benjamin Herrenschmidt <benh@au1.ibm.com>
Date: Fri, 16 May 2014 19:32:56 -0700
In-Reply-To: <1399279435.20388.36.camel@pasglop>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140504111436.GC15180@arm.com> <20140504171807.GA4418@quad.lixom.net>
	<1753987.hbb65qFWcl@vostro.rjw.lan> <1399279435.20388.36.camel@pasglop>
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

On Mon, 2014-05-05 at 18:43 +1000, Benjamin Herrenschmidt wrote:
> On Sun, 2014-05-04 at 23:33 +0200, Rafael J. Wysocki wrote:
> > 
> > 
> > But we have such quirks for some bus types already, like PCI and PNP.
> 
> And they suck big time. They duplicate definitions from the driver,
> they get missed at grep time, they bit rot, etc...
> 
> There are a few cases where that's justified simply because the driver
> can be a module but the quirk needs to run early and always, but mostly
> these quirks are about working around HW bugs that would otherwise cause
> the system to misbehave even in absence of the driver.
> 
> For example, bad class code in bridges, BAR issues, etc...
> 
> Generally speaking though, quirks like that are a bad idea and in this
> case, totally unjustified since the code performing whatever translation
> is necessary (or interpretation) is entirely specific to the driver
> anyway.
> 
> Also if the bindings evolve, you just created a 3rd way dependency.
> Instead of just having to deal with DT/ACPI binding version vs. driver
> version, we now have to also handle quirk versioning.

Hrm, I think I might have been answering only half of the question
earlier, and I might be confused about what Arnd, Olof, and you are
saying here.

I think the scope is larger than the specific problem I have been
focused on (which is the arbitrary device properties not covered by the
irq/mmio/gpio/etc mechanisms we already have), and making that
compatible with DT bindings.

Of course DT bindings include more than those arbitrary properties, and
I think it's here where we entered this format translation discussion?
As in:

ACPI:GpioIO and DT:gpios being possibly wrapped by another
representation? That is then translated into using the gpiod framework?
If so... yeah, that doesn't appeal to me very much either :-)

I said earlier that I would like to be able to collect this information
without having to know about the underlying firmware implementation in
the driver itself, ... is this necessarily the same thing as that third
representation?

It seems to me rather than parsing gpios or GpioIO representation,
drivers could instead ask dev_get_property_gpiod("volume_up"), and get
back a gpio descriptor, which is the interface they ultimately need to
use to do anything with it anyway.

I fear I might have veered way off into the weeds here... are we talking
past eachother?

> Yes, it could make more sense to translate the data to a common
> format and use the existing accessors for that data format, instead
> of reinventing the accessors and still needing to represent the data
> some way. I think it depends on how some of the other things develop

-- 
Darren Hart
Intel Open Source Technology Center
