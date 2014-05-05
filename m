Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 977CC98F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 11:15:26 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id B76F420243
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 11:15:25 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Benjamin Herrenschmidt <benh@au1.ibm.com>
Date: Mon, 05 May 2014 13:32:01 +0200
Message-ID: <1762614.9EREcPdfhF@vostro.rjw.lan>
In-Reply-To: <1399279435.20388.36.camel@pasglop>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1753987.hbb65qFWcl@vostro.rjw.lan>
	<1399279435.20388.36.camel@pasglop>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Monday, May 05, 2014 06:43:55 PM Benjamin Herrenschmidt wrote:
> On Sun, 2014-05-04 at 23:33 +0200, Rafael J. Wysocki wrote:
> > 
> > 
> > But we have such quirks for some bus types already, like PCI and PNP.
> 
> And they suck big time. They duplicate definitions from the driver,
> they get missed at grep time, they bit rot, etc...
> 
> There are a few cases where that's justified simply because the driver
> can be a module but the quirk needs to run early and always, but mostly
> these quirks are about working around HW bugs that would otherwise cause
> the system to misbehave even in absence of the driver.
> 
> For example, bad class code in bridges, BAR issues, etc...
> 
> Generally speaking though, quirks like that are a bad idea and in this
> case, totally unjustified since the code performing whatever translation
> is necessary (or interpretation) is entirely specific to the driver
> anyway.

The interpretation - yes, the translation - not necessarily.  By putting
the translation part into drivers we'll duplicate a lot of code used for
that.  In my opinion there needs to be a layer doing the translation
automatically.

> Also if the bindings evolve, you just created a 3rd way dependency.
> Instead of just having to deal with DT/ACPI binding version vs. driver
> version, we now have to also handle quirk versioning.

The bindings should not depend on the translation.  In the end the bindings
are what the driver will ask for.  If it asks for an integer property called
"fred", for example, it should get that property from the upper layer
regardless of the firmware interface used on that platform (if the property
is there, of course).

Otherwise every driver has to know about all of the possible firmware interfaces
that can be used with it and may I call that suboptimal?  With two of them on
the table it would be workable I guess, but what if someone invents a *third*
firmware interface to use with device drivers?  Are we going to change all of
them, then?


-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
