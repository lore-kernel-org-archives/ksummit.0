Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5C969AEE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 22:55:48 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF8281FC50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 22:55:46 +0000 (UTC)
Message-ID: <1399330528.20388.61.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Rob Herring <robherring2@gmail.com>
Date: Tue, 06 May 2014 08:55:28 +1000
In-Reply-To: <CAL_JsqLvMQLBn77n2LU508xVYK_7BC88czeu3r9eFEb2vKhawQ@mail.gmail.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140504111436.GC15180@arm.com> <20140504171807.GA4418@quad.lixom.net>
	<1753987.hbb65qFWcl@vostro.rjw.lan> <1399279435.20388.36.camel@pasglop>
	<CAL_JsqLvMQLBn77n2LU508xVYK_7BC88czeu3r9eFEb2vKhawQ@mail.gmail.com>
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

On Mon, 2014-05-05 at 10:09 -0500, Rob Herring wrote:
> On the flip side, DT entirely lacks any sort of infrastructure for
> quirks other than match table data, and it handles various quirks
> inline mostly. It's not so much of a problem now as much of PPC is
> pretty stable and ARM is still a newcomer to DT, but I worry that we
> have an impending problem as ARM DTs start to mature. So what is the
> direction we want to go with quirks which can't be self-contained
> within drivers?

I have a few cases with real OF already indeed. On Mac, I have a few
fixups where I "correct" bad device-trees. Additionally in the macio
device framework, I have additional workarounds. I would rather have
those in the drivers but that was the price of getting even the basic
resources right (those old Apple DTs were really really bad).

If we ever need to do things like that, I'd rather it's done in a
per-board fixup file that does the fixups once at boot.

Ben.
