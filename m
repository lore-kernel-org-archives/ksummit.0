Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BE7D7942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 04:16:10 +0000 (UTC)
Received: from mail-pb0-f45.google.com (mail-pb0-f45.google.com
	[209.85.160.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 24FA91F986
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 04:16:10 +0000 (UTC)
Received: by mail-pb0-f45.google.com with SMTP id um1so3423541pbc.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 21:16:09 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
Message-ID: <1400299079.9575.140.camel@wasp-deb.dvhart.com>
From: Darren Vincent Hart <darren@dvhart.com>
To: Mark Brown <broonie@kernel.org>
Date: Fri, 16 May 2014 20:57:59 -0700
In-Reply-To: <20140513121148.GI12304@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140512215925.GY12304@sirena.org.uk> <5371453E.2070108@intel.com>
	<6686293.8G8KACfUS3@wuerfel> <20140513121148.GI12304@sirena.org.uk>
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

On Tue, 2014-05-13 at 13:11 +0100, Mark Brown wrote:
> On Tue, May 13, 2014 at 09:34:35AM +0200, Arnd Bergmann wrote:
> > On Tuesday 13 May 2014 00:03:42 Rafael J. Wysocki wrote:
> > > On 5/12/2014 11:59 PM, Mark Brown wrote:
> > > > On Tue, May 06, 2014 at 02:22:15PM +0200, Rafael J. Wysocki wrote:
> 
> > > > Aside from the whole question of people bothering to pay attention to
> > > > the specs when writing their BIOSs DTs (as used in modern systems) and
> > > > ACPI have quite different models for what should be handled where - FDT
> > > > is pure data and expects the kernel to do everything while ACPI expects
> > > > to be used with active firmware.
> 
> > > While in practice ACPI is used on systems with active firmware usually, 
> > > there's no expectation like this in ACPI itself in principle.
> 
> > Right. Open Firmware already has multiple ways of running code from the
> > firmware (client calls, RTAS, FCODE, ...), which are used all the time,
> > but we intentionally chose to not allow them for embedded systems with
> > the FDT subset.
> 
> I wouldn't say they're used all the time these days - the platforms with
> runtime OF aren't terribly active any more and don't have much overlap
> with other systems.
> 
> > It should be entirely possible and reasonable to do the same thing for
> > ACPI on embedded systems. I believe this is what SFI attempted to
> > do, but that seems to have been discarded for some reason.
> 
> SFI didn't provide any way of giving data to devices other than
> registering them which meant that it ended up with the pain of firmware
> based device registration requring firmware updates to get the device
> present being combined with the need for board files to actually get the
> devices to do anything useful.  On the bright side this got around the
> fact that in my experience the firmware was frequently not modifiable by
> people directly working on Linux.
> 
> This might be another issue for the model where we treat ACPI as DT.
> One of the things that makes the DT model workable in the embedded case
> is that most of the time as far as the rest of the system is concerned
> the DT is essentially part of the kernel - it's built from the same tree
> and so on.  If ACPI goes the same way for embedded systems that'd work
> just as well but that's obviously not how ACPI has historically been
> done and if systems end up being built like they have been that might
> not make people happy.

Which people do you mean?

It is clear that for ACPI to be a viable mechanism in the embedded
space, we need the ability to add additional device descriptions beyond
what ships in the firmware on the board. We could stick with the old
monolithic model by enabling people to easily rebuild the firmware
(something I personally think we need to do anyway), but just because
people *can* rebuild the firmware, doesn't mean they are going to want
to! Alternatively, tooling could be provided to modify these tables
without technically rebuilding the firmware image in the traditional
sense - and similar tooling exists in industry today.

The other option of course is the FDT approach where we enable the
ability to provide an ACPI SSDT as an independent item from the board
firmware. This could be similar to what we do today for wholesale
replacement of the tables, but instead load and rescan the ACPI
namespace based on the newly provided data.

While some folks are exploring using DT on Intel platforms, I personally
think it makes more sense to incrementally improve ACPI to provide the
necessary flexibility (it really doesn't need much) than to throw it all
out and have to tackle all the issues that raises. For one thing, it
maintains the integrity of the platform and all the compatibility, etc.
that it brings you.

My intersection with this stuff is my work on the MinnowBoard program,
which is a divergence from the static motherboard model typical to Intel
designs where expansion is only done over enumerable self-describing
buses, to what I call a "dynamic base-board" (is there a real industry
term for this?) where we expose the other buses and GPIOs people have to
expect in developer boards like these. Response to the MinnowBoard-Max
suggests to me that we're on the right track here.

> One of the things that active firmware is doing
> is decoupling the firmware from the kernel which is a real and useful
> benefit in many embedded situations, otherwise you just end up either
> doing board quirks or just hacking things to be system specific in code.
> 
> There's also the possibility that the driver is going to have to figure
> out at runtime if it's on a system with active ACPI or a system with
> passsive ACPI, though I expect we can just do something like check what
> properties are there for that assuming people don't end up doing
> mix'n'match type things.  People are interested in ACPI for embedded
> cases outside of x86 to a large extent so that they don't have to deal
> with two different firmware interfaces if they also work on the server
> cases.

We can determine which method is used based on which device struct
pointers are populated.

> I'm worried that there's more to the model for using a given firmware
> interface than just the in kernel API but we're only thinking about
> what's convenient in kernel here.

>From the ACPI side of things at least, we've definitely been thinking
more broadly than that. In fact the kernel interface, like the one Arnd
mentioned which happens to be the same thing Rafael and I have
suggested, is intended to solve a problem we are seeing in industry
where we can't reuse drivers on ACPI platforms without a lot of driver
development. The new API is intended to minimize that effort.

Other non-kernel considerations include the format of the changes to the
ACPI specification being flexible enough to allow reuse of the existing
DT bindings/schemas and keeping the definition of these schemas in the
hands of the hardware vendors.

There's more... but rather than just dump here... could you elaborate on
your concerns here? Are there some specific things we might be
overlooking - would like to hear your thoughts as I agree, this is
bigger than the kernel changes.

-- 
Darren Hart
Intel Open Source Technology Center
