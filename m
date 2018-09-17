Return-Path: <BATV+6bb343d60c34e84c961e+5503+infradead.org+hch@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D8E9340C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 13:12:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 947AF102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 13:12:19 +0000 (UTC)
Date: Mon, 17 Sep 2018 06:12:18 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20180917131218.GA23637@infradead.org>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon> <20180910211128.GH16557@thunk.org>
	<1939259.kNhvOyGpTJ@avalon> <20180917084335.007012ec@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180917084335.007012ec@coco.lan>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Mon, Sep 17, 2018 at 08:43:35AM -0300, Mauro Carvalho Chehab wrote:
> While I do agree that the main Kernel development should happen via
> email on the foreseen future, Why e-mail would be a mandatory
> requirement for all kinds of Kernel development? 
> 
> I don't believe that a single development model fits all cases.
> 
> Let's say that someone is using something like github to manage the
> development of a single driver - or even a low traffic subsystem.

Sadly enough that already is the case.  The ACPI maintainers refuse
to take perfectly fine patches and instead redirect people to a
github version (which doesn't look like the kernel code at all),
which requires a signup with a not exactly trust-worthy webservice.

I don't think we should care how a subsystem is managed internally
as long as they accept perfectly fine formatted patches by email.
