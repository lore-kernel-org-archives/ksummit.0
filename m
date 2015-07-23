Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1062C4A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 22:06:00 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 428A9EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 22:05:59 +0000 (UTC)
Date: Fri, 24 Jul 2015 00:05:57 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20150723220557.GA21018@amd>
References: <20150723105711.GB30929@amd>
	<CACRpkdYeud0s6ZyvW8n+0oPQ+S7uP1CTv22wQhvtwfD7iHKL2A@mail.gmail.com>
	<20150723121025.GA29747@amd>
	<CACRpkdaDOUAm_VOd+3H2khDYUsLgNcXKbYMypUTeNL6JbnqCAA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdaDOUAm_VOd+3H2khDYUsLgNcXKbYMypUTeNL6JbnqCAA@mail.gmail.com>
Cc: Alan Tull <atull@altera.com>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] FPGAs and how to program them
 from kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu 2015-07-23 15:00:57, Linus Walleij wrote:
> On Thu, Jul 23, 2015 at 2:10 PM, Pavel Machek <pavel@denx.de> wrote:
> > On Thu 2015-07-23 13:26:32, Linus Walleij wrote:
> >> On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:
> >>
> >>
> >> > FPGAs are common in embedded systems, where they can provide missing
> >> > hardware interfaces, directly implement functionality, or provide
> >> > custom hardware modules. These days they become available for servers,
> >> > too, where they can act as high-performance co-processors (which are
> >> > tricky to program).
> >> >
> >> > People that might be interested:
> >>
> >> Alan Tull <atull@altera.com>
> >> Is sending patchsets for this, and would be the primary person to
> >> invite for this topic:
> >> http://marc.info/?l=linux-kernel&m=143714949226387&w=2
> >
> > Actually, I had him in my original email, but without full name.
> >                                                                         Pavel
> 
> Do you mean this:
> 
> On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:
> 
> > Alan Cox
> 
> ;)

Yes, happens easily, but did not happen this time:

> <atull@opensource.altera.com>
> Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Marek Vasut <marex@denx.de>
> Alan Cox

:-).

> (Happens easily, Linus Torvalds asked me to change my name
> to avoid confusion...)

Hmm, at one point, I had both real Linus Torvalds and fake Linus
Torvalds on the cc list. And fake one tried helping me debugging
graphics problems. It was weird.

								Pavel

--
(english)
http://www.livejournal.com/~pavelmachek (cesky, pictures)
http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
