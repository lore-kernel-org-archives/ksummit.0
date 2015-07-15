Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2ECD3BE8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 15:59:44 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9DB3A1F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 15:59:43 +0000 (UTC)
Date: Wed, 15 Jul 2015 08:59:39 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20150715155939.GA27306@roeck-us.net>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<20150713185118.GK11162@sirena.org.uk>
	<CAOesGMhFNjK2V23ZRN=KOfsYc=JawLwWf_x7wvHzBjP0UpbW7A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOesGMhFNjK2V23ZRN=KOfsYc=JawLwWf_x7wvHzBjP0UpbW7A@mail.gmail.com>
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

On Wed, Jul 15, 2015 at 10:52:13AM -0400, Olof Johansson wrote:
> On Mon, Jul 13, 2015 at 2:51 PM, Mark Brown <broonie@kernel.org> wrote:
> > On Mon, Jul 13, 2015 at 02:21:32PM -0400, Steven Rostedt wrote:
> >
> >> I disagree. I thought next was a place to have integration of new
> >> development, and not just a place to test. Really, how many people test
> >> next compared to Linus's tree? I trip over bugs all the times in
> >> Linus's tree that's been in -next for almost a whole release cycle.
> >
> >> The only bugs that I find that come from -next is integration issues,
> >> where an interface changes and another subsystem stumbles over it.
> >> That's exactly what it was for and what it's good at.
> >
> > In the embedded space it's much more common to track -next as people are
> > often working with multiple subsystems so the integration is important.
> > Most of my code is developed against -next then moved to topic branches
> > for submission.
> >
> > We also catch quite a lot of issues in -next as a result of the work on
> > boot testing that kernelci.org and Olof's bots are doing, hopefully
> > that'll start to build out to include test suites like kselftest (I know
> > there's work in progress there but no ETA as of yet).  Things get
> > exposed to a lot more systems and configurations than individual
> > maintainers have access to which can shake out issues in code that deals
> > with hardware.
> 
> I've stopped running -stable releases through the tester. It didn't
> fit the way I kept track of what's been built very well and it was
> hard to capture a useful state in which to test.
> 
> For a while I tried to capture the current-state-of-the-queue from
> gregkh's public quilt series ever so often, but it's quite churny.
> There's an -rc that's posted for review but not tagged and not
> provided as a git branch of applied patches, so it's hard to
> automatically test just those.
> 
Seems to work quite nicely for me. Sure, there is churn, but it tends
to come in bursts which can be handled easily. The posted -rc matches
the tip of the quilt series, so my auto-builder picks it up automatically.

I use a two-stage approach for my testing: A change in the quilt tree
triggers a script which converts the quilt tree into a git tree. The
changes in the git tree are then picked up by the actual builder(s).
Changes from the quilt tree are only picked up after the quilt tree
has not changed for a couple of hours (to match Greg's workflow).
This takes care of the churn.

Guenter
