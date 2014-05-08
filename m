Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8E968942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 11:51:32 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 6D5CA1FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 11:51:30 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 08 May 2014 14:08:10 +0200
Message-ID: <3041099.5bD9dETY7Z@vostro.rjw.lan>
In-Reply-To: <CACRpkdZvh9ZVMO-oAL-UDTOGKN28x1eKoSMBetfEn9wk=jEOWg@mail.gmail.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<5037921.rt2to5ZgBB@vostro.rjw.lan>
	<CACRpkdZvh9ZVMO-oAL-UDTOGKN28x1eKoSMBetfEn9wk=jEOWg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Thursday, May 08, 2014 01:36:03 PM Linus Walleij wrote:
> On Tue, May 6, 2014 at 1:41 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> > On Monday, May 05, 2014 07:41:04 PM Linus Walleij wrote:
> (...)
> >> The thing is: with things like BayTrail I already *know* the pin control
> >> registers are there, they are just not implemented any handling of.
> >> I know very well how much the HW implementers think that a kernel
> >> "should never touch" these registers, and I know it will invariably happen
> >> sooner or later but like to be proven wrong.
> (...)
> 
> > That doesn't mean that we can switch x86 to over DTs (that currently is not an
> > option for various reasons, not necessarily techical), but we may be able to put
> > DT-style information that the current code expects to be there into the ACPI
> > tables.
> 
> In this case I don't care so much about DT or ACPI or whatever, what
> I would like to see is that the hardware is adequately described to
> the kernel, and the subsystem has a pretty good idea about how to
> describe such hardware, and the idea is *not* per-pin properties
> tied to some "GPIO" like I have seen, but concepts like groups and
> functions and per-pin configuration tied in to a certain use case.
> 
> I know DT is doing it right but that is just because the person who
> did the heavy lifting, Stephen Warren, was also a co-author of the
> pin control subsystem.

I haven't been following the development of the pin control subsystem and
I'm not familiar with those things, so I'm not sure how I can aswer this.

>From the firmware interface perspective, though, ACPI has no means of
exposing pin control to the OS today and they way for it I can see,
personally, would be to re-use what is done in the DT space.

That's why I was asking the questions about pin control in the other LKML
thread.  [Thanks for you reply BTW, sorry for not responding there, but
I haven't had a chance to read it carefully yet.]

Thanks!

-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
