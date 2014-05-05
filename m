Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 41A1899D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 08:47:51 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 545BF201B5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 08:47:49 +0000 (UTC)
Message-ID: <1399279156.20388.32.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Olof Johansson <olof@lixom.net>
Date: Mon, 05 May 2014 18:39:16 +1000
In-Reply-To: <20140504171807.GA4418@quad.lixom.net>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan> <6728604.hICTKAEWzt@wuerfel>
	<20140504111436.GC15180@arm.com> <20140504171807.GA4418@quad.lixom.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

On Sun, 2014-05-04 at 10:18 -0700, Olof Johansson wrote:
> 
> Also, even if we do a common API with different backends, there will
> need to be some knowledge somewhere about custom bindings and what they mean,
> how to translate them and how the different descriptions correlate.
> I personally think we're best off putting that in the drivers, instead of
> making some part of the driver core aware of a bunch of quirks/hooks for
> various devices.

I tend to agree.

In the end, there is no silver bullet, however, it would make things easier
of the drivers could be structured such that for most things, when they need
a piece of information they use a single accessor to get named properties,
and if needed, they can have a single conversion function that converts ACPI
"stuff" into these (provided the ACPI extension for passing properties isn't
present, or possibly for translating "keys" between the bindings etc...).

IE. A single point of translation is less messy imho than sprinkling things
all over the driver, and we *will* need translation.

Now for standard stuff such as MMIO ranges etc... we all agree I believe to
stick to the existing Linux struct resource & co and have the parsing happen
at the core level, but for everything else, the trick is to see what we can
do to make driver life easier.

They *will* have to deal with the dual world, we can't completely hide it,
but we can make it less painful via good practices.

The other option is to have both the DT representation and the ACPI
representation reach the drivers and leave it to the them (the drivers) to get
through two different functions at probe time to "translates" that into a
"3rd" driver private one (a structure, in a way akin to the old platform data
but of course completely local to the driver scope).

I know of the drawbacks but for many drivers who already just pick these
things up at probe time just to copy/encode them into their driver private
structure, that's a fairly workable and simple approach.

Cheers,
Ben.
