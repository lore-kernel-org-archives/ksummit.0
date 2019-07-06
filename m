Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2D5D8169B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 04:42:48 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A1D1670D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 04:42:47 +0000 (UTC)
Date: Sat, 6 Jul 2019 00:42:38 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20190706044238.GE11665@mit.edu>
References: <37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<20190703135012.GC2041@mit.edu>
	<CACRpkdbqxwwKxjELS8WXtFHbq3L5b49XoEJjCdUOgRTNLTR_NQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdbqxwwKxjELS8WXtFHbq3L5b49XoEJjCdUOgRTNLTR_NQ@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 05, 2019 at 11:26:22AM +0200, Linus Walleij wrote:
> I would have to dig them all out of lore one by one to get
> the picture (and I guess I will). The story of CMA is a really
> interesting one, and now it is part of the MM core.
> Documentation/cma is pretty empty.
> 
> Asking Michal, Marek and Joonsoo who all worked hard on
> this to summarize the development and make the design
> and evolution of this feature understandable would be a
> pretty big development task in itself so I'm not gonna.

I assume you want something more detailed than this article on LWN?

	https://lwn.net/Articles/486301/

I vaguely remember there was a presentation at Plumbers, but of course
that was a long time ago, before we were regularly recording
presentations at LPC.

It may be that best sort of thing will be conference presentations
and/or refereed papers.  For example, there will be a 2019 Usenix ATC
about EROFS.

	https://www.usenix.org/conference/atc19/presentation/gao

Of course, asking developers to write refereed papers for submission
to Usenix, FAST, etc., or even giving a presentation at Plumbers is
also an awful lot to ask.  :-)

					- Ted
