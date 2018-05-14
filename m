Return-Path: <boris.brezillon@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CF0F12575
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 08:50:59 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 097981B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 14 May 2018 08:50:58 +0000 (UTC)
Date: Mon, 14 May 2018 10:48:03 +0200
From: Boris Brezillon <boris.brezillon@bootlin.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20180514104803.23d2a8a3@bbrezillon>
In-Reply-To: <CAMuHMdVwA6jK1fPu3Dzc4-+_kWv1yTNvOGJP811Fdyrrnbc18w@mail.gmail.com>
References: <20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<nycvar.YFH.7.76.1805101802150.27054@cbobk.fhfr.pm>
	<20180510164722.GH8514@sasha-vm>
	<CAMuHMdWDNjsba29id4Svjy_tauKivWDUixub3qf82Nx_6rYueA@mail.gmail.com>
	<CAMuHMdUHK=kmJB-=G-Y7YEneZityMzi5YZ3nJFD6uCs61bOaiQ@mail.gmail.com>
	<20180514101237.5df1e0d7@bbrezillon>
	<CAMuHMdWQTOioXPmWX+_jetECpp9=SCK_BfWq9kJ7xj3WTnB_ng@mail.gmail.com>
	<20180514103428.55285a70@bbrezillon>
	<CAMuHMdVwA6jK1fPu3Dzc4-+_kWv1yTNvOGJP811Fdyrrnbc18w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

+Fengguang

On Mon, 14 May 2018 10:40:10 +0200
Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> Hi Boris,
> 
> On Mon, May 14, 2018 at 10:34 AM, Boris Brezillon
> <boris.brezillon@bootlin.com> wrote:
> > On Mon, 14 May 2018 10:29:04 +0200
> > Geert Uytterhoeven <geert@linux-m68k.org> wrote:  
> >> On Mon, May 14, 2018 at 10:12 AM, Boris Brezillon
> >> <boris.brezillon@bootlin.com> wrote:  
> >> > On Mon, 14 May 2018 10:00:30 +0200
> >> > Geert Uytterhoeven <geert@linux-m68k.org> wrote:  
> >> >> On Tue, May 1, 2018 at 10:00 PM, Sasha Levin
> >> >> <Alexander.Levin@microsoft.com> wrote:  
> >> >> > On Tue, May 01, 2018 at 03:44:50PM -0400, Theodore Y. Ts'o wrote:  
> >> >> >>On Tue, May 01, 2018 at 04:38:21PM +0000, Sasha Levin wrote:  
> >> >> > What's worse is that that commit is tagged for stable, which means
> >> >> > that (given Greg's schedule) it may find it's way to -stable users
> >> >> > even before some -next users/bots had a chance to test it out.  
> >> >>
> >> >> I just noticed a case where a commit was picked up for stable, while a
> >> >> bot had flagged it as a build regression 18 hours earlier (with a CC to
> >> >> lkml).  
> >> >
> >> > Also, this patch has been on a tree that I know is tested by Fengguang's
> >> > robots for more than a week (and in linux-next for 2 days, which, I
> >> > agree, is probably not enough), and still, I only received the bug
> >> > report when the patch reached mainline. Are there tests that are only
> >> > run on Linus' tree?  
> >>
> >> Have your received a success report from Fengguang's bot, listing all
> >> configs tested (the broken one should be included; it is included in the
> >> configs tested on my branches)?  
> >
> > Yes I did (see below).
> >  
> > -->8--  
> > From: kbuild test robot <lkp@intel.com>
> > To: Boris Brezillon <boris.brezillon@bootlin.com>
> > Subject: [bbrezillon-0day:mtd/fixes] BUILD SUCCESS  fc3a9e15b492eef707afd56b7478001fdecfe53f
> > Date: Mon, 07 May 2018 20:05:52 +0800
> > User-Agent: Heirloom mailx 12.5 6/20/10
> >
> > tree/branch: https://github.com/bbrezillon/linux-0day  mtd/fixes
> > branch HEAD: fc3a9e15b492eef707afd56b7478001fdecfe53f  mtd: rawnand: Make sure we wait tWB before polling the STATUS reg
> >
> > elapsed time: 49m
> >
> > configs tested: 142  
> 
> But the failed config (m68k/allmodconfig) is not listed?

Yes, that's my point. It seems that some configs are only rarely
(never?) tested on my linux-0day tree (probably because they take longer
to build), and I should only take kbuild robot results as an indication
not a guarantee.
