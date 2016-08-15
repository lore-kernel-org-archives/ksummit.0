Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6110C8A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 21:35:45 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7ED251C9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 21:35:44 +0000 (UTC)
Date: Mon, 15 Aug 2016 14:35:37 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: James Hogan <james.hogan@imgtec.com>
Message-ID: <20160815213536.f5aq7afgu7bcsrsq@x>
References: <20160729075039.GA26402@x>
	<20160815125309.GA21566@jhogan-linux.le.imgtec.org>
	<20160815163443.kpyrgf3fuvmyyx7h@x>
	<20160815184646.GU19514@jhogan-linux.le.imgtec.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160815184646.GU19514@jhogan-linux.le.imgtec.org>
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

On Mon, Aug 15, 2016 at 07:46:47PM +0100, James Hogan wrote:
> On Mon, Aug 15, 2016 at 09:34:43AM -0700, Josh Triplett wrote:
> > On Mon, Aug 15, 2016 at 01:53:09PM +0100, James Hogan wrote:
> > > Hi Josh,
> > > 
> > > On Fri, Jul 29, 2016 at 12:50:39AM -0700, Josh Triplett wrote:
> > > > I'd welcome any feedback, whether on the interface and workflow, the
> > > > internals and collaboration, ideas on presenting diffs of patch series,
> > > > or anything else.
> > > 
> > > I often have patch series which are dependent on one another. It is then
> > > very useful to be able to see all the branch names in logs (i.e. with
> > > --decorate or using tig). This isn't possible out of the box with
> > > git-series however since it seems to prefer to work on a detached head.
> > C> 
> > > I sort of worked around this with a hacky script (see below) to update
> > > my branches (which start with e.g. "4.8/") to point to the corresponding
> > > git series latest commit.
> > > 
> > > Do you think it'd be practical and make sense for git-series to learn to
> > > (optionally?) automatically remain on a particular branch (in my case
> > > with the same name as the series) and keep it updated with rebases etc?
> > > I realise the semantics of how it might work may be a little unclear at
> > > the moment since the SHEAD doesn't get updated until git series commit.
> > 
> > That sounds entirely reasonable.  I had git-series use a detached HEAD
> > to avoid the potentially surprising behavior of continuing to update the
> > branch you started the series from (or a branch you re-attached HEAD
> > to).  However, intentionally specifying a branch to keep updated with
> > the current state of the series seems fine, and useful for exactly the
> > reason you mentioned.
> > 
> > I'm tempted to introduce a default branch name for this, involving the
> > series name and "current", which would make the --decorate use case work
> > out-of-the-box.  Naming suggestions welcome.
> > 
> > Given such a default, would you still want to specify a specific branch
> > to keep updated, or would the default branch name suffice?
> 
> Personally I'd want it to be able to match the name of the series as
> closely as possible (handy to be able to copy branch name and paste into
> "git series checkout" command).

That makes sense; adding a suffix like "/current" would make that less
trivial.

I could provide a branch named the same as the series, if one doesn't
already exist.  I'd need to think about the implications of doing that
by *default*, though.  But an option to create and use that branch,
defaulting to the name of the series (without the "git-series/" prefix),
seems fine.

> > Either way, I don't think I'd store the branch name within the series
> > itself (as it represents entirely local metadata that shouldn't get
> > transmitted with the series). Easy enough to store local metadata
> > separately.
> > 
> > Also, your mention of dependent patch series makes me tempted to try to
> > add some kind of dependency mechanism between series, to make it easier
> > to notice when you need to rebase a family of series, and to work out
> > what patches you need to submit together.  (That would also allow using
> > the new format-patch metadata for "prerequisite-patch-id".)  I don't
> > want to get as complex as topgit, but I'd welcome suggestions for how
> > this should work, since you have a workflow that motivates it.
> 
> I haven't tried topgit tbh (I probably should).

I tried it briefly, but it had such a fundamentally *different* workflow
from git itself that I didn't really find it sufficiently worthwhile to
stick with.

> The metadata for my current workflow would be a set of other series that
> each series is dependent on (usually 1, but sometmes more if there are
> series for different subsystems, which need merging together before the
> base of the new series).
> 
> If I update one of the earlier series, I'd normally just rebase all the
> others on top one by one (git rebase -p --onto HEAD <base> <branch>). It
> gets a bit repetative, but with tig alongside showing the graph with
> commit ids, and -p to preserve merges when necessary, and diffing to
> sanity check changes, its doable.
> 
> git-series could make that easier as I could just "git series rebase
> otherbranch" without having to check the commit id for the base, asside
> from when it contains merges of course.

Would it help to suport "git series rebase seriesname" to rebase on top
of a series?

Actually you can do that today with "git series rebase
git-series/seriesname:series", thanks to git's "extended" syntax.
Still, probably a good idea to support a shorter syntax like "git series
rebase seriesname" as well.

> So I suppose it'd be nice to be able to do something roughly like:
> 
> $ git series create kvm/a/main v4.8-rc2

I do plan to add a second argument to start to provide a base.  Sounds
like I should also consider providing an alias "create" for "start". :)

> ...
> $ git series create mips/a/main v4.8-rc2
> ...
> $ git series create kvm/b/main kvm/a/main
> (Implicitly depends on "kvm/a/main" branch / series)
> ...
> $ git series depend add mips/a/main
> (Adds [sequence of] distinct merges at the beginning of the series)
> ...
> $ git series create kvm/c/main kvm/b/main
> ...
> $ git series checkout mips/a/main
> ... hack a bit on that branch
> $ git series update
>  It'd probably be necessary to analyse the graph of dependencies to
>  figure out the order, and for each series regenerate the merges and
>  rebase on top of them:
>    checkout dependency 1
>    merge dependency 2
>    ...
>    rebase --onto HEAD <last merge at beginning of current series> series
> 
> it'd probably be convenient to be able to autocommit each rebased
> series too, which I suppose raises the question of conflicts, and how
> hard it'd be to have --abort-all, --abort, & --continue options.
> 
> git series rebase -i should obviously go back to the last merge after
> the bases, since you can't meaningfully rebase -i merges.
> 
> git series rebase onto... perhaps that should require a dependent branch
> or series that is being replaced (previously implicitly the current
> base), and I suppose require regenerating the merges too, to avoid
> storing more metadata.
> 
> Sounds like it'd certainly need a fair bit of complexity to do that
> though, although if number of dependencies was limited to 1 it could be
> a lot simpler.

Yeah, I could imagine several possible workflows here, but it would
definitely increase complexity quite a bit.

If it would help people with various interdependent maintainer trees,
I'd definitely consider it, especially if the complexity remains limited
to people who actually declare series dependencies.

As an alternative to doing all of that completely automatically, I could
imagine tracking the dependencies similar to how git tracks upstream
"tracking" branches, and then providing guided next steps but still
requiring you to rebase the series individually.  For instance, if
you have a series 4.7/base, and then another series 4.7/kvm that depends
on 4.7/base, "git series status" on 4.7/kvm could notice if you've made
changes in 4.7/base since the version you based 4.7/kvm on, like this:

$ git series status
On series 4.7/kvm
Base series 4.7/base updated (rebased N commits ahead)
  (use "git series rebase 4.7/base" to update)

And conversely, "git series status" on 4.7/base could say:

$ git series status
On series 4.7/base
Dependent series 4.7/kvm (and N more) needs update
  ("git series checkout 4.7/kvm" then "git rebase 4.7/base" to update)

Would that help simplify the process, to avoid having to carefully
orchestrate it while watching a repository browser?
