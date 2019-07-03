Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5B3F8B9E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 22:54:03 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F1E1E87C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 22:54:01 +0000 (UTC)
Date: Thu, 4 Jul 2019 01:53:38 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20190703225338.GQ5007@pendragon.ideasonboard.com>
References: <37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<alpine.DEB.2.21.1907031104260.1802@nanos.tec.linutronix.de>
	<20190703123954.GD4727@mtr-leonro.mtl.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190703123954.GD4727@mtr-leonro.mtl.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

On Wed, Jul 03, 2019 at 03:39:54PM +0300, Leon Romanovsky wrote:
> On Wed, Jul 03, 2019 at 11:12:11AM +0200, Thomas Gleixner wrote:
> > On Wed, 3 Jul 2019, Laurent Pinchart wrote:
> > > On Tue, Jul 02, 2019 at 06:43:47PM -0400, Theodore Ts'o wrote:
> > > > On Tue, Jul 02, 2019 at 03:26:48PM -0700, James Bottomley wrote:
> > > > > git is our upstream for version control and our upstream has already
> > > > > had this as a feature since 2014.  Trying to go to upstream  5 years
> > > > > later and ask them to change it is likely going to be a singularly
> > > > > unsuccessful exercise, plus even in the unlikely event we can work out
> > > > > how to do it compatibly and without causing confusion and upstream said
> > > > > yes it would take another few years to propagate.
> > > >
> > > > If we really want to use the Link: header, we should be able to do
> > > > this without requiring any changes to git.
> > > >
> > > > Step 1)   git config am.messageid true
> > > > Step 2)   Write and install a .git/hooks/applypatch-msg script which
> > > > 	  looks for Message-Id: and transmogrifies that line to a
> > > > 	  Link: trailer, using the lore.kernel.org URL template
> > > > Step 3)   Document this in Documentation/process.  For bonus points
> > > > 	  create a script which automatically sets up the user's git
> > > > 	  configuration by setting up am.messageid config and
> > > > 	  installing the hook file.
> > > > Step 4)   Profit
> > >
> > > I may have missed the obvious, but while this should work great for
> > > patches applied with git-am, what's the expected workflow for patches
> > > written by the author of a pull request ? I certainly post my own
> > > patches for review on mailing lists, but I don't fetch them back from
> > > the list before sending a pull request. Do we want to move towards a
> > > model where maintainers should retrieve their own patches from the lists
> > > (or from patchwork) ?
> >
> > Yes.
> >
> > If you just commit, post and then send a pull request later how are you
> > dealing with Reviewed-by/Acked-by/Tested-by replies on the list?
> >
> > Either they do not end up in the changelogs or you have to redo the commits
> > anyway. So moving to a always redo from mail/patchwork just unifies the
> > workflow.
> >
> > I'm doing that always because I'm way too lazy to collect the tags from
> > replies manually. I just save the whole thread as mbox and let the tools
> > sort it out.

I usually pick the tags manually. I started doing so because I was too
lazy to apply the patches from an mbox :-) Picking them manually
distributes of time the workload of a final git-am before sending the
pull request, but it has the nice advantage that I can easily see in my
local tree which patches still require review.

> My 2 cents,
> 
> I'm doing the same for slightly different reason, I want to be 100% sure
> that posted and reviewed patch equal to applied. So when it is applicable,
> I post my own patches and apply them from mailing list later on to
> shared rdma<->netdev branch.

I understand both your and Thomas' rationales, and I know that the DRM
subsystem has enforced usage of the Link: tag through the dim tool used
to maintain drm-misc. I initially found it a bit of a burden to have to
go and retrieve patches from my mail client or from patchwork, but I
also understand the upside. Should we make it an official recommendation
recorded in written documentation ?

When time permit I will likely try to see if I can automate retrieval of
a patch series. Ideally I'd like a script that would take a branch,
identifies where to get the patches from, and goes and pick them up
(retaining the history below --- until it's time for the final pull
request). That may not be too difficult to achieve.

-- 
Regards,

Laurent Pinchart
