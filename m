Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B83989A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 08:45:42 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 298DF1FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 08:45:42 +0000 (UTC)
Message-ID: <1399279528.20388.37.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Date: Mon, 05 May 2014 18:45:28 +1000
In-Reply-To: <3007964.pJHjDrtZps@vostro.rjw.lan>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan>
	<20140503020242.GD22111@sirena.org.uk>
	<3007964.pJHjDrtZps@vostro.rjw.lan>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Sun, 2014-05-04 at 14:28 +0200, Rafael J. Wysocki wrote:
> In my opinion, device drivers should not be concerned about that
> really.
> The layers of code above them (bus types etc.) should, but not drivers
> themselves, because that makes it difficult to use the same driver
> for the same piece of hardware on two systems with different firmware
> interfaces.

Only for standardized resource types, such as mmio ranges or interrupts.

Anything else is absolutely in the domain of competence of the driver
and I would argue *only* in the domain of competence of the driver.

This is a dirty enough table, don't invite a 3rd party to it :-)

Cheers,
Ben.
