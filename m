Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7504D875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 23:48:50 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 324491FAA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 23:48:48 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Olof Johansson <olof@lixom.net>
Date: Sat, 03 May 2014 02:05:21 +0200
Message-ID: <1583732.MIn3aNNoTS@vostro.rjw.lan>
In-Reply-To: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Hi Olof,

Thanks for submitting this!

I was about to submit it too, but you beat me to that. :-)

On Friday, May 02, 2014 02:42:07 PM Olof Johansson wrote:
> I'm about as tired of this as everybody else, but that won't make the
> issues go away...
> 
> I think we resolved a bunch of stuff around DT last year (and since),
> but there are still things left to figure out and agree on in these
> areas. In particular in the intersection of Intel platforms with ACPI
> and embedded are where there are issues and model mismatches, and
> doing it in person might be much easier than doing centithreads.

Agreed.

> There's been some various hallway talk at conferences about proposals
> to make this work better, but the full set of people have never been
> in the same room at the same time.

Yes.

> I labelled this as a tech topic. Feel free to upgrade it to a workshop
> or relabel it if needed. Base set of people I'd like to see involved
> are:
> 
> * Darren Hart, who is doing things to make ACPI more DT-like for
> embedded use cases.
> * Rafael Wysocki, who also has had some ideas on how to make the
> models fit together.
> * Grant Likely, since he's in the intersection as well.
> * Greg K-H would be much appreciated as well, since he'd have to deal
> with some of the resulting mess.
> * Dave Woodhouse would also be good to have there.

+ H. Peter Anvin

> .. I'm probably missing names but they're bound to reply to this email
> anyway with opinions.
> 
> 
> Some of the ideas I have heard discussed are:
> * Adding a new common API for resource management which will have
> backends for ACPI or DT depending on platform

I would like to do this, personally, because I believe that drivers
should not need to add support for any particular firmware interfaces
directly (except for listing matching device IDs).

> * Adding ACPI and DT probing to drivers that lack on or the other
> today (giving them a total of three probe methods: platform_device,
> DT, ACPI).

But that is not about platform devices only.  There also are SPI and I2C
devices (and likely other bus types too) that require similar kind of
information from the platform firmware (e.g. are not natively enumerable).

> * Converting either of them to use platform device model
> (platform_data) to register drivers, and leave them unaware of either
> hardware description
> * [... I'm likely missing something here as well]
> 
> All solutions above have trade-offs, and neither is an obvious choice.
> We could likely spend between now and KS arguing this every day on the
> lists if we wanted to. Getting the people into the same room for a
> couple of hours is likely to be a much better way to resolve it.

For what it's worth, we are working on extending ACPI to allow DT-style
information to be included into ACPI tables.

Thanks!


-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
