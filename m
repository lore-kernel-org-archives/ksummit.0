Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4D2B770A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 02:23:44 +0000 (UTC)
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E23E11FD4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 02:23:43 +0000 (UTC)
Received: by mail-pb0-f49.google.com with SMTP id jt11so3329475pbb.22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 19:23:43 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
Message-ID: <1400292337.9575.70.camel@wasp-deb.dvhart.com>
From: Darren Vincent Hart <darren@dvhart.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Date: Fri, 16 May 2014 19:05:37 -0700
In-Reply-To: <1399519636.4161.57.camel@pasglop>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan> <6728604.hICTKAEWzt@wuerfel>
	<20140504111436.GC15180@arm.com> <20140504171807.GA4418@quad.lixom.net>
	<1399279156.20388.32.camel@pasglop>
	<1399460702.2996.89.camel@shinybook.infradead.org>
	<1399519636.4161.57.camel@pasglop>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On Thu, 2014-05-08 at 13:27 +1000, Benjamin Herrenschmidt wrote:
> On Wed, 2014-05-07 at 12:05 +0100, David Woodhouse wrote:
> > On Mon, 2014-05-05 at 18:39 +1000, Benjamin Herrenschmidt wrote:
> > > 
> > > The other option is to have both the DT representation and the ACPI
> > > representation reach the drivers and leave it to the them (the drivers) to get
> > > through two different functions at probe time to "translates" that into a
> > > "3rd" driver private one (a structure, in a way akin to the old platform data
> > > but of course completely local to the driver scope).
> > 
> > I don't like that much. For "leaf-node" device drivers, I think we're
> > better off with a simple set of "device_get_property" functions which
> > are a little more type-safe than the existing of_* ones, thus helping us
> > to deal with the details of 32-bit cells vs. ACPI integers, etc.
> 
> Fair enough. I was mostly putting all options on the table. It is still
> not completely clear on my mind how we'll get the properties from ACPI
> (via that new scheme Darren's working on ?) and how good we'll manage to
> keep the bindings in sync sufficiently to avoid a bunch of:
> 
> 	if (OF)
> 		get_property("foo"...)
> 	else
> 		get_property("bar"...)
> 
> Because of subtle differences in property names, format, content, etc...
> 

Right, we have to avoid this. I'd rather see:

get_of_pdata() and get_acpi_pdata() than a slew of if/else blocks
implementing slightly skewed schemas.


> It might end up working out ... but it's going to be a constant battle
> at least initially.
> 

For the of-capable platform devices we have today, the above doesn't
even become an option. We switch to the new API dev_get_property("foo")
and people wanting to use these drivers with ACPI WILL use that schema.
I'm talking with a few of these folks a lot lately, and they absolutely
do not want to have to special case / rewrite all these drivers. All
they will have to do is add the DEVICE and Package() to the ASL and the
driver works. So it is in their best interest NOT to fragment the
schema. 

> I'm mostly concerned here about device specific random attributes. I

Right, and this the area we're focused on with the new ACPI properties
mechanism. If ACPI already provides a specific object type, like for
GPIO, we continue to use that.

> think we all agree that the "common" stuff such as memory and irq is
> going to be translated by the core into Linux native representation.
> 
> Of course there is going to be a pile of work defining the right
> representation & translation for some of that "common" stuff in areas
> like clocks, gpios, etc...

Nodding... :-)


-- 
Darren
