Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F06DEE48
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 14:14:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A47BC764
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 14:14:56 +0000 (UTC)
Date: Mon, 17 Sep 2018 11:14:52 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20180917111452.41b16347@coco.lan>
In-Reply-To: <20180917131218.GA23637@infradead.org>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon> <20180910211128.GH16557@thunk.org>
	<1939259.kNhvOyGpTJ@avalon> <20180917084335.007012ec@coco.lan>
	<20180917131218.GA23637@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

Em Mon, 17 Sep 2018 06:12:18 -0700
Christoph Hellwig <hch@infradead.org> escreveu:

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
> 
> I don't think we should care how a subsystem is managed internally
> as long as they accept perfectly fine formatted patches by email.

Fully agreed.

IMO, a mandatory requirement is that anyone that uses a development model
that would refuse a perfectly fine patch sent via a plain e-mail from a
non-subscriber should ensure that, if such email is ever received, it
will be properly handled.

IMO, we should add such rule on our patch development process docs (if
not there already), and if abuses are happening, see what it can be done
to fix it.

In other words, in the case of a moderated ML, it should be up to the
ML maintainers to accept valid patch emails, without requiring
occasional contributors to subscribe. 

The same rule should apply to github-like development: it should be
up to the maintainers to do whatever it is needed for such patches
to be handled on their development model.

Thanks,
Mauro
