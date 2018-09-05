Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A6C5BD0D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 08:17:01 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F2158B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 08:17:00 +0000 (UTC)
Date: Wed, 5 Sep 2018 10:16:58 +0200
From: Jan Kara <jack@suse.cz>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20180905081658.GB24902@quack2.suse.cz>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed 05-09-18 08:48:03, Jiri Kosina wrote:
> On Tue, 4 Sep 2018, Sasha Levin via Ksummit-discuss wrote:
> 
> > This is exactly what would happen if you ask Greg to go on some sort of 
> > a schedule - he'll just defer the .Z+1 commits to what would have been 
> > the .Z+2 release, so you don't really win anything by moving to a 
> > stricter schedule.
> 
> You potentially do win one thing, and that's review (or at least 
> possibility of review).
> 
> With current cadence, I'd put all my bets on the fact that everybody is 
> just completely ignoring the e-mails about patches being queued for stable 
> inclusion. It's just way, way too many of them, it's a neverending, 
> contignuous, overwhelming stream.
> 
> If this would be happening at smaller cadence, chances of people (original 
> patch author, reviewers and maintainer) actually investing brain energy 
> into evaluating whether particular patch is suitable for particular stable 
> without introducing backporting regression would be much higher.

So I agree that with current amount of patches in stable tree, the review
is cursory at best. However that does not really seem to be related to
the frequency of stable releases (which is what I believe Laura complains
about in this thread) but rather to the amount of patches going into
stable.

> Also, it's not only the cadence, but the patch selection criteria that 
> contributes to killing the review of stable patches; the bar for stable 
> tree acceptance is much lower than it used to be (really, just look at the 
> criteria formulated in stable-kernel-rules.rst and then match them against 
> the patches that actually land in the tree); so we'd need both, otherwise 
> I think the trend of distros moving away from stable is inevitable (as "no 
> review" basically equals "we're not obsessed about regressions", and 
> distros don't want that, I think).

I think distros usually have established feedback loop (through bugzilla
etc.) so they rely on "if there's a bug, users will report it and we'll fix
it" strategy. So they need to fix proactively only really nasty bugs which
you don't want to ever happen. OTOH for products like embedded devices,
that feedback loop is much weaker (it's difficult for average user to
extract info about the problem from the device) so I can understand they
need to be much more aggressive in picking fixes (since even with current
stable cadence it is a net win in the amount of bugs your wide user base is
going to hit).

So I think the bar for patch acceptance for these two kinds of deployments
is rather different and Greg decided to accomodate more the second one.
Distros now have to decide whether they relax their rules as well or
whether they do their own stricter selection. At least that was the outcome
of the last stable-tree discussion for me...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
