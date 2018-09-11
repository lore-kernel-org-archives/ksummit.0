Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6981513E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:45:01 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 03DE03F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:45:00 +0000 (UTC)
Date: Tue, 11 Sep 2018 20:44:52 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Dave Hansen <dave@sr71.net>
In-Reply-To: <d11c38ae-2ea7-7d26-befa-3973ae9e4353@sr71.net>
Message-ID: <alpine.DEB.2.21.1809112040100.1427@nanos.tec.linutronix.de>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<20180906225531.GB2251@localhost.localdomain>
	<CAMuHMdVqhOq11fxOf7RUXEq+oT5A2gGKSVx=FadtiVz23AywHA@mail.gmail.com>
	<20180910232652.GC1764@localhost.localdomain>
	<20180911084536.GB23570@kroah.com>
	<d11c38ae-2ea7-7d26-befa-3973ae9e4353@sr71.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 11 Sep 2018, Dave Hansen wrote:
>
> Giving timelines is also very important.  Folks spend a lot of time
> counting months and weeks back on the calendar from a disclosure date.
> The timeline gives them a discrete date to *do* something.

Giving a timeline whatfor? How long it takes to fix something? We need to
know about the issue first in order to do so.

So the simple answer here is ASAP and not when some disclosure manager
thinks it's about time. I rather have the fix simmering in my hidden
repository for a month or two than having to rush things toward the
disclosure date or when the embargo breaks early.

But then if we know what it is, it might be trivial to give an ETA and it
might be complete guess work for a while until we wrapped our brains around
it.

Thanks,

	tglx
