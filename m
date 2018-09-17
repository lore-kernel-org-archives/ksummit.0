Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D52D5C87
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 22:02:10 +0000 (UTC)
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 850EB63D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 22:02:09 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Christoph Hellwig <hch@infradead.org>
Date: Mon, 17 Sep 2018 23:59:22 +0200
Message-ID: <3546549.SGOmEv5aQK@aspire.rjw.lan>
In-Reply-To: <20180917131218.GA23637@infradead.org>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<20180917084335.007012ec@coco.lan>
	<20180917131218.GA23637@infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
	management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday, September 17, 2018 3:12:18 PM CEST Christoph Hellwig wrote:
> On Mon, Sep 17, 2018 at 08:43:35AM -0300, Mauro Carvalho Chehab wrote:
> > While I do agree that the main Kernel development should happen via
> > email on the foreseen future, Why e-mail would be a mandatory
> > requirement for all kinds of Kernel development? 
> > 
> > I don't believe that a single development model fits all cases.
> > 
> > Let's say that someone is using something like github to manage the
> > development of a single driver - or even a low traffic subsystem.
> 
> Sadly enough that already is the case.  The ACPI maintainers refuse
> to take perfectly fine patches and instead redirect people to a
> github version (which doesn't look like the kernel code at all),
> which requires a signup with a not exactly trust-worthy webservice.

That's ACPICA to be precise and that's because it is a separate project really
that's used by the kernel.  It generally is better to get patches to the
upstream first and to the kernel from there.

That's nothing new, though, it's been like that for years.

Cheers,
Rafael
