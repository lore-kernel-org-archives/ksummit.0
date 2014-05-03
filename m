Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 49C4170A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 15:14:55 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ACBAA1FAA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 15:14:54 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 03 May 2014 17:14:51 +0200
Message-ID: <6728604.hICTKAEWzt@wuerfel>
In-Reply-To: <1583732.MIn3aNNoTS@vostro.rjw.lan>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dvhart@dvhart.com,
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

On Saturday 03 May 2014 02:05:21 Rafael J. Wysocki wrote:
> On Friday, May 02, 2014 02:42:07 PM Olof Johansson wrote:

> > .. I'm probably missing names but they're bound to reply to this email
> > anyway with opinions.
> > 
> > 
> > Some of the ideas I have heard discussed are:
> > * Adding a new common API for resource management which will have
> > backends for ACPI or DT depending on platform
> 
> I would like to do this, personally, because I believe that drivers
> should not need to add support for any particular firmware interfaces
> directly (except for listing matching device IDs).

We already have this for some things (IRQs, MMIO registers, ...), and
it's probably a good idea to add more. Whether or not we want it for
everything that can be described is open for debate.

Adding it for bool/integer/string properties once they are implemented
in ACPI should be straightforward.

> > * Adding ACPI and DT probing to drivers that lack on or the other
> > today (giving them a total of three probe methods: platform_device,
> > DT, ACPI).
> 
> But that is not about platform devices only.  There also are SPI and I2C
> devices (and likely other bus types too) that require similar kind of
> information from the platform firmware (e.g. are not natively enumerable).
> 
> > * Converting either of them to use platform device model
> > (platform_data) to register drivers, and leave them unaware of either
> > hardware description
> > * [... I'm likely missing something here as well]

Olof, funny you missed the proposal you made yourself:

 * convert ACPI data into DT format at boot time

> > All solutions above have trade-offs, and neither is an obvious choice.
> > We could likely spend between now and KS arguing this every day on the
> > lists if we wanted to. Getting the people into the same room for a
> > couple of hours is likely to be a much better way to resolve it.
> 
> For what it's worth, we are working on extending ACPI to allow DT-style
> information to be included into ACPI tables.

I think it's important to understand that we have people coming from
two sides here: Intel x86 embedded systems with ACPI wanting to the
same things we do on embbeded PowerPC and ARM systems with DT, and ARM64
servers trying to do the same things that x86 servers do by moving
to ACPI.

These two have very different requirements and while there is some
overlap, I suspect we will end up with different solutions as well.

	Arnd
