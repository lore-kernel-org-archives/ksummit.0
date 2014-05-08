Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 81614942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 11:36:05 +0000 (UTC)
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 772961F89A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 11:36:04 +0000 (UTC)
Received: by mail-oa0-f50.google.com with SMTP id i7so2871594oag.37
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 08 May 2014 04:36:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5037921.rt2to5ZgBB@vostro.rjw.lan>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<3443151.uQIbj9tkE3@vostro.rjw.lan>
	<CACRpkdYjVduPPMp9D53ocE8B-Mva5qUo4E-R=iYdSCmFLoaz_A@mail.gmail.com>
	<5037921.rt2to5ZgBB@vostro.rjw.lan>
Date: Thu, 8 May 2014 13:36:03 +0200
Message-ID: <CACRpkdZvh9ZVMO-oAL-UDTOGKN28x1eKoSMBetfEn9wk=jEOWg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset=UTF-8
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"dvhart@dvhart.com" <dvhart@dvhart.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Tue, May 6, 2014 at 1:41 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> On Monday, May 05, 2014 07:41:04 PM Linus Walleij wrote:
(...)
>> The thing is: with things like BayTrail I already *know* the pin control
>> registers are there, they are just not implemented any handling of.
>> I know very well how much the HW implementers think that a kernel
>> "should never touch" these registers, and I know it will invariably happen
>> sooner or later but like to be proven wrong.
(...)

> That doesn't mean that we can switch x86 to over DTs (that currently is not an
> option for various reasons, not necessarily techical), but we may be able to put
> DT-style information that the current code expects to be there into the ACPI
> tables.

In this case I don't care so much about DT or ACPI or whatever, what
I would like to see is that the hardware is adequately described to
the kernel, and the subsystem has a pretty good idea about how to
describe such hardware, and the idea is *not* per-pin properties
tied to some "GPIO" like I have seen, but concepts like groups and
functions and per-pin configuration tied in to a certain use case.

I know DT is doing it right but that is just because the person who
did the heavy lifting, Stephen Warren, was also a co-author of the
pin control subsystem.

Yours,
Linus Walleij
