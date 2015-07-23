Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 76E883EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 12:10:29 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 37B44FD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 12:10:28 +0000 (UTC)
Date: Thu, 23 Jul 2015 14:10:25 +0200
From: Pavel Machek <pavel@denx.de>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20150723121025.GA29747@amd>
References: <20150723105711.GB30929@amd>
	<CACRpkdYeud0s6ZyvW8n+0oPQ+S7uP1CTv22wQhvtwfD7iHKL2A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdYeud0s6ZyvW8n+0oPQ+S7uP1CTv22wQhvtwfD7iHKL2A@mail.gmail.com>
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

On Thu 2015-07-23 13:26:32, Linus Walleij wrote:
> On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:
> 
> 
> > FPGAs are common in embedded systems, where they can provide missing
> > hardware interfaces, directly implement functionality, or provide
> > custom hardware modules. These days they become available for servers,
> > too, where they can act as high-performance co-processors (which are
> > tricky to program).
> >
> > People that might be interested:
> 
> Alan Tull <atull@altera.com>
> Is sending patchsets for this, and would be the primary person to
> invite for this topic:
> http://marc.info/?l=linux-kernel&m=143714949226387&w=2

Actually, I had him in my original email, but without full name.
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
