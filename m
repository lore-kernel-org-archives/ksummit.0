Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 90B0498F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 11:20:25 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id F375B20240
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 11:20:23 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 05 May 2014 13:37 +0200
Message-ID: <5033239.oF19PZOQnr@vostro.rjw.lan>
In-Reply-To: <1399279156.20388.32.camel@pasglop>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140504171807.GA4418@quad.lixom.net>
	<1399279156.20388.32.camel@pasglop>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
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

On Monday, May 05, 2014 06:39:16 PM Benjamin Herrenschmidt wrote:
> On Sun, 2014-05-04 at 10:18 -0700, Olof Johansson wrote:
> > 
> > Also, even if we do a common API with different backends, there will
> > need to be some knowledge somewhere about custom bindings and what they mean,
> > how to translate them and how the different descriptions correlate.
> > I personally think we're best off putting that in the drivers, instead of
> > making some part of the driver core aware of a bunch of quirks/hooks for
> > various devices.
> 
> I tend to agree.
> 
> In the end, there is no silver bullet, however, it would make things easier
> of the drivers could be structured such that for most things, when they need
> a piece of information they use a single accessor to get named properties,
> and if needed, they can have a single conversion function that converts ACPI
> "stuff" into these (provided the ACPI extension for passing properties isn't
> present, or possibly for translating "keys" between the bindings etc...).
> 
> IE. A single point of translation is less messy imho than sprinkling things
> all over the driver, and we *will* need translation.

Precisely.

> Now for standard stuff such as MMIO ranges etc... we all agree I believe to
> stick to the existing Linux struct resource & co and have the parsing happen
> at the core level, but for everything else, the trick is to see what we can
> do to make driver life easier.
> 
> They *will* have to deal with the dual world, we can't completely hide it,
> but we can make it less painful via good practices.

Probably.

> The other option is to have both the DT representation and the ACPI
> representation reach the drivers and leave it to the them (the drivers) to get
> through two different functions at probe time to "translates" that into a
> "3rd" driver private one (a structure, in a way akin to the old platform data
> but of course completely local to the driver scope).
> 
> I know of the drawbacks but for many drivers who already just pick these
> things up at probe time just to copy/encode them into their driver private
> structure, that's a fairly workable and simple approach.

It may be workable from an individual driver point of view, but not from
a framework perspective.  At least duplication of code has to be avoided.

Thanks!

-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
