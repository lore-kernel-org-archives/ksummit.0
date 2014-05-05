Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A26C08AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 15:09:05 +0000 (UTC)
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39FAA201AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  5 May 2014 15:09:05 +0000 (UTC)
Received: by mail-vc0-f172.google.com with SMTP id hr9so76265vcb.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 05 May 2014 08:09:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1399279435.20388.36.camel@pasglop>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140504111436.GC15180@arm.com>
	<20140504171807.GA4418@quad.lixom.net>
	<1753987.hbb65qFWcl@vostro.rjw.lan>
	<1399279435.20388.36.camel@pasglop>
Date: Mon, 5 May 2014 10:09:04 -0500
Message-ID: <CAL_JsqLvMQLBn77n2LU508xVYK_7BC88czeu3r9eFEb2vKhawQ@mail.gmail.com>
From: Rob Herring <robherring2@gmail.com>
To: Benjamin Herrenschmidt <benh@au1.ibm.com>
Content-Type: text/plain; charset=UTF-8
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

On Mon, May 5, 2014 at 3:43 AM, Benjamin Herrenschmidt <benh@au1.ibm.com> wrote:
> On Sun, 2014-05-04 at 23:33 +0200, Rafael J. Wysocki wrote:
>>
>>
>> But we have such quirks for some bus types already, like PCI and PNP.
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

On the flip side, DT entirely lacks any sort of infrastructure for
quirks other than match table data, and it handles various quirks
inline mostly. It's not so much of a problem now as much of PPC is
pretty stable and ARM is still a newcomer to DT, but I worry that we
have an impending problem as ARM DTs start to mature. So what is the
direction we want to go with quirks which can't be self-contained
within drivers?

Rob
