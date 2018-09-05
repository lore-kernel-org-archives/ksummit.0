Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AD05FC9E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 06:48:06 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4013EA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 06:48:06 +0000 (UTC)
Date: Wed, 5 Sep 2018 08:48:03 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Sasha Levin <Alexander.Levin@microsoft.com>
In-Reply-To: <20180904213340.GD16300@sasha-vm>
Message-ID: <nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Tue, 4 Sep 2018, Sasha Levin via Ksummit-discuss wrote:

> This is exactly what would happen if you ask Greg to go on some sort of 
> a schedule - he'll just defer the .Z+1 commits to what would have been 
> the .Z+2 release, so you don't really win anything by moving to a 
> stricter schedule.

You potentially do win one thing, and that's review (or at least 
possibility of review).

With current cadence, I'd put all my bets on the fact that everybody is 
just completely ignoring the e-mails about patches being queued for stable 
inclusion. It's just way, way too many of them, it's a neverending, 
contignuous, overwhelming stream.

If this would be happening at smaller cadence, chances of people (original 
patch author, reviewers and maintainer) actually investing brain energy 
into evaluating whether particular patch is suitable for particular stable 
without introducing backporting regression would be much higher.

Also, it's not only the cadence, but the patch selection criteria that 
contributes to killing the review of stable patches; the bar for stable 
tree acceptance is much lower than it used to be (really, just look at the 
criteria formulated in stable-kernel-rules.rst and then match them against 
the patches that actually land in the tree); so we'd need both, otherwise 
I think the trend of distros moving away from stable is inevitable (as "no 
review" basically equals "we're not obsessed about regressions", and 
distros don't want that, I think).

But then, yes, it might be that that's actually not a problem :)

Thanks,

-- 
Jiri Kosina
SUSE Labs
