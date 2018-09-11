Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 399FC1441
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 23:22:53 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CC38D2C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 23:22:52 +0000 (UTC)
Date: Tue, 11 Sep 2018 16:22:49 -0700
From: Tony Lindgren <tony@atomide.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180911232249.GL5659@atomide.com>
References: <20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1536706409.3511.14.camel@HansenPartnership.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

* James Bottomley <James.Bottomley@HansenPartnership.com> [180911 22:58]:
> On Tue, 2018-09-11 at 16:31 -0400, Steven Rostedt wrote:
> > 
> > Why not do what I do and push to a -pre-next branch when you kick off
> > your local tests?
> 
> Because there's no point.  As I said, when we complete the local
> criteria the branch is ready for integration.  We push to -next and
> *all* the built bots tell us if there are any problems (which I don't
> expect there are but there's room for me to be wrong) ... including
> 0day.  I don't see what the delay and the process hassle would buy us
> if we only get a review by 0day in the -pre-next branch.  It seems more
> efficient to let every bot loose on what we think is mergeable.

Well what we're after is providing a trigger for people writing test
scripts to test individual branches before they get merged into next.

With the goal of trying to keep next usable constantly.

Establishing a branch naming standard like "-pre-next" would allow
the scripts to test the various branches where available before
they hit next and warn about issues.

Regards,

Tony
