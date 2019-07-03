Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C313CD3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 23:03:58 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1B81A87C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 23:03:58 +0000 (UTC)
Message-ID: <1562195036.2768.4.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Theodore Ts'o
	<tytso@mit.edu>
Date: Wed, 03 Jul 2019 16:03:56 -0700
In-Reply-To: <20190703085620.GA5007@pendragon.ideasonboard.com>
References: <alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Wed, 2019-07-03 at 11:56 +0300, Laurent Pinchart wrote:
> On Tue, Jul 02, 2019 at 06:43:47PM -0400, Theodore Ts'o wrote:
> > On Tue, Jul 02, 2019 at 03:26:48PM -0700, James Bottomley wrote:
> > > git is our upstream for version control and our upstream has
> > > already
> > > had this as a feature since 2014.  Trying to go to upstream  5
> > > years
> > > later and ask them to change it is likely going to be a
> > > singularly
> > > unsuccessful exercise, plus even in the unlikely event we can
> > > work out
> > > how to do it compatibly and without causing confusion and
> > > upstream said
> > > yes it would take another few years to propagate.
> > 
> > If we really want to use the Link: header, we should be able to do
> > this without requiring any changes to git.
> > 
> > Step 1)   git config am.messageid true
> > Step 2)   Write and install a .git/hooks/applypatch-msg script
> > which
> > 	  looks for Message-Id: and transmogrifies that line to a
> > 	  Link: trailer, using the lore.kernel.org URL template
> > Step 3)   Document this in Documentation/process.  For bonus points
> > 	  create a script which automatically sets up the user's git
> > 	  configuration by setting up am.messageid config and
> > 	  installing the hook file.
> > Step 4)   Profit
> 
> I may have missed the obvious, but while this should work great for
> patches applied with git-am, what's the expected workflow for patches
> written by the author of a pull request ? I certainly post my own
> patches for review on mailing lists, but I don't fetch them back from
> the list before sending a pull request. Do we want to move towards a
> model where maintainers should retrieve their own patches from the
> lists (or from patchwork) ?

I always apply from the list.  Apart from the obvious benefit of
getting others to review and not giving the impression of a favourite
path into the tree, I do it because as I construct patches and rework
them I actually build the version information into the change log using
rebase (with a --- separating it from the main commit message).  This
is so I can send the emails directly from my tree without having to add
the version change information but it does mean the only way I lose the
version history from my patches when they go into the tree for real is
by doing an am apply from the list.

James
