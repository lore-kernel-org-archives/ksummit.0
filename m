Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3F6183D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 10:14:00 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E118B161
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 10:13:59 +0000 (UTC)
Message-ID: <1436955234.31121.25.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: NeilBrown <neilb@suse.com>
Date: Wed, 15 Jul 2015 13:13:54 +0300
In-Reply-To: <20150715122802.56ca2100@noble>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150714104623.GQ11162@sirena.org.uk> <55A51548.4040502@oracle.com>
	<20150714152515.GX11162@sirena.org.uk> <55A52B8B.5060606@oracle.com>
	<20150714113829.4b618d9a@gandalf.local.home>
	<55A53074.7040109@oracle.com>
	<20150714120225.65e489cc@gandalf.local.home>
	<55A5635D.1020600@oracle.com>
	<20150715114946.481f154d@noble> <55A5C0EE.3060803@oracle.com>
	<20150715122802.56ca2100@noble>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Sasha Levin <sasha.levin@oracle.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2015-07-15 at 12:28 +1000, NeilBrown wrote:
> On Tue, 14 Jul 2015 22:09:50 -0400 Sasha Levin <sasha.levin@oracle.com>
> wrote:
> 
> > On 07/14/2015 09:49 PM, NeilBrown wrote:
> > > On Tue, 14 Jul 2015 15:30:37 -0400 Sasha Levin <sasha.levin@oracle.com>
> > > wrote:
> > > 
> > >> On 07/14/2015 12:02 PM, Steven Rostedt wrote:
> > >>> On Tue, 14 Jul 2015 11:53:24 -0400
> > >>> Sasha Levin <sasha.levin@oracle.com> wrote:
> > >>>
> > >>>  
> > >>>>> The point I'm trying to make is that a bad patch in Linus' tree has a wider
> > >>>>> ripple effect than what it were in the past, while Linus might consider a bad
> > >>>>> patch in one of the -rc releases something minor since "no one should be using
> > >>>>> it for production" it really isn't the case any more, those patches can and
> > >>>>> will end up with the folks who don't want to have them.
> > >>> I have to ask, why?
> > >>>
> > >>> Just because a stable tag is on a patch it automatically gets pulled
> > >>> into stable? What about waiting a while before pulling in those
> > >>> patches? Wait till -rc2 is out before pulling in any patches marked for
> > >>> stable in -rc1. Then wait for -rc3 to pull in the patches that were
> > >>> added in -rc2. But don't pull in any patches that has a "Fixes" to it
> > >>> in the next -rc release.
> > >>>
> > >>> That is, when -rc2 is released, only pull in the patches marked for
> > >>> stable in -rc1 if there were no Fixes tags for them in -rc2. And so on.
> > >>>
> > >>> Again, just placing stuff in -next isn't going to solve this. It may
> > >>> help, but you will still have fixes that breaks things when they get
> > >>> into Linus's tree no matter how long they were in -next. This is simply
> > >>> because Linus's tree has a wider audience. But hopefully, the next
> > >>> release candidate will have the fixes for anything that breaks in the
> > >>> previous release candidate.
> > >>
> > >> I agree that this would be enough for -stable.
> > >>
> > >> But wouldn't you agree that the policy of not passing patches in -rc cycles
> > >> through -next at all is incorrect?
> > >>
> > >> I'm fine with not having a minimal time it must live in -next, but I really
> > >> think that it should be in -next at some point.
> > > 
> > > What exactly is the value of sitting in -next for a while.
> > > -next was originally to catch integration issues, and a "simple" bug
> > > fix shouldn't have those.
> > > 
> > > 0-day runs of -next, but then it runs on lots of other trees too.  So
> > > if you want 0-day coverage (which I do), then the rule doesn't have to
> > > "in -next" but only "in a 0-day tree".
> > > 
> > > So what, specifically, is the value that a bug-fix patch gets from
> > > -next that it cannot get elsewhere?
> > 
> > Right, -next was originally there to catch integration but this is no longer
> > the case: between Fengguang's tests which go beyond just building, kernelci.org
> > which also does boot tests on multiple platforms, and various people (myself
> > included) who do various testing on -next, a good chunk of non-integration
> > bugs is getting caught in -next before it even reaches Linus.
> > 
> > We could keep closing our eyes and claiming that -next is there only to deal
> > with the likes of merge conflicts, but reality is different and it's actually
> > better than what you're suggesting the intention of -next is.
> 
> But 0-day doesn't *only* pull from -next.  Neither (as far as I can
> tell) does kernelci.org.
> 
> Maybe I'm suggesting that it is wrong to add all this extra meaning to
> linux-next.
> It is definitely good to have this extra testing before code gets to
> Linus.  It is definitely good to encourage people to make use of it.
> I'm not sure that directing everything through -next (which has a delay
> because it is curated by a human) is the right approach.
> 
> I want bugfixes to go quickly though automated tests (and 0-day is
> delightfully quick - no need to wait for morning in .au for -next), and
> then to Linus to sit for an extended time to be tested by the army of
> beta-testers (who try things that no automated test would ever think
> of).

OK, granted 0day runs on all branches, not just for-next; but how do you
know it's run?  If all tests passed, you don't get a success report.
I'd be happy skipping linux-next for 0day if I knew it had run.

I just use the rule of thumb: must be in -next for two days because then
I know 0day (and the other checkers) have also run.  Effectively this
means that all -rc fixes have to be in by Thursday for the Sunday -rc
release.  Anything after Thursday goes in the next -rc.  Even if I'm
waiting only for 0day, the rule means I know it's run.

I don't consider this to be an onerous delay and it has, on occasion,
caught bogus fixes.

James
