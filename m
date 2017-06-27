Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7E5B9A7B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 19:46:30 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E96ADFC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 19:46:29 +0000 (UTC)
Date: Tue, 27 Jun 2017 12:46:22 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Message-ID: <20170627194622.GE16189@roeck-us.net>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
	<alpine.LSU.2.20.1706221422360.30709@cbobk.fhfr.pm>
	<20170627175321.GS21846@wotan.suse.de>
	<1498588234.18166.29.camel@HansenPartnership.com>
	<20170627190202.GV21846@wotan.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170627190202.GV21846@wotan.suse.de>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug reporting feedback
 loop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 27, 2017 at 09:02:02PM +0200, Luis R. Rodriguez wrote:
> On Tue, Jun 27, 2017 at 11:30:34AM -0700, James Bottomley wrote:
> > On Tue, 2017-06-27 at 19:53 +0200, Luis R. Rodriguez wrote:
> > > The Kernel Of The Day (KOTD) helps *a lot*. On the XFS front I can
> > > say that 90% of the time so far most bugs can simply be reverse
> > > bisected by testing an issue with KOTD and if it works then doing a
> > > reverse bisect. So much so that I actually *yearn* for the day we get
> > > an actual real valid upstream bug. The other 10% BTW consist of "bad
> > > backports" so far.
> > > 
> > > But one day it comes that KOTD is not sufficient, and there is that
> > > pesky delta on linux-next which *might* also have a fix for you.
> > > Problem is booting linux-next can often fail.
> > 
> > Just a minute: I'd like to question that assumption. -next is supposed
> > to be all the upstream trees targetting the merge window.  Boot failure
> > regressions in those trees are very rare.
> 
> Like I said, we've gotten better. For my day to day development systems it
> is true that linux-next can be groovy. When it comes to actually booting it
> on a real system being evaluated though, your luck varies. My luck recently
> was not so great.
> 
> Guenter Rock maintains a map of both kernel compile and qemu run time
> testign of linux-next accross a different set of architectures, he can
> perhaps tell you better how things look these days on his map. This is
> outside of the scope of the architectures that Stephen tests AFAICT.
> 

There are almost always some build and/or runtime failures in -next. Right now
we are lucky (the current qemu boot failures are really build failures).
For reference, from next-20170627:

Build results:
	total: 145 pass: 140 fail: 5
Failed builds:
	arm:allmodconfig
	arm64:allmodconfig
	hexagon:defconfig
	hexagon:allnoconfig
	parisc:generic-64bit_defconfig

Qemu test results:
	total: 122 pass: 120 fail: 2
Failed tests:
	arm:versatilepb-scsi:versatile_defconfig:versatile-pb
	sh:rts7751r2dplus_defconfig

I'd say maybe once or twice in a relase cycle I see half or more of
the qemu tests failing.

> > Fine, not non-existent so
> > that's why we run testing and inspection on them, but "often fail" is a
> > mischaracterisation.  I think the correct characterisation would be
> > "rarely fail", but I can compromise on "sometimes fail".
> 
> That's fair, how about this: for my development system linux-next rarely fails
> now. For production test system, linux-next sometimes fails :D
> 
Depends on the scope. If "fail" refers to x86_64:defconfig, I would agree to
"rarely" (say, maybe once or twice a month on average ). If "fail" refers to
"one or more of my qemu boot tests fail", "almost always" would be more
accurate. If "fail" refers to "one or more of my build or qemu boot
tests fail", it would be "pretty much always".

> > >  Based on personal experience with testing linux-next more regularly
> > > on more machines over the years I can say we are getting much better
> > > with this these days, but every now and then its just poop.
> > 
> > Really?  Even assuming it to be true for the sake of argument, next
> > stop for that "poop" is mainline via the merge window, so perhaps
> > detecting we have a problem before it hits would be a valuable service.
> 
> Of course. Its why everyone and their uncles should be giving linux-next
> a go often.
> 
> > >  That said, we have a not-so-well known daily linux-next KOTD rpm
> > > type of tree as well. So I recommend that as a next step.
> > > 
> > > Due to the possible failures possible with linux-next, or random
> > > regressions with other subsystems you often only want to test *one*
> > > subsystem. To help with this there are two options I'm aware of:
> > 
> > I still don't see what's wrong with booting -next?  Fine, there will
> > occasionally be the rare boot failure regressions, in which case you
> > can move on to all your other stuff (which is very time intensive), but
> > if -next boots fine, whether the bug is present or not tells you
> > something and if it's not present, it saves you a lot of time which is
> > very valuable because we shouldn't be wasting the time of our most
> > valuable test group (those which are close to mainline).
> 
> Note how Laura mentioned they actually skip rc1. Even though my own
> experience these days is linux-next is *more stable* than rc1, its
> can't be a surprise linux-next can have issues.
> 
I tend to agree, as long as you refer to -next a few days before the commit
window opens. Sometimes there is a flurry of commits showing up in the last
-next before the commit window opens (or in the first -next after it
opened). Those commits tend to make it into mainline almost immediately,
and my non-scientific impression is that they cause a high percentage of
failures.

Guenter

> We're talking about *all* development ramp up. One commit is bound
> to have a pesky stupid thing merged.
> 
> > So I think it would be a useful service for distro's to provide a
> > release of -next that users can try.  Perhaps it doesn't have to be
> > daily, but at least weekly would be enormously helpful.
> 
> Daily. No questions asked.
> 
> A) KOTD --> B) linux-next --> mailing list
> 
>   Luis
