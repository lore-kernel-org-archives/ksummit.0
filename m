Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 63375BCA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 14:23:31 +0000 (UTC)
Received: from outbound3.ore.mailhop.org (erouter8.ore.mailhop.org
	[54.187.218.212])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id C3475ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 14:23:30 +0000 (UTC)
Date: Wed, 8 Jul 2015 14:07:27 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Peter Huewe <PeterHuewe@gmx.de>
Message-ID: <20150708140727.GH23515@io.lakedaemon.net>
References: <201507080121.41463.PeterHuewe@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <201507080121.41463.PeterHuewe@gmx.de>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Wed, Jul 08, 2015 at 01:21:40AM +0200, Peter Huewe wrote:
> Hi,
> 
> In order to continue our traditions I would like to propose again the topic of 
> recruitment, but this time not only limiting to the hobbyists market.

Agreed.  I have a few fresh thoughts on this area.  Not necessarily good
ones, but at least fresh. :-P

> We are definitely short on reviewers and thus have mostly overloaded 
> maintainers.

Ack.

> For testers it's usually even worse - how many patches are actually tested?
> Judging from what I read on LKML not that many.
> 
> So we should definitely discuss:
> - how can we encourage hobbyists to become regular contributors
> -- how to keep people interested, the drop-out rates are huge.

Here we need to have the correct mindset.  Kernel development is hard,
detailed work.  It's very rewarding, but simply put, most people aren't
cut out to do it.  I view the dropout rate as a *good* thing.  It's a
_selection_ process more than a education/training process.

With most of the hard jobs in life, take a look at the
training/education program, and you'll see it:  80% drop out rate?
That's selection.  Kernel work is one of those 'hard jobs'.

This is important to realize because it changes how we view recruitment.
We shouldn't be trying to keep everybody we recruit.  Rather, we should
be giving more people trial runs and see how they work out as they learn
the process.

iow, if an 80% drop out rate gives us the caliber of dev we need for the
long term health of the community, then it's a numbers game.  Say we saw
40 new people last year, which turned into 8 regular contributors.  Now
we want to double that.  We can lower the standard to get 16 out
of 40, yuck.  Or, we can outreach to 80 for trial runs, and get 16.

The discussion, I think, would revolve around: Am I smoking crack, or
does everyone agree with this view?  How can we create slots for
newcomers to contribute real changes?  Where do we reach out to for
candidates?  And, how do we quantify success or failure at some point in
the future?

> - encourage regular contributors to become reviewers and testers
> - reviewers to become co-maintainers and finally maintainers (once the 
> original maintainer is used up or moves up/on)

heh.  'used up' :-)

> From the 4.1 kernel report by jon corbet:
> "over 60% of the changes going into this kernel passed through the hands of 
> developers working for just five companies. This concentration reflects a 
> simple fact: while many companies are willing to support developers working on 
> specific tasks, the number of companies supporting subsystem maintainers is 
> far smaller. Subsystem maintainership is also, increasingly, not a job for 
> volunteer developers.."

Well, I disagree.  Not because I think Jon is wrong, but because we need
to bring in new blood *somewhere*.  co-maintainer/reviewer is one of
many possibilities.  If we don't have enough slots for newcomers
(especially on a trial basis), that's our fault.

I think it's also worth noting how many of those kernel developers
started out as hobbyist/volunteers.  The truth is, once you've been
around a few cycles as a hobbyist/volunteer, job offers come out of
nowhere.  So a statistic I'd love to see is the percentage of
conversions.

> -> How do we get companies to actively sponsor subsystem maintainership - if 
> only at driver or subsubsystem level.
> e.g.: I unfortunately failed at that with my company :/

meh, companies are fickle.  I think it's enough for them to be paying a
salary of a kernel dev/maintainer.  It's a cost they can quantify the
benefits of.  If a company does a Crazy Ivan [1], then the kernel dev
goes to work someplace else.  iow, it's the human that matters and can
be relied on, not the company.

> Also I would be interested in:
> - What are the effects of the Eudyptula Challenge? how many people are still 
> actively contributing (more than whitespace changes)

If the Eudyptula folks have statistics, I'd love to see them.

> Nominations:
> Jason Cooper           (auto-nominated), last years 'speaker'

I think it was the year before last, I couldn't make it last year. :-(

thx,

Jason.

[1] https://en.wikipedia.org/wiki/Crazy_Ivan (rapid, unexpected course
    changes)
