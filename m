Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5BF808B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 17:18:04 +0000 (UTC)
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B8B19201C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 17:18:03 +0000 (UTC)
Received: by mail-pd0-f182.google.com with SMTP id fp1so1741259pdb.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 04 May 2014 10:18:03 -0700 (PDT)
Date: Sun, 4 May 2014 10:18:07 -0700
From: Olof Johansson <olof@lixom.net>
To: Catalin Marinas <catalin.marinas@arm.com>
Message-ID: <20140504171807.GA4418@quad.lixom.net>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan> <6728604.hICTKAEWzt@wuerfel>
	<20140504111436.GC15180@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140504111436.GC15180@arm.com>
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

Hi,

[BTW, I forgot to mention that BenH of course would be one person we need
involved in all this. Adding him to the cc list here, but I know he's seen the
thread already :)]

On Sun, May 04, 2014 at 12:14:36PM +0100, Catalin Marinas wrote:
> On Sat, May 03, 2014 at 04:14:51PM +0100, Arnd Bergmann wrote:
> > On Saturday 03 May 2014 02:05:21 Rafael J. Wysocki wrote:
> > > On Friday, May 02, 2014 02:42:07 PM Olof Johansson wrote:
> > > > * Converting either of them to use platform device model
> > > > (platform_data) to register drivers, and leave them unaware of either
> > > > hardware description
> > > > * [... I'm likely missing something here as well]
> > 
> > Olof, funny you missed the proposal you made yourself:
> > 
> >  * convert ACPI data into DT format at boot time
> 
> I thought this was discussed at length and agreed it's not a way
> forward, given the differences between ACPI and DT, especially on the
> AML feature which DT does not have (making one-off boot-time conversion
> not feasible).

I'm explicitly choosing to not discuss the ARM64 situation here myself,
I am more interested in solving the issues around Intel's forage into
embedded.

ACPI on ARM64/SBSA is in many ways a different problem, and one that
I don't know what there is to talk about, to be honest. Mostly because
we're still talking hypotheticals and not-yet-published docs, and all
vendors are still under deep NDA on product plans and what they're
planning on doing. It means we're playing games of telephone right now
and it's better to just wait until we have something concrete to center
the discussions around.

Intel, on the other hand, are already shipping this hardware, and have
a platforms to do the work on (Minnowboard and Galieo, for example).

So, to address Arnd's original question: 

Yes, it could make more sense to translate the data to a common
format and use the existing accessors for that data format, instead
of reinventing the accessors and still needing to represent the data
some way. I think it depends on how some of the other things develop --
I don't know enough about what Darren's current approach is, for example,
to tell if it would be easier to do it that way.

Also, even if we do a common API with different backends, there will
need to be some knowledge somewhere about custom bindings and what they mean,
how to translate them and how the different descriptions correlate.
I personally think we're best off putting that in the drivers, instead of
making some part of the driver core aware of a bunch of quirks/hooks for
various devices.

> > > For what it's worth, we are working on extending ACPI to allow DT-style
> > > information to be included into ACPI tables.
> > 
> > I think it's important to understand that we have people coming from
> > two sides here: Intel x86 embedded systems with ACPI wanting to the
> > same things we do on embbeded PowerPC and ARM systems with DT, and ARM64
> > servers trying to do the same things that x86 servers do by moving
> > to ACPI.
> > 
> > These two have very different requirements and while there is some
> > overlap, I suspect we will end up with different solutions as well.
> 
> I think the middle ground is that for x86 to get into embedded and ARM64
> into servers, the ACPI spec is not enough as hardware description.
> Traditionally, the x86 hardware is rather standard and ACPI didn't need
> to describe so many things. On ARM, OTOH, we have lots of variation and
> DT provides such flexibility. Even if ARM is pushing for more standard
> server hardware like SBSA, it's still relaxed enough not to look like a
> PC platform. So even if the aims are different, the x86 efforts on more
> hw description in ACPI help both Intel and ARM. Given the collaboration
> between the two on ACPI forums already, I think there are good chances
> of ending up with a common solution for Linux. Of course, x86 may decide
> to go the DT route all the way (and ARM in the other direction ;)).

I think it's very optimistic to assume that there will ever be a common
solution for both ends of the spectrum (embedded - enterprise), but we
should make sure we can stay sane and not have more solutions than we need
in parallel, and that things will work together where there is overlap.


-Olof
