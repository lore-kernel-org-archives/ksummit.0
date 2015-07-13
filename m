Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 714E7AF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 22:28:44 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 5BCDD11A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 22:28:43 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org, NeilBrown <neilb@suse.com>
Date: Tue, 14 Jul 2015 00:55:18 +0200
Message-ID: <2357837.dgQRuM7BY1@vostro.rjw.lan>
In-Reply-To: <20150713151012.6da5f019@noble>
References: <55A1407E.5080800@oracle.com> <55A33E48.2040202@oracle.com>
	<20150713151012.6da5f019@noble>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Sasha Levin <sasha.levin@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday, July 13, 2015 03:10:12 PM NeilBrown wrote:
> On Mon, 13 Jul 2015 00:27:52 -0400 Sasha Levin <sasha.levin@oracle.com>
> wrote:
> 
> > On 07/12/2015 08:52 PM, NeilBrown wrote:
> > > My proposal would be to change the default timing.
> > > Currently patches tagged for 'stable' go into the next -stable release
> > > after they get into Linus's tree.  You can ask for an exception
> > > (sooner, later, different patch) and Greg (or any other stable
> > > maintainer) tries to be accommodating.  But you have to remember to ask.
> > > 
> > > I would rather that the default was that patches don't go into -stable
> > > until they have
> > >   - been in a full release from Linus and
> > >   - been in a Linus's tree for at least 2 weeks.
> > >     (or 1 week times the age of the target in releases.
> > >      So a fix in 4.4 get to 4.3-stable after a week, 4.2-stable
> > >      after 2 weeks etc .... maybe I'm going over-board here).
> > > 
> > > Many fixes are important but simply aren't that urgent so the two or
> > > more weeks is no great cost.
> > 
> > I'd actually argue that Linus shouldn't be pulling *anything* that wasn't in
> > -next for 2+ weeks. There's no good excuse to want something pulled immediately
> > as the only benefit Linus's tree provides in that aspect is the wider testing
> > it receives, so it would make sense to weed out more bugs in -next before they
> > get to Linus.
> 
> As long as there is a clear 2 week window between a patch being "out
> there for wide testing" and being auto-pulled into a -stable, I would
> see an improvement.
> 
> However I'm not at all convinced that being in -next is really "out
> there for wide testing".

Agreed.  I'm not even sure about -rcs from Linus for that matter.

Unfortunately, -stable often get's wide testing before anything else.

> Certainly some testing happens in -next, but my understand is that it is
> mainly about integration testing, not burn-in testing.
> 
> Isn't the point of the 2-week merge window is that we all stop writing
> more bugs and instead start testing to find each others bugs?  You seem
> to want to make the previous two weeks fill that role.  I don't think
> that would work.

I guess the idea is to avoid exposing -stable users to commits that
mainline users have not been really exposed to yet.

It really is a matter of what is marked for -stable IMO.  Some of those things
should not really carry a "Cc: stable" tag until they've received some wider
testing in the mainline.


> > I think that this is a small mind-shift from thinking about Linus's tree as
> > an integration tree to considering it as mostly bug-free code, and stop
> > merging in risky patches. We already have -next for that.
> 
> I certainly do see Linus's tree as mostly bug-free code.  Certainly I
> don't submit something until I'm reasonably confident.  Unfortunately I
> am sometimes wrong.  Usually by rc8 it is a lot closer to bug-free.
> That steady improvement is the whole point.  So going from rc8 to
> stable makes lots more sense than going from rc1 to stable.

Agreed.

Thanks,
Rafael
