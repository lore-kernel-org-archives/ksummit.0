Return-Path: <metan@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 619858A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 08:44:53 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C5B561F952
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 08:44:52 +0000 (UTC)
Date: Thu, 5 Jun 2014 10:44:38 +0200
From: chrubis@suse.cz
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20140605084437.GB11139@rei.Home>
References: <537F3551.2070104@hitachi.com> <20140528153702.GU23991@suse.de>
	<20140528185748.GA30673@kroah.com>
	<CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>
	<20140605002331.GB24037@kroah.com> <20140605065455.GM10819@suse.de>
	<CAMuHMdVG+vinqgLgNCgNqNUpSb4RDWFMJ=UsAL0+2RbXnjefig@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdVG+vinqgLgNCgNqNUpSb4RDWFMJ=UsAL0+2RbXnjefig@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi!
> That may actually be a good reason not to import LTP...
> I'd imagine you usually want to bisect the kernel to find when a regression
> was introduced in the syscall API.
> 
> Is there a reason not to run the latest version of LTP (unless bisecting
> LTP ;-)? The syscall API is supposed to be stable.

They mostly are (there are some errno changes from time to time, etc.).

But with each release LTP gets more test coverage and considerable
amount of bugfixes.

As we are still in a phase where we are cleaing and reviewing legacy
code, the amount of bugfixes is quite high. I guess that the amount of
bugfixes will drop in a fortcoming years but for now running latest LTP
is very important.

-- 
Cyril Hrubis
chrubis@suse.cz
