Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4910FACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 19:37:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64FF8F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 19:37:23 +0000 (UTC)
Date: Thu, 9 Jul 2015 12:37:18 -0700
From: Darren Hart <dvhart@infradead.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20150709193718.GD9169@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2879113.fraeuJIr2M@avalon>
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

On Wed, Jul 08, 2015 at 10:45:28PM +0300, Laurent Pinchart wrote:
> On Wednesday 08 July 2015 11:40:11 NeilBrown wrote:
> > On Tue, 07 Jul 2015 17:50:39 -0700 Guenter Roeck wrote:
> > > On 07/07/2015 04:49 PM, Laurent Pinchart wrote:
> > >> On Wednesday 08 July 2015 01:21:40 Peter Huewe wrote:
> > >>> Hi,
> > >>> 
> > >>> In order to continue our traditions I would like to propose again the
> > >>> topic of recruitment, but this time not only limiting to the hobbyists
> > >>> market.
> > >>> 
> > >>> We are definitely short on reviewers and thus have mostly overloaded
> > >>> maintainers.
> > >> 
> > >> I was about to propose a related core topic.
> > >> 
> > >> The reviewing and maintainership process seems to have a hard time
> > >> scaling to the amount of contributions we receive, to the point where
> > >> even well known and respected kernel developers get discourages.
> > >> 
> > >> Quoting http://www.spinics.net/lists/cpufreq/msg10609.html,
> > >> 
> > >> --------------------------------
> > >> 
> > >>> I'm trying to convince management that one of the advantages
> > >>> of mainlining the port is that it is easier to switch to newer
> > >>> kernels. Do you agree with this assertion?
> > >> 
> > >> Yes and no.  If you can get stuff upstream, it should make things
> > >> easier.
> > >> 
> > >> The difficult bit - and time consuming bit - is getting code upstream.
> > >> Even in my position, I'd suggest allowing about five years for that
> > >> activity, and even then don't have expectations of getting everything
> > >> upstream.
> > >> 
> > >> Frankly now, my advice to people would be to just not bother, it's
> > >> *way* too much effort to get everything to an acceptable state,
> > >> especially if the SoC has no support what so ever.
> > >> --------------------------------
> > >> 
> > >> That's a very serious red warning in my opinion.
> > >> 
> > >> Throwing more maintainers, co-maintainers or sub-maintainers at the
> > >> kernel won't magically solve this, as the more core developers a
> > >> subsystem has the more difficult it will be for them to synchronize. I
> > >> would like share experience about good practice rules that have proved to
> > >> be effective.
> > >> 
> > >>> For testers it's usually even worse - how many patches are actually
> > >>> tested? Judging from what I read on LKML not that many.
> > >>> 
> > >>> So we should definitely discuss:
> > >>> - how can we encourage hobbyists to become regular contributors
> > >>> -- how to keep people interested, the drop-out rates are huge.
> > >> 
> > >> We can't keep people interested if even maintainers get discouraged.
> > >> Solving (or at least relieving) that problem won't be enough to keep
> > >> people interested, but it's a prerequisite in my opinion.
> > > 
> > > Problem is multi-dimensional.
> > 
> > Indeed!  I wonder if we can list the dimensions.
> > 
> > Variability: as you say, different people want different things, and
> >    care to different degrees about them.  'checkpatch' and
> >    'CodingStyle' help with some of that (though different people care
> >    differently about checkpatch).  Maybe the MAINTAINERS file could
> >    list the preferred Subject: line and checkpatch flags for each
> >    maintainer.  Then we just need to herd all those wild-cats towards
> >    updating their maintainers entry.
> 
> I've seen maintainers who want to be CC'ed on every patch touching their 
> subsystem, and others who prefer patches being sent to the mailing list only. 
> That would be easy to express in MAINTAINERS and would already help in two 
> fronts. It would lower the amount of noise for maintainers who base their work 
> flow on mailing lists. It would also remove the need for submitters to decide 
> whether to CC maintainers and prevent patches from falling through cracks when 
> the decision is incorrect.

I've come to believe that this is one of many side effects of our dependency on
a completely free form mechanism for the management of our patches, a mechanism
which is becoming harder and harder to setup "correctly" with modern tooling
(since the industry is killing "real email").

I spend a highly disproportionate amount of my time, relative to measurable
quality impact to the kernel, going over the nuances of submitting patches.

1) Must have a complete commit message
2) DCO goes above the ---
3) Include a patch changelog, do so below ---
4) Cc maintainers :-)
5) Checkpatch... checkpatch... checkpatch...
6) Compiler warnings
7) CodingStyle :-)
8) Use ascii or utf8 character encodings

All of these are distractions from reviewing the code. I'm often on version 3 of
a series before I'm actually reviewing content.

I raised this in Dusseldorf with the PREEMPT_RT crowd, and I'll do so here too,
although I suspect it will be met with quite a bit of opposition. I believe our
tooling and processes are good at helping our top level maintainers scale -
which is absolutely critical to the success of Linux - but they inhibit scaling
out and attracting new developers, reviewers, etc.

Our most productive maintainers and contributors, in my understanding, often are
able to spend most of their time on their upstream Linux kernel work. They have
been doing it for a decade or more and have a lot of custom written tools to
help make the processes scale for their particular needs. This is great!

However, we have a lot of tribal knowledge regarding how to interact
successfully with the development model. So much so that many of our lesser
maintainers (like myself) spend a lot of our time as a bridge or proxy to
upstream development, which is too opaque and even enigmatic for them to get
into.

To be a successful contributor, a developer can't just be a capable C developer
with a deep knowledge of their particular product and the surrounding
subsystems, they also have to setup all kinds of email tooling which is harder
and harder to do every year. These tools are typically special-purpose for Linux
development because their corporate solution is incompatible. I just spent a day
writing perl scripts to test my email against vger's silent drop policies and
bisecting the delta between mutt and my git request-pull based automatically
generated email to discover the missing header required for vger to deliver my
pull requests to the list. Developers need to be RFC 2822 savvy and have a
rather deep understanding of SMTP, procmail. Combine that with an infinite
number of ways to accidentally annoy people on the list, from character
encoding, content-type, line length, etc. and the new developer who likely has
many other responsibilities beyond upstreaming their code or reviewing
someone else's code, has a lot of obstacles to overcome that have nothing to do
with the code in question.

While I once found our process to be a measure of the exacting quality of the
Linux kernel development process, I am coming to view it as an obstacle to
scaling out.

I am looking to make some changes in my subsystem. I've requested patchwork to
be enabled, and I'll create a for-review branch and solicit help there. I
already leverage 0-day, but I think it would be great to have something which
parses patches submitted to LKML and tests the 8 items above and more and
automatically responds to the submitter. Nobody should have to spend their time
on those things.

Looking forward a bit, I would love to see some tooling in place for people to
submit patches either via a web form (which eliminates all the email tooling for
submitting patches - which is where the formatting is especially critical) or
through one of the more managed git systems, like gerrit, etc.

I suspect this won't be a particularly popular view, but I spend enough time as
a proxy for competant developers for whom the existing processes are a major
obstacle to getting fully involved, that I think it's worth raising them.

Sorry Laurant, perhaps this should have been a new topic - but I think it fits
with the recruitment subject.

-- 
Darren Hart
Intel Open Source Technology Center
