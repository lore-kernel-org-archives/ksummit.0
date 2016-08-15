Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DA60B8A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 16:34:50 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64E832FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 16:34:50 +0000 (UTC)
Date: Mon, 15 Aug 2016 09:34:43 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: James Hogan <james.hogan@imgtec.com>
Message-ID: <20160815163443.kpyrgf3fuvmyyx7h@x>
References: <20160729075039.GA26402@x>
	<20160815125309.GA21566@jhogan-linux.le.imgtec.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160815125309.GA21566@jhogan-linux.le.imgtec.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [ANNOUNCE] git-series: track changes to a
 patch series over time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 15, 2016 at 01:53:09PM +0100, James Hogan wrote:
> Hi Josh,
> 
> On Fri, Jul 29, 2016 at 12:50:39AM -0700, Josh Triplett wrote:
> > I'd welcome any feedback, whether on the interface and workflow, the
> > internals and collaboration, ideas on presenting diffs of patch series,
> > or anything else.
> 
> I often have patch series which are dependent on one another. It is then
> very useful to be able to see all the branch names in logs (i.e. with
> --decorate or using tig). This isn't possible out of the box with
> git-series however since it seems to prefer to work on a detached head.
C> 
> I sort of worked around this with a hacky script (see below) to update
> my branches (which start with e.g. "4.8/") to point to the corresponding
> git series latest commit.
> 
> Do you think it'd be practical and make sense for git-series to learn to
> (optionally?) automatically remain on a particular branch (in my case
> with the same name as the series) and keep it updated with rebases etc?
> I realise the semantics of how it might work may be a little unclear at
> the moment since the SHEAD doesn't get updated until git series commit.

That sounds entirely reasonable.  I had git-series use a detached HEAD
to avoid the potentially surprising behavior of continuing to update the
branch you started the series from (or a branch you re-attached HEAD
to).  However, intentionally specifying a branch to keep updated with
the current state of the series seems fine, and useful for exactly the
reason you mentioned.

I'm tempted to introduce a default branch name for this, involving the
series name and "current", which would make the --decorate use case work
out-of-the-box.  Naming suggestions welcome.

Given such a default, would you still want to specify a specific branch
to keep updated, or would the default branch name suffice?

Either way, I don't think I'd store the branch name within the series
itself (as it represents entirely local metadata that shouldn't get
transmitted with the series).  Easy enough to store local metadata
separately.

Also, your mention of dependent patch series makes me tempted to try to
add some kind of dependency mechanism between series, to make it easier
to notice when you need to rebase a family of series, and to work out
what patches you need to submit together.  (That would also allow using
the new format-patch metadata for "prerequisite-patch-id".)  I don't
want to get as complex as topgit, but I'd welcome suggestions for how
this should work, since you have a workflow that motivates it.
