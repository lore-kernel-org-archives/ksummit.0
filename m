Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DE5F596D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 21:45:59 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 085E32033B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 21:45:58 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 05 May 2014 00:02:35 +0200
Message-ID: <7701777.LWanFdz802@vostro.rjw.lan>
In-Reply-To: <5366789F.4090800@roeck-us.net>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140504171807.GA4418@quad.lixom.net>
	<5366789F.4090800@roeck-us.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
	Georgi Vlaev <georgi.vlaev@konsulko.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Pantelis Antoniou <panto@antoniou-consulting.com>,
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

Hi,

On Sunday, May 04, 2014 10:27:59 AM Guenter Roeck wrote:
> On 05/04/2014 10:18 AM, Olof Johansson wrote:

[cut]

> > I think it's very optimistic to assume that there will ever be a common
> > solution for both ends of the spectrum (embedded - enterprise), but we
> > should make sure we can stay sane and not have more solutions than we need
> > in parallel, and that things will work together where there is overlap.
> >
> We (Juniper) are moving towards a partial conversion from ACPI to DT, pretty
> much just enough to let us work with DT overlays on X86. If there is interest
> to discuss this, it might make sense to invite Pantelis Antoniou and possibly
> Georgi Vlaev, since both are instrumental to making it work.

I actually wonder how you are going to handle things like references from
a DT overlay to ACPI device objects in the namespace (like various things
controllers etc).

Thanks!

-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
