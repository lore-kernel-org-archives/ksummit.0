Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8EF89711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 20:02:44 +0000 (UTC)
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 193AE20193
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 20:02:44 +0000 (UTC)
Received: by mail-pa0-f47.google.com with SMTP id lf10so671329pab.34
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 13:02:43 -0700 (PDT)
Date: Tue, 13 May 2014 13:02:52 -0700
From: Olof Johansson <olof@lixom.net>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20140513200252.GA28268@quad.lixom.net>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<6686293.8G8KACfUS3@wuerfel> <20140513121148.GI12304@sirena.org.uk>
	<4341089.iLfxP0nJG8@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4341089.iLfxP0nJG8@wuerfel>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dvhart@dvhart.com,
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

On Tue, May 13, 2014 at 03:08:29PM +0200, Arnd Bergmann wrote:
> On Tuesday 13 May 2014 13:11:48 Mark Brown wrote:
> > On Tue, May 13, 2014 at 09:34:35AM +0200, Arnd Bergmann wrote:
> > > On Tuesday 13 May 2014 00:03:42 Rafael J. Wysocki wrote:
> > > > On 5/12/2014 11:59 PM, Mark Brown wrote:
> > > > > On Tue, May 06, 2014 at 02:22:15PM +0200, Rafael J. Wysocki wrote:
> > 
> > > > > Aside from the whole question of people bothering to pay attention to
> > > > > the specs when writing their BIOSs DTs (as used in modern systems) and
> > > > > ACPI have quite different models for what should be handled where - FDT
> > > > > is pure data and expects the kernel to do everything while ACPI expects
> > > > > to be used with active firmware.
> > 
> > > > While in practice ACPI is used on systems with active firmware usually, 
> > > > there's no expectation like this in ACPI itself in principle.
> > 
> > > Right. Open Firmware already has multiple ways of running code from the
> > > firmware (client calls, RTAS, FCODE, ...), which are used all the time,
> > > but we intentionally chose to not allow them for embedded systems with
> > > the FDT subset.
> > 
> > I wouldn't say they're used all the time these days - the platforms with
> > runtime OF aren't terribly active any more and don't have much overlap
> > with other systems.
> 
> I'm not following PowerPC closely any more. It seems that powernv actually
> has rtas disabled in the defconfig, but still supports it.
> So it's basically down to pseries now, which of course is still an
> important platform. You are definitely right that it doesn't have much
> overlap with anything else.
> 
> powermac, maple, cell, and chrp can probably all be considered dead now.
> 
> > > It should be entirely possible and reasonable to do the same thing for
> > > ACPI on embedded systems. I believe this is what SFI attempted to
> > > do, but that seems to have been discarded for some reason.
> > 
> > SFI didn't provide any way of giving data to devices other than
> > registering them which meant that it ended up with the pain of firmware
> > based device registration requring firmware updates to get the device
> > present being combined with the need for board files to actually get the
> > devices to do anything useful.  On the bright side this got around the
> > fact that in my experience the firmware was frequently not modifiable by
> > people directly working on Linux.
> 
> I see.
> 
> > This might be another issue for the model where we treat ACPI as DT.
> > One of the things that makes the DT model workable in the embedded case
> > is that most of the time as far as the rest of the system is concerned
> > the DT is essentially part of the kernel - it's built from the same tree
> > and so on.  If ACPI goes the same way for embedded systems that'd work
> > just as well but that's obviously not how ACPI has historically been
> > done and if systems end up being built like they have been that might
> > not make people happy.  One of the things that active firmware is doing
> > is decoupling the firmware from the kernel which is a real and useful
> > benefit in many embedded situations, otherwise you just end up either
> > doing board quirks or just hacking things to be system specific in code.
> > 
> > There's also the possibility that the driver is going to have to figure
> > out at runtime if it's on a system with active ACPI or a system with
> > passsive ACPI, though I expect we can just do something like check what
> > properties are there for that assuming people don't end up doing
> > mix'n'match type things.  People are interested in ACPI for embedded
> > cases outside of x86 to a large extent so that they don't have to deal
> > with two different firmware interfaces if they also work on the server
> > cases.
> 
> To be clear, I was only talking about embedded x86 above, there is
> no reason to introduce ACPI on any new architecture really.
> 
> While we will likely get ACPI on ARM64 in the future, I definitely don't
> want to have two incompatible ACPI implementations, especially for the
> same chip. While AMD recently announced they are also going after
> embedded markets with their ARM64 products, they should either
> just use DT in that case, or they should use the same firmware they
> have on their servers.

This is quickly veering off of topic, however:

I'd be really interested to hear what AMD are planning w.r.t. realistic
software support (i.e. not the hype from the ACPI marketing
machine). According to their announcement they clearly are aiming the
chipset at a range of markets, including those who need aggressive power
management (mobile, embedded). It's not obvious to me that they'll be able to
fit that in with the SBSA-style ACPI platform in a clean way.


-Olof
