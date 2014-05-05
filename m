Return-Path: <benh@au1.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9EEAB9A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 08:54:20 +0000 (UTC)
Received: from e23smtp04.au.ibm.com (e23smtp04.au.ibm.com [202.81.31.146])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D5885201BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 08:54:18 +0000 (UTC)
Received: from /spool/local
	by e23smtp04.au.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from <benh@au1.ibm.com>;
	Mon, 5 May 2014 18:44:09 +1000
Received: from d23relay03.au.ibm.com (d23relay03.au.ibm.com [9.190.235.21])
	by d23dlp02.au.ibm.com (Postfix) with ESMTP id AAB982BB0040
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 18:44:05 +1000 (EST)
Received: from d23av02.au.ibm.com (d23av02.au.ibm.com [9.190.235.138])
	by d23relay03.au.ibm.com (8.13.8/8.13.8/NCO v10.0) with ESMTP id
	s458hoC43473828 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 5 May 2014 18:43:50 +1000
Received: from d23av02.au.ibm.com (localhost [127.0.0.1])
	by d23av02.au.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	s458i4Cg006472 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 5 May 2014 18:44:05 +1000
Message-ID: <1399279435.20388.36.camel@pasglop>
From: Benjamin Herrenschmidt <benh@au1.ibm.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Date: Mon, 05 May 2014 18:43:55 +1000
In-Reply-To: <1753987.hbb65qFWcl@vostro.rjw.lan>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140504111436.GC15180@arm.com> <20140504171807.GA4418@quad.lixom.net>
	<1753987.hbb65qFWcl@vostro.rjw.lan>
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

On Sun, 2014-05-04 at 23:33 +0200, Rafael J. Wysocki wrote:
> 
> 
> But we have such quirks for some bus types already, like PCI and PNP.

And they suck big time. They duplicate definitions from the driver,
they get missed at grep time, they bit rot, etc...

There are a few cases where that's justified simply because the driver
can be a module but the quirk needs to run early and always, but mostly
these quirks are about working around HW bugs that would otherwise cause
the system to misbehave even in absence of the driver.

For example, bad class code in bridges, BAR issues, etc...

Generally speaking though, quirks like that are a bad idea and in this
case, totally unjustified since the code performing whatever translation
is necessary (or interpretation) is entirely specific to the driver
anyway.

Also if the bindings evolve, you just created a 3rd way dependency.
Instead of just having to deal with DT/ACPI binding version vs. driver
version, we now have to also handle quirk versioning.


Cheers,
Ben.
 
