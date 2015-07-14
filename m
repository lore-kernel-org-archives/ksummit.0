Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AD6F7AE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 02:46:30 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1B3ACA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 02:46:29 +0000 (UTC)
Date: Tue, 14 Jul 2015 12:46:18 +1000
From: NeilBrown <neilb@suse.com>
To: Greg KH <greg@kroah.com>
Message-ID: <20150714124618.2c75fccf@noble>
In-Reply-To: <20150713205125.GA26074@kroah.com>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<20150713205125.GA26074@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Sasha Levin <sasha.levin@oracle.com>,
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

On Mon, 13 Jul 2015 13:51:25 -0700 Greg KH <greg@kroah.com> wrote:

> On Mon, Jul 13, 2015 at 10:52:10AM +1000, NeilBrown wrote:
> > 
> > I've been bitten by this a couple of times too.  At least two fairly
> > serious md bugs *never* got into a release from Linus, but did get into
> > -stable and at least one into a vendor kernel.
> 
> How did that happen?  Did I not wait for a -rc release?  Did I miss
> something else?  What broke down that caused this?

"rc" is "release candidate", so not a release - at least not the way I
was using the word.
I meant that the bugs never appeared in a x.y, or 2.6.y kernel from
Linus.

> 
> > On Sun, 12 Jul 2015 09:32:11 -0400 Sasha Levin <sasha.levin@oracle.com>
> > wrote:
> > 
> > 
> > > > So it boils down to: "How soon to apply fixes to -stable?", and the trade-off
> > > > between applying fixes early, but risking to break something unknown and new,
> > > > vs. applying fixes late (after more validation), causing more breakage from a
> > > > known issue.
> > > 
> > > That's just one solution, but there are a few more (which is why it's worth discussing
> > > it :) ).
> > > 
> > > Consider also:
> > > 
> > >  - Aligning the stable release process with the kernel where we'd do a few release
> > > candidates for the stable kernel before releasing it.
> > > 
> > >  - Tightening what is allowed to go in as -rc patches, requiring some time in -next
> > > before it even gets into Linus's hands. Even for "serious" things (does it matter if
> > > a fix for a privesc gets in -rc2 or -rc6, beyond that it would be pulled to stable
> > > earlier?)
> > > 
> > >  - Differentiate the type of patches going into "regular" -stable, and LTS?
> > > 
> > 
> > My proposal would be to change the default timing.
> > Currently patches tagged for 'stable' go into the next -stable release
> > after they get into Linus's tree.  You can ask for an exception
> > (sooner, later, different patch) and Greg (or any other stable
> > maintainer) tries to be accommodating.  But you have to remember to ask.
> > 
> > I would rather that the default was that patches don't go into -stable
> > until they have
> >   - been in a full release from Linus and
> >   - been in a Linus's tree for at least 2 weeks.
> >     (or 1 week times the age of the target in releases.
> >      So a fix in 4.4 get to 4.3-stable after a week, 4.2-stable
> >      after 2 weeks etc .... maybe I'm going over-board here).
> > 
> > Many fixes are important but simply aren't that urgent so the two or
> > more weeks is no great cost.
> 
> Really?  Based on the traffic I get, I have people asking me why a patch
> is in Linus's tree is not yet in a -stable release about once a week or
> so.

Certainly some patches are urgent.  And some people are impatient.
Creating a general expectation that "it takes at least 2 weeks unless
the maintainer explicit asks otherwise" would at least give you an easy
concrete answer.



> 
> A year or so ago we made the decision to wait for a patch to show up in
> a -rc release before adding it to -stable because people felt I was
> being "too fast".  So we did that, and now people want to wait even
> longer?  I don't buy it, and feel that will only delay the problem
> another week.
> 
> If you look closely, you will note that for the past 3 months or so,
> I've already been waiting an extra -rc release as it is, just due to
> spare time issues on my side (travel, outreachy review, etc.).  And even
> with that delay (which people do keep bugging me about, see the ALSA
> email this weekend for an example of such a thing), we get bugs
> introduced into -stable releases.
> 
> So I don't think that a manditory 2 week waiting period is going to help
> out much here, sorry.

My focus was more "wait for it to get into a -final release from Linus"
- the "two weeks" was only for fixes that got into -final late.

When i have minor bug fixes I usually keep them for the merge window
but also mark them for 'stable'.
What should I add to request that they don't migrate to -stable until
they are in a -final release from Linus?  I'll make that tagging my
default, and only over-ride if I have a strong reason (and a
reviewed-by)

And I never suggested a "mandatory 2 week" I suggested a "default 2
week".  Very different.


> 
> If it gets into Linus's tree you had better think it is correct,
> especially if you tag it for stable.  Yes, bugs happen, that's part of
> life, but let's not slow down everyone just because we get 1-2 bugs
> introduced into -stable every 6 months or so.
> 
> > If a developer/maintainer thinks a fix is urgent, then they need to
> > explicitly ask for a quick release, and that could be as easy as saying:
> > 
> >   Cc: stable@vger.kernel.org (URGENT v3.0 and later)
> 
> No, do the opposite, which I have seen and follow:
>     Cc: stable@v.k.o # wait for -rc5 to be out
> 
> or even:
>     Cc: stable@v.k.o # wait for -final to be out for 2 weeks
> 
> Mark the things that you think should be delayed, not the ones that you
> think should be urgent.

But most should be delayed and few are really urgent....

I'll try to make the later of your examples my default.

> 
> That being said, if I have missed a patch that you did mark for stable
> and want to see it go in faster (not waiting for a -rc or for my queue
> to drain down to your patch), just drop an email to stable@ and let me
> know, and I will make it happen.
> 
> > I don't think that tightening the criteria for going into any
> > particular tree will really help.  I'm not sure there is even real
> > agreement on what is or is not allowed in -stable (we have clearly
> > written rules, but the practice is really whatever a maintainer
> > chooses).
> 
> If I am not following the rules that are documented, please let me know,
> as I really try hard to do so.  But it's a tough balancing act here,
> some patches don't really fall into the defined rules, yet fix issues
> that people hit, or fix performance issues, or other things.  I take
> those on a case-by-case basis, as rules don't work for everything.

I have no reason to think you aren't following the rules as documented
and have always found you suitably responsive and helpful.

I'm just suggesting that maybe the current rules aren't the best
possible, and am looking to see how other people respond to the
suggestion.  I think I've decided how I'll respond to the suggestion
for now.

Thanks,
NeilBrown
