Return-Path: <thomas.petazzoni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C218C96D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 16:52:25 +0000 (UTC)
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 284C71FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 16:52:25 +0000 (UTC)
Date: Mon, 5 May 2014 18:41:51 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
To: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20140505184151.67a53dcc@skate>
In-Reply-To: <20140505160237.GP28159@titan.lakedaemon.net>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140504111436.GC15180@arm.com>
	<20140504171807.GA4418@quad.lixom.net>
	<1753987.hbb65qFWcl@vostro.rjw.lan>
	<1399279435.20388.36.camel@pasglop>
	<CAL_JsqLvMQLBn77n2LU508xVYK_7BC88czeu3r9eFEb2vKhawQ@mail.gmail.com>
	<20140505160237.GP28159@titan.lakedaemon.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
	Benjamin Herrenschmidt <benh@au1.ibm.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@googlemail.com>,
	Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
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

Dear Jason Cooper,

On Mon, 5 May 2014 12:02:37 -0400, Jason Cooper wrote:

> > On the flip side, DT entirely lacks any sort of infrastructure for
> > quirks other than match table data, and it handles various quirks
> > inline mostly. It's not so much of a problem now as much of PPC is
> > pretty stable and ARM is still a newcomer to DT, but I worry that we
> > have an impending problem as ARM DTs start to mature. So what is the
> > direction we want to go with quirks which can't be self-contained
> > within drivers?
> 
> regrettably, soc code.  We (mvebu) have the good fortune to be
> integrating mainline support for brand new SoCs from Marvell, as they
> ship.  Unfortunately, this means that the free-electron's guys
> (contracted by Marvell to mainline the code) are having to work with
> pre-release SoCs (Z1 stepping).

On the other hand, Rob was asking about "quirks which can't be
self-contained within drivers". And the two quirks below:

> static void __init mvebu_dt_init(void)
> {
>         if (of_machine_is_compatible("plathome,openblocks-ax3-4"))
>                 i2c_quirk();
>         if (of_machine_is_compatible("marvell,a375-db"))
>                 thermal_quirk();

could perfectly be fine be self-contained into the respective device
drivers. Actually, for the I2C quirk, it was even the original
implementation that my colleague Gregory Clement proposed. But this
approach was rejected, and we were asked to replace that by the current
approach: a quirk in the mach-mvebu SoC code that changes the
compatible string.

I continue to have the feeling that the strategy we have been asked to
use is going against the principle of having less stuff in mach-<foo>
directories.

Thomas
-- 
Thomas Petazzoni, CTO, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com
