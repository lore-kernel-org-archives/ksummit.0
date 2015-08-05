Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C97027F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 18:28:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3A0DE153
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 18:28:51 +0000 (UTC)
Date: Wed, 5 Aug 2015 00:48:58 -0700
From: Darren Hart <dvhart@infradead.org>
To: Fengguang Wu <fengguang.wu@intel.com>
Message-ID: <20150805074858.GA3607@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud>
	<20150803123805.GB3978@wfg-t540p.sh.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150803123805.GB3978@wfg-t540p.sh.intel.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 03, 2015 at 08:38:05PM +0800, Fengguang Wu wrote:
> On Thu, Jul 09, 2015 at 01:11:27PM -0700, josh@joshtriplett.org wrote:
> > On Thu, Jul 09, 2015 at 12:37:18PM -0700, Darren Hart wrote:
> > > On Wed, Jul 08, 2015 at 10:45:28PM +0300, Laurent Pinchart wrote:
> > > > On Wednesday 08 July 2015 11:40:11 NeilBrown wrote:
> > > > > Indeed!  I wonder if we can list the dimensions.
> > > > > 
> > > > > Variability: as you say, different people want different things, and
> > > > >    care to different degrees about them.  'checkpatch' and
> > > > >    'CodingStyle' help with some of that (though different people care
> > > > >    differently about checkpatch).  Maybe the MAINTAINERS file could
> > > > >    list the preferred Subject: line and checkpatch flags for each
> > > > >    maintainer.  Then we just need to herd all those wild-cats towards
> > > > >    updating their maintainers entry.
> > > > 
> > > > I've seen maintainers who want to be CC'ed on every patch touching their 
> > > > subsystem, and others who prefer patches being sent to the mailing list only. 
> > > > That would be easy to express in MAINTAINERS and would already help in two 
> > > > fronts. It would lower the amount of noise for maintainers who base their work 
> > > > flow on mailing lists. It would also remove the need for submitters to decide 
> > > > whether to CC maintainers and prevent patches from falling through cracks when 
> > > > the decision is incorrect.
> > > 
> > > I've come to believe that this is one of many side effects of our dependency on
> > > a completely free form mechanism for the management of our patches, a mechanism
> > > which is becoming harder and harder to setup "correctly" with modern tooling
> > > (since the industry is killing "real email").
> > > 
> > > I spend a highly disproportionate amount of my time, relative to measurable
> > > quality impact to the kernel, going over the nuances of submitting patches.
> > > 
> > > 1) Must have a complete commit message
> > > 2) DCO goes above the ---
> > > 3) Include a patch changelog, do so below ---
> > > 4) Cc maintainers :-)
> > > 5) Checkpatch... checkpatch... checkpatch...
> > > 6) Compiler warnings
> > > 7) CodingStyle :-)
> > > 8) Use ascii or utf8 character encodings
> > > 
> > > All of these are distractions from reviewing the code. I'm often on version 3 of
> > > a series before I'm actually reviewing content.
> > > 
> > > I raised this in Dusseldorf with the PREEMPT_RT crowd, and I'll do so here too,
> > > although I suspect it will be met with quite a bit of opposition. I believe our
> > > tooling and processes are good at helping our top level maintainers scale -
> > > which is absolutely critical to the success of Linux - but they inhibit scaling
> > > out and attracting new developers, reviewers, etc.
> > > 
> > > Our most productive maintainers and contributors, in my understanding, often are
> > > able to spend most of their time on their upstream Linux kernel work. They have
> > > been doing it for a decade or more and have a lot of custom written tools to
> > > help make the processes scale for their particular needs. This is great!
> > > 
> > > However, we have a lot of tribal knowledge regarding how to interact
> > > successfully with the development model. So much so that many of our lesser
> > > maintainers (like myself) spend a lot of our time as a bridge or proxy to
> > > upstream development, which is too opaque and even enigmatic for them to get
> > > into.
> > [...]
> > > I am looking to make some changes in my subsystem. I've requested patchwork to
> > > be enabled, and I'll create a for-review branch and solicit help there. I
> > > already leverage 0-day, but I think it would be great to have something which
> > > parses patches submitted to LKML and tests the 8 items above and more and
> > > automatically responds to the submitter. Nobody should have to spend their time
> > > on those things.
> > > 
> > > Looking forward a bit, I would love to see some tooling in place for people to
> > > submit patches either via a web form (which eliminates all the email tooling for
> > > submitting patches - which is where the formatting is especially critical) or
> > > through one of the more managed git systems, like gerrit, etc.
> > 
> > I would love to see this.  I don't think it makes sense for the flow
> > from subsystem maintainers to Linus or similar to use these tools;
> > anyone capable of saying "please pull" *probably* doesn't need most of
> > this.  However, for people who primarily interact with maintainers via
> > patch mails, some kind of automated CI bot, integrated with Gerrit or
> > github or similar, would filter out a substantial number of painful bits
> > before they show up.
> > 
> > Consider a set of scripts or services that could easily be wired into
> > either a Gerrit install or a GitHub hook, so that rather than spending
> > time sorting out SMTP and basic patch formatting, people could git push
> > to a repository branch they control, get automated feedback on what
> > needs fixing, and when all of the mechanical issues are sorted out that
> > same service can help them send a properly formatted mail series (with
> > cover letter) to the right set of people.
> > 
> > It would take some work to initially set up, but the result should
> > actually save maintainer time by avoiding the need to comment on
> > mechanical correctness issues.
> > 
> > That same bot could fairly easily be wired to a "test" mailing list,
> > capturing mailed patch series and running them through the same tests,
> > so that people comfortable with the email part of the workflow could
> > mail patches to that list to have them automatically checked *before*
> > mailing LKML.  And unlike mailing LKML, there would be no stigma
> > attached to iterating and sending multiple mails to that list while
> > trying to get the details right.
> > 
> > Bonus if this is also wired into the 0day bot, so that you also find out
> > if you introduce a new warning or error.
> 
> Sure, if someone is to setup the web form or test mailing list or
> both, 0day can happily run all supported tests on them, including
> checkpatch.pl etc. that we normally don't run for the regular git
> pushes.

Fengguang,

Do we have sufficient isolation/security in place to test any patch from anyone
on a mailing list? I believe someone else raised this concern previously, but
it's been a while and I don't remember who it was.

-- 
Darren Hart
Intel Open Source Technology Center
