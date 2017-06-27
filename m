Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5955BC94
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 17:53:24 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 34A5420A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 17:53:23 +0000 (UTC)
Date: Tue, 27 Jun 2017 19:53:21 +0200
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20170627175321.GS21846@wotan.suse.de>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
	<alpine.LSU.2.20.1706221422360.30709@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LSU.2.20.1706221422360.30709@cbobk.fhfr.pm>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug reporting feedback
 loop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jun 22, 2017 at 02:36:13PM +0200, Jiri Kosina wrote:
> On Wed, 21 Jun 2017, Laura Abbott wrote:
> 
> > Fedora tends to follow the most recent stable kernel very closely
> > (e.g. 4.11.6 is currently pending for Fedora 24, 25, and 26).
> > This works well enough, but there still seem to be some
> > disconnects in the bug reporting process. Examples I can think of:
> > 
> > - When users report bugs on the Fedora tracker that look like
> > actual upstream bugs, what's the best way to have those reported?
> > I typically end up having to summarize from the Fedora bugzilla
> > and send an e-mail which ends up being tedious. Can we make this
> > bug reporting easier for non-kernel developers?
> 
> Just as a data point -- we do a "Kernel of the day" build of a branch that 
> follows Linus' tree (with a few SUSE specific patches floating on top of 
> it) and provide it in an optional package repository.
> 
> That allows the reporter to easily check whether the issue has been fixed 
> in latest upstream without needing to have the skills required to compile 
> own kernel.
> 
> If the issue is confirmed to be present in latest upstream as well, our 
> internal person / maintainer responsible for that particular area usually 
> takes over (there are cases when the reporter prefers to report the bug 
> upstream by himself though).
> 
> I am not sure if there is a way how to improve this process even further 
> ... do you have any particular ideas?

The Kernel Of The Day (KOTD) helps *a lot*. On the XFS front I can say that 90%
of the time so far most bugs can simply be reverse bisected by testing an issue
with KOTD and if it works then doing a reverse bisect. So much so that I
actually *yearn* for the day we get an actual real valid upstream bug. The
other 10% BTW consist of "bad backports" so far.

But one day it comes that KOTD is not sufficient, and there is that pesky delta
on linux-next which *might* also have a fix for you. Problem is booting
linux-next can often fail. Based on personal experience with testing linux-next
more regularly on more machines over the years I can say we are getting much
better with this these days, but every now and then its just poop. That said,
we have a not-so-well known daily linux-next KOTD rpm type of tree as well.
So I recommend that as a next step.

Due to the possible failures possible with linux-next, or random regressions
with other subsystems you often only want to test *one* subsystem. To help
with this there are two options I'm aware of:

  o Subsystem maintiners also backport their -next tree for vanilla, in the
    the like of wireless-testing, which only carries 802.11 on Linus' tree.
    Not sure if other subsystems have similar type of trees, if not I encourage
    it.

  o Backports: backporting to random kernels can be a pain in the ass, but
    backporting to the KOTD should not take much effort if you have the
    right framework [0]. For instance I just created an XFS backport from
    linux-next to KOTD in one day's effort, I can use this to generate
    a tarball for modules for folks to try on top of KOTD. If this would 
    actually be maintained upstream then the amount of work needed is even less,
    and you can have daily snapshots generated. Although sometimes backports
    can be buggy, to my surprise using Coccinelle actually has improved
    correctness of backports, this is only visible once you replace a series
    of patches with the output form an SmPL grammar patch. Given Coccinelle
    is also used, once you backport one subsystem driver, adding more is
    drivers from the same subsystem becomes relatively easier.

HTH,

[0] https://backports.wiki.kernel.org/index.php/Documentation/backports/hacking#Adding_new_driver

  Luis
