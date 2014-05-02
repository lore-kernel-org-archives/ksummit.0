Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B630D4C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:42:08 +0000 (UTC)
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4B2131FB23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:42:08 +0000 (UTC)
Received: by mail-qa0-f48.google.com with SMTP id i13so91144qae.21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 May 2014 14:42:07 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 2 May 2014 14:42:07 -0700
Message-ID: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset=UTF-8
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dvhart@dvhart.com,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
Subject: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
	etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I'm about as tired of this as everybody else, but that won't make the
issues go away...

I think we resolved a bunch of stuff around DT last year (and since),
but there are still things left to figure out and agree on in these
areas. In particular in the intersection of Intel platforms with ACPI
and embedded are where there are issues and model mismatches, and
doing it in person might be much easier than doing centithreads.
There's been some various hallway talk at conferences about proposals
to make this work better, but the full set of people have never been
in the same room at the same time.

I labelled this as a tech topic. Feel free to upgrade it to a workshop
or relabel it if needed. Base set of people I'd like to see involved
are:

* Darren Hart, who is doing things to make ACPI more DT-like for
embedded use cases.
* Rafael Wysocki, who also has had some ideas on how to make the
models fit together.
* Grant Likely, since he's in the intersection as well.
* Greg K-H would be much appreciated as well, since he'd have to deal
with some of the resulting mess.
* Dave Woodhouse would also be good to have there.

.. I'm probably missing names but they're bound to reply to this email
anyway with opinions.


Some of the ideas I have heard discussed are:
* Adding a new common API for resource management which will have
backends for ACPI or DT depending on platform
* Adding ACPI and DT probing to drivers that lack on or the other
today (giving them a total of three probe methods: platform_device,
DT, ACPI).
* Converting either of them to use platform device model
(platform_data) to register drivers, and leave them unaware of either
hardware description
* [... I'm likely missing something here as well]

All solutions above have trade-offs, and neither is an obvious choice.
We could likely spend between now and KS arguing this every day on the
lists if we wanted to. Getting the people into the same room for a
couple of hours is likely to be a much better way to resolve it.


-Olof
