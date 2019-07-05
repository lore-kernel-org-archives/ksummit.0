Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 71FFE110D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 09:26:37 +0000 (UTC)
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
	[209.85.208.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C860B70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 09:26:36 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id 16so8565144ljv.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 05 Jul 2019 02:26:36 -0700 (PDT)
MIME-Version: 1.0
References: <1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<20190703135012.GC2041@mit.edu>
In-Reply-To: <20190703135012.GC2041@mit.edu>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 5 Jul 2019 11:26:22 +0200
Message-ID: <CACRpkdbqxwwKxjELS8WXtFHbq3L5b49XoEJjCdUOgRTNLTR_NQ@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Wed, Jul 3, 2019 at 3:51 PM Theodore Ts'o <tytso@mit.edu> wrote:

> Personally, if there is a case where it will be useful, it would
> actually be better for developers to summarize the comments, and
> design alternatives, considered and rejected, etc., in a cover letter,
> or better yet in the kernel documentation as part of the design doc
> for a largish feature, and then if it is a cover letter e-mailed out
> to the mailing list, include a link to the URL of the cover letter
> with some text so that a human being reading the commit log will know
> that there is something actually worth their time to read, as opposed
> to being treated to a huge amount of legislative history that, at the
> end of the day, be a complete waste of time to someone trying to debug
> a live production problem causing data outages for their company.

I agree. I recently wanted to look into the development history
of the contiguous memory allocator merged in 2012. This patch set
went through 24 (!) iterations duly summarized in the cover letter:
https://lore.kernel.org/lkml/1333462221-3987-1-git-send-email-m.szyprowski@samsung.com/
it not is on mm/cma.c.

The links to the earlier iterations on gmane are dead.

It is one of the more heroic attempts to fix a very real problem
with memory management in embedded and mobile,
the second part of which is hopefully coming to a resolution
with John Stultz work on the ION destaging (ongoing).

The actual commit in the kernel looks like so:
git log c64be2bb1c6eb43c838b2c6d57b074078be208dd

I would have to dig them all out of lore one by one to get
the picture (and I guess I will). The story of CMA is a really
interesting one, and now it is part of the MM core.
Documentation/cma is pretty empty.

Asking Michal, Marek and Joonsoo who all worked hard on
this to summarize the development and make the design
and evolution of this feature understandable would be a
pretty big development task in itself so I'm not gonna.

But maybe we should just merge a document with lore
pointers to Documentation/cma for this feature, and others
of the same impact?

Yours,
Linus Walleij
