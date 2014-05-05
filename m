Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 95E8E96D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 16:02:46 +0000 (UTC)
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF4741FC53
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 16:02:45 +0000 (UTC)
Date: Mon, 5 May 2014 12:02:37 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Rob Herring <robherring2@gmail.com>,
	Thomas Petazzoni <thomas.petazzoni@free-electrons.com>,
	Gregory CLEMENT <gregory.clement@free-electrons.com>,
	Ezequiel Garcia <ezequiel.garcia@free-electrons.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Sebastian Hesselbarth <sebastian.hesselbarth@googlemail.com>
Message-ID: <20140505160237.GP28159@titan.lakedaemon.net>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140504111436.GC15180@arm.com>
	<20140504171807.GA4418@quad.lixom.net>
	<1753987.hbb65qFWcl@vostro.rjw.lan>
	<1399279435.20388.36.camel@pasglop>
	<CAL_JsqLvMQLBn77n2LU508xVYK_7BC88czeu3r9eFEb2vKhawQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqLvMQLBn77n2LU508xVYK_7BC88czeu3r9eFEb2vKhawQ@mail.gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"dvhart@dvhart.com" <dvhart@dvhart.com>,
	Benjamin Herrenschmidt <benh@au1.ibm.com>,
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

On Mon, May 05, 2014 at 10:09:04AM -0500, Rob Herring wrote:
> On Mon, May 5, 2014 at 3:43 AM, Benjamin Herrenschmidt <benh@au1.ibm.com> wrote:
> > On Sun, 2014-05-04 at 23:33 +0200, Rafael J. Wysocki wrote:
> >>
> >>
> >> But we have such quirks for some bus types already, like PCI and PNP.
> >
> > And they suck big time. They duplicate definitions from the driver,
> > they get missed at grep time, they bit rot, etc...
> >
> > There are a few cases where that's justified simply because the driver
> > can be a module but the quirk needs to run early and always, but mostly
> > these quirks are about working around HW bugs that would otherwise cause
> > the system to misbehave even in absence of the driver.
> >
> > For example, bad class code in bridges, BAR issues, etc...
> >
> > Generally speaking though, quirks like that are a bad idea and in this
> > case, totally unjustified since the code performing whatever translation
> > is necessary (or interpretation) is entirely specific to the driver
> > anyway.
> 
> On the flip side, DT entirely lacks any sort of infrastructure for
> quirks other than match table data, and it handles various quirks
> inline mostly. It's not so much of a problem now as much of PPC is
> pretty stable and ARM is still a newcomer to DT, but I worry that we
> have an impending problem as ARM DTs start to mature. So what is the
> direction we want to go with quirks which can't be self-contained
> within drivers?

regrettably, soc code.  We (mvebu) have the good fortune to be
integrating mainline support for brand new SoCs from Marvell, as they
ship.  Unfortunately, this means that the free-electron's guys
(contracted by Marvell to mainline the code) are having to work with
pre-release SoCs (Z1 stepping).

There are several quirks in the Z1 stepping that have required
workarounds, sometimes across subsystems.  You can see some examples in
arch/arm/mach-mvebu/board-v7.c, eg:

static void __init mvebu_dt_init(void)
{
        if (of_machine_is_compatible("plathome,openblocks-ax3-4"))
                i2c_quirk();
        if (of_machine_is_compatible("marvell,a375-db"))
                thermal_quirk();

        of_platform_populate(NULL, of_default_bus_match_table, NULL, NULL);
}

the quirk code then uses runtime detection to determine which SoC
stepping it is on, adjusts the compatible string and any other DT
nodes, as necessary.

The driver then gets the correct information from the DT, and we don't
have to maintain two dts files for a given board.  The bigger benefit is
that the user never has to figure out which SoC stepping they have.

thx,

Jason.
