Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6319F3C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 16:41:57 +0000 (UTC)
Received: from mail-pb0-f45.google.com (mail-pb0-f45.google.com
	[209.85.160.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CC59B1F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 16:41:56 +0000 (UTC)
Received: by mail-pb0-f45.google.com with SMTP id um1so3950545pbc.18
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 09:41:56 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
Message-ID: <1400309542.9575.203.camel@wasp-deb.dvhart.com>
From: Darren Vincent Hart <darren@dvhart.com>
To: Mark Brown <broonie@kernel.org>
Date: Fri, 16 May 2014 23:52:22 -0700
In-Reply-To: <20140517130949.GW22111@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140512215925.GY12304@sirena.org.uk> <5371453E.2070108@intel.com>
	<6686293.8G8KACfUS3@wuerfel> <20140513121148.GI12304@sirena.org.uk>
	<1400299079.9575.140.camel@wasp-deb.dvhart.com>
	<20140517130949.GW22111@sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
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

On Sat, 2014-05-17 at 14:09 +0100, Mark Brown wrote:
> On Fri, May 16, 2014 at 08:57:59PM -0700, Darren Vincent Hart wrote:
> > On Tue, 2014-05-13 at 13:11 +0100, Mark Brown wrote:
> 
> > > and so on.  If ACPI goes the same way for embedded systems that'd work
> > > just as well but that's obviously not how ACPI has historically been
> > > done and if systems end up being built like they have been that might
> > > not make people happy.
> 
> > Which people do you mean?
> 
> Systems integrators in the embedded space, I'm mostly thinking from the
> perspective of people who make consumer electronics but the issues apply
> in other embedded sitautions.


OK, good. For the record, I'm focused primarily on two groups:

1) Systems integrators as you describe
2) Individual innovators (People developing stuff with MinnowBoard-Max)


> > It is clear that for ACPI to be a viable mechanism in the embedded
> > space, we need the ability to add additional device descriptions beyond
> > what ships in the firmware on the board. We could stick with the old
> > monolithic model by enabling people to easily rebuild the firmware
> > (something I personally think we need to do anyway), but just because
> > people *can* rebuild the firmware, doesn't mean they are going to want
> > to! Alternatively, tooling could be provided to modify these tables
> 
> Right, and there are frequently process issues which make it difficult
> to do this - in larger organisations the firmware may well be maintained
> by a different team to the kernel team which can make getting changes
> done harder for non-technical resons.


Absolutely. In other situations, the product is an integration of known
working components, and the expectation is that there is no firmware or
even kernel development to be done in the way we think of it.
Special-purpose tooling exists to handle the board-file type integration
- this can be implemented at various layers in the stack, or a
combinatino of them: binary firmware manipulation, ASL, config file
driver parameterization, static kernel board-file generation, etc.


> > > There's also the possibility that the driver is going to have to figure
> > > out at runtime if it's on a system with active ACPI or a system with
> > > passsive ACPI, though I expect we can just do something like check what
> > > properties are there for that assuming people don't end up doing
> > > mix'n'match type things.  People are interested in ACPI for embedded
> > > cases outside of x86 to a large extent so that they don't have to deal
> > > with two different firmware interfaces if they also work on the server
> > > cases.
> 
> > We can determine which method is used based on which device struct
> > pointers are populated.
> 
> Not at present - we can tell if we are running on ACPI but that's not
> the issue.


I misread your statement above, specifically about distinguishing
between passive and active ACPI. This is a concept you've made several
times throughout this thread, and I don't think I'm seeing the broader
point you're trying to make.

As Rafael has pointed out, a lot of the executable methods are handled
at the ACPICA layer and are not dealt with at the individual driver
level.

Also worth mentioning is that any ACPI name could be implemented as a
method, and the OS won't know. For example:

Name(OBJ1, Package (2) { "foo", "bar" })

Could also be implemented as:

Method(OBJ1){
  if (\BAZ){
    Return(Package (2) { "foo", "baz" })
  }
  Return(Package (2) { "foo", "bar" })
}

Can you elaborate on the issues you're trying to call out regarding
active versus passive ACPI?


> 
> > > I'm worried that there's more to the model for using a given firmware
> > > interface than just the in kernel API but we're only thinking about
> > > what's convenient in kernel here.
> 
> > From the ACPI side of things at least, we've definitely been thinking
> > more broadly than that. In fact the kernel interface, like the one Arnd
> > mentioned which happens to be the same thing Rafael and I have
> > suggested, is intended to solve a problem we are seeing in industry
> > where we can't reuse drivers on ACPI platforms without a lot of driver
> > development. The new API is intended to minimize that effort.
> 
> I'm surprised it's a *lot* of development TBH - or rather that the hard
> bit is not mostly putting new back ends on existing APIs.


At the individual driver level, it is trivial. However, there are
thousands of drivers, and as we discussed above, many of the integrators
of these things don't do any driver development. Making those drivers
available to ACPI based platforms then becomes a large task in
aggregate.

The property abstraction layer being discussed is aimed at making that
aggregate task as small as possible - partly via new backends as you
describe.


> > There's more... but rather than just dump here... could you elaborate on
> > your concerns here? Are there some specific things we might be
> > overlooking - would like to hear your thoughts as I agree, this is
> > bigger than the kernel changes.
> 
> The most immediate thing is if the tooling around ACPI based systems is
> going to be able to support people providing configuration to the system
> without undule pain, otherwise it becomes more likely that people won't
> use the new infrastructure.


Agreed. I believe the components here include clear documentation on
creating ACPI equivalents of DT bindings. Or, for new devices, a higher
level properties schema that can be implemented as an FDT or in ASL.
Second, we will need a mechanism for handling SSDT additions independent
from that provided by the board firmware.


> The thing I'm less clear on is if there are going to be problems down
> the line with people trying to do things that they currently do with
> ACPI like hide details of new board versions causing conflicts with code
> that assumes the firmware is just providing data.


OK, this goes back to your concerns on active/passive ACPI I guess?

I believe our best weapon against (new) nasty firmware hacks is to
provide a flexible mechanism with excellent documentation and examples
that make it easier to follow them than to contrive some gross
workaround.

In the past, this is something that ACPI has been lacking. When I first
started looking into this, I kept asking for a Manual, and all I would
get was a Specification.

As part of the ACPI properties update to the specification, we are also
preparing independent documentation for how to use it.

-- 
Darren Hart
Intel Open Source Technology Center
