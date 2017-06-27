Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 41AF3C93
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 18:30:38 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3C20920A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 18:30:37 +0000 (UTC)
Message-ID: <1498588234.18166.29.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>, Jiri Kosina <jikos@kernel.org>
Date: Tue, 27 Jun 2017 11:30:34 -0700
In-Reply-To: <20170627175321.GS21846@wotan.suse.de>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
	<alpine.LSU.2.20.1706221422360.30709@cbobk.fhfr.pm>
	<20170627175321.GS21846@wotan.suse.de>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Tue, 2017-06-27 at 19:53 +0200, Luis R. Rodriguez wrote:
> On Thu, Jun 22, 2017 at 02:36:13PM +0200, Jiri Kosina wrote:
> > 
> > On Wed, 21 Jun 2017, Laura Abbott wrote:
> > 
> > > 
> > > Fedora tends to follow the most recent stable kernel very closely
> > > (e.g. 4.11.6 is currently pending for Fedora 24, 25, and 26).
> > > This works well enough, but there still seem to be some
> > > disconnects in the bug reporting process. Examples I can think
> > > of:
> > > 
> > > - When users report bugs on the Fedora tracker that look like
> > > actual upstream bugs, what's the best way to have those reported?
> > > I typically end up having to summarize from the Fedora bugzilla
> > > and send an e-mail which ends up being tedious. Can we make this
> > > bug reporting easier for non-kernel developers?
> > 
> > Just as a data point -- we do a "Kernel of the day" build of a
> > branch that follows Linus' tree (with a few SUSE specific patches
> > floating on top of it) and provide it in an optional package
> > repository.
> > 
> > That allows the reporter to easily check whether the issue has been
> > fixed in latest upstream without needing to have the skills
> > required to compile own kernel.
> > 
> > If the issue is confirmed to be present in latest upstream as well,
> > our internal person / maintainer responsible for that particular
> > area usually takes over (there are cases when the reporter prefers
> > to report the bug upstream by himself though).
> > 
> > I am not sure if there is a way how to improve this process even
> > further ... do you have any particular ideas?
> 
> The Kernel Of The Day (KOTD) helps *a lot*. On the XFS front I can
> say that 90% of the time so far most bugs can simply be reverse
> bisected by testing an issue with KOTD and if it works then doing a
> reverse bisect. So much so that I actually *yearn* for the day we get
> an actual real valid upstream bug. The other 10% BTW consist of "bad
> backports" so far.
> 
> But one day it comes that KOTD is not sufficient, and there is that
> pesky delta on linux-next which *might* also have a fix for you.
> Problem is booting linux-next can often fail.

Just a minute: I'd like to question that assumption. -next is supposed
to be all the upstream trees targetting the merge window.  Boot failure
regressions in those trees are very rare.  Fine, not non-existent so
that's why we run testing and inspection on them, but "often fail" is a
mischaracterisation.  I think the correct characterisation would be
"rarely fail", but I can compromise on "sometimes fail".

>  Based on personal experience with testing linux-next more regularly
> on more machines over the years I can say we are getting much better
> with this these days, but every now and then its just poop.

Really?  Even assuming it to be true for the sake of argument, next
stop for that "poop" is mainline via the merge window, so perhaps
detecting we have a problem before it hits would be a valuable service.

>  That said, we have a not-so-well known daily linux-next KOTD rpm
> type of tree as well. So I recommend that as a next step.
> 
> Due to the possible failures possible with linux-next, or random
> regressions with other subsystems you often only want to test *one*
> subsystem. To help with this there are two options I'm aware of:

I still don't see what's wrong with booting -next?  Fine, there will
occasionally be the rare boot failure regressions, in which case you
can move on to all your other stuff (which is very time intensive), but
if -next boots fine, whether the bug is present or not tells you
something and if it's not present, it saves you a lot of time which is
very valuable because we shouldn't be wasting the time of our most
valuable test group (those which are close to mainline).

So I think it would be a useful service for distro's to provide a
release of -next that users can try.  Perhaps it doesn't have to be
daily, but at least weekly would be enormously helpful.

James
