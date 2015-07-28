Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9668A279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 14:23:20 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5C995149
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 14:23:18 +0000 (UTC)
Date: Tue, 28 Jul 2015 16:23:15 +0200
From: Pavel Machek <pavel@denx.de>
To: Christoph Lameter <cl@linux.com>
Message-ID: <20150728142315.GA17178@amd>
References: <20150723105711.GB30929@amd>
	<CACRpkdYeud0s6ZyvW8n+0oPQ+S7uP1CTv22wQhvtwfD7iHKL2A@mail.gmail.com>
	<20150723121025.GA29747@amd>
	<CACRpkdaDOUAm_VOd+3H2khDYUsLgNcXKbYMypUTeNL6JbnqCAA@mail.gmail.com>
	<alpine.DEB.2.11.1507231524530.364@east.gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.11.1507231524530.364@east.gentwo.org>
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

On Thu 2015-07-23 15:25:53, Christoph Lameter wrote:
> On Thu, 23 Jul 2015, Linus Walleij wrote:
> 
> > >> > People that might be interested:
> 
> I would be very very interested in the subject matter. Anything that helps
> creating some abstraction layer that allows the open source development of
> tools on top.

Which tools would be that?

So far we have netlists in .rbf format, and open source code to load
them to the FPGA.

Unfortunately, VHDL to .rbf compiler is not open source. (But it would
be great to have one). What other tools are important in this area?

Best regards,
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
