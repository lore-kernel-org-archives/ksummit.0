Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D24B24D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 07:34:48 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 070401F968
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 07:34:47 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 13 May 2014 09:34:35 +0200
Message-ID: <6686293.8G8KACfUS3@wuerfel>
In-Reply-To: <5371453E.2070108@intel.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140512215925.GY12304@sirena.org.uk> <5371453E.2070108@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, dvhart@dvhart.com
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

On Tuesday 13 May 2014 00:03:42 Rafael J. Wysocki wrote:
> On 5/12/2014 11:59 PM, Mark Brown wrote:
> > On Tue, May 06, 2014 at 02:22:15PM +0200, Rafael J. Wysocki wrote:
> >> On Monday, May 05, 2014 06:45:28 PM Benjamin Herrenschmidt wrote:
> >>> On Sun, 2014-05-04 at 14:28 +0200, Rafael J. Wysocki wrote:
> >>> Only for standardized resource types, such as mmio ranges or interrupts.
> >>> Anything else is absolutely in the domain of competence of the driver
> >>> and I would argue *only* in the domain of competence of the driver.
> >>
> >> But why can't we treat DT bindings as a standard?
> >
> > Aside from the whole question of people bothering to pay attention to
> > the specs when writing their BIOSs DTs (as used in modern systems) and
> > ACPI have quite different models for what should be handled where - FDT
> > is pure data and expects the kernel to do everything while ACPI expects
> > to be used with active firmware.
> 
> While in practice ACPI is used on systems with active firmware usually, 
> there's no expectation like this in ACPI itself in principle.

Right. Open Firmware already has multiple ways of running code from the
firmware (client calls, RTAS, FCODE, ...), which are used all the time,
but we intentionally chose to not allow them for embedded systems with
the FDT subset.

It should be entirely possible and reasonable to do the same thing for
ACPI on embedded systems. I believe this is what SFI attempted to
do, but that seems to have been discarded for some reason.

	Arnd
