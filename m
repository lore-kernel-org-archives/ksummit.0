Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 21883AFC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 06:21:50 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 96F5420117
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 06:21:49 +0000 (UTC)
Message-ID: <1399875693.17624.95.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 12 May 2014 16:21:33 +1000
In-Reply-To: <11391971.y9GOPHmK72@wuerfel>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1399289464.20388.57.camel@pasglop> <1560013.xlOCHMZ3P0@vostro.rjw.lan>
	<11391971.y9GOPHmK72@wuerfel>
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

On Tue, 2014-05-06 at 15:35 +0200, Arnd Bergmann wrote:
> 
> With ACPI (or a server running OF for that matter), you assume that the
> PCI host is operational and all buses are fully probed and then you
> have methods for doing hotplugging, you just look at the device that
> are already initialized by the firmware.
> 
> With embedded systems, you (in general, some steps may get skipped
> in practice) go through a lot more steps:
> - detect the presence of the host bridge device
> - enable clocks, voltages, phys, resets, etc.
> - set up inbound and outbound MMIO and PIO address translation windows
> - perform a full bus scan and assign bus and device resources
> 
> We probably woulnd't go through that hassle on ACPI systems. I think
> we shouldn't attempt any translation here, and keep the code completely
> separate, with the common parts being handled by the PCI core as we
> do today.

Well, you said it "or a server running OF for that matter" ...

PCI Hotplug is a whole separate can of worms, let's not get there :-)

Even on OF machine, it's very platform specific. I don't think we can
use it as an example of something that's widely different between DT
and ACPI per-se as it's going to be widely different between everything
non-ACPI.

This is a case of ACPI-does-methods being actually somewhat useful.

Cheers,
Ben.
