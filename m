Return-Path: <darren@apps.dvhart.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E1FFD942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 04:51:44 +0000 (UTC)
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 908AA1FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 04:51:44 +0000 (UTC)
Received: by mail-pb0-f41.google.com with SMTP id uo5so3468737pbc.28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 21:51:44 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
Message-ID: <1400301213.9575.154.camel@wasp-deb.dvhart.com>
From: Darren Vincent Hart <darren@dvhart.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Date: Fri, 16 May 2014 21:33:33 -0700
In-Reply-To: <3443151.uQIbj9tkE3@vostro.rjw.lan>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1655995.vGcMNE2bRf@vostro.rjw.lan>
	<20140504172318.GB4418@quad.lixom.net>
	<3443151.uQIbj9tkE3@vostro.rjw.lan>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
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

On Sun, 2014-05-04 at 23:58 +0200, Rafael J. Wysocki wrote:
> > Same for pin control, where we have frameworks in the kernel on ARM,
> but
> > x86/ACPI tends to let firmware handle it all...
> 
> I would say if pin control information is made available to us by the
> firmware,
> we can use it.  If it is not, we need to live without it.

This is particularly a problem for designs intended to enable innovation
and spawn derivative products, like the MinnowBoard-Max. While we can
(and do) allow the end-user to toggle between native and GPIO modes for
functional blocks of pins, that's still more limiting than I (speaking
personally here) think it should be.

It made some sense to bury this in firmware when the board was static
and the product had no significant use case where these might need to
change.

On embedded boards though, Pinctrl (or the pins/buses it typically
controls rather) is on par with PCI and USB in terms of how the platform
is expanded to create the product. In my opinion, we will need greater
control at the OS level.

What does that mean for this discussion? The point of the ACPI spec
change is to allow for describing things not currently in the
specification without having to add that specific device type to the
spec. This can apply to pinctrl too, and we can update the
pinctrl-baytrail.c driver (for example) to make use of this new data (or
to use the default behavior if it is absent).

In order to make use of these properties, the driver would of course
need the ability to make such changes in kernel space, and it's a short
step from there to making that available more generally.

This is something I've only recently starting discussing with people.

Perhaps this is too specific an example and Olof had something more
general purpose in mind? 
 
-- 
Darren Hart
Intel Open Source Technology Center
