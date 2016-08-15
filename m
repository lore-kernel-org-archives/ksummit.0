Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 77B2B78D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 23:59:25 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BBE4F10E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 23:59:24 +0000 (UTC)
Date: Mon, 15 Aug 2016 16:59:21 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: James Hogan <james.hogan@imgtec.com>
Message-ID: <20160815235921.GA13874@cloud>
References: <20160729075039.GA26402@x>
	<20160815125309.GA21566@jhogan-linux.le.imgtec.org>
	<20160815163443.kpyrgf3fuvmyyx7h@x>
	<20160815184646.GU19514@jhogan-linux.le.imgtec.org>
	<20160815213536.f5aq7afgu7bcsrsq@x>
	<20160815220647.GW19514@jhogan-linux.le.imgtec.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160815220647.GW19514@jhogan-linux.le.imgtec.org>
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

On Mon, Aug 15, 2016 at 11:06:47PM +0100, James Hogan wrote:
> On Mon, Aug 15, 2016 at 02:35:37PM -0700, Josh Triplett wrote:
> > On Mon, Aug 15, 2016 at 07:46:47PM +0100, James Hogan wrote:
> > > ...
> > > $ git series create mips/a/main v4.8-rc2
> > > ...
> > > $ git series create kvm/b/main kvm/a/main
> > > (Implicitly depends on "kvm/a/main" branch / series)
> > > ...
> > > $ git series depend add mips/a/main
> > > (Adds [sequence of] distinct merges at the beginning of the series)
> > > ...
> > > $ git series create kvm/c/main kvm/b/main
> > > ...
> > > $ git series checkout mips/a/main
> > > ... hack a bit on that branch
> > > $ git series update
> > >  It'd probably be necessary to analyse the graph of dependencies to
> > >  figure out the order, and for each series regenerate the merges and
> > >  rebase on top of them:
> > >    checkout dependency 1
> > >    merge dependency 2
> > >    ...
> > >    rebase --onto HEAD <last merge at beginning of current series> series
> > > 
> > > it'd probably be convenient to be able to autocommit each rebased
> > > series too, which I suppose raises the question of conflicts, and how
> > > hard it'd be to have --abort-all, --abort, & --continue options.
> > > 
> > > git series rebase -i should obviously go back to the last merge after
> > > the bases, since you can't meaningfully rebase -i merges.
> > > 
> > > git series rebase onto... perhaps that should require a dependent branch
> > > or series that is being replaced (previously implicitly the current
> > > base), and I suppose require regenerating the merges too, to avoid
> > > storing more metadata.
> > > 
> > > Sounds like it'd certainly need a fair bit of complexity to do that
> > > though, although if number of dependencies was limited to 1 it could be
> > > a lot simpler.
> > 
> > Yeah, I could imagine several possible workflows here, but it would
> > definitely increase complexity quite a bit.
> > 
> > If it would help people with various interdependent maintainer trees,
> > I'd definitely consider it, especially if the complexity remains limited
> > to people who actually declare series dependencies.
> > 
> > As an alternative to doing all of that completely automatically, I could
> > imagine tracking the dependencies similar to how git tracks upstream
> > "tracking" branches, and then providing guided next steps but still
> > requiring you to rebase the series individually.  For instance, if
> > you have a series 4.7/base, and then another series 4.7/kvm that depends
> > on 4.7/base, "git series status" on 4.7/kvm could notice if you've made
> > changes in 4.7/base since the version you based 4.7/kvm on, like this:
> > 
> > $ git series status
> > On series 4.7/kvm
> > Base series 4.7/base updated (rebased N commits ahead)
> >   (use "git series rebase 4.7/base" to update)
> > 
> > And conversely, "git series status" on 4.7/base could say:
> > 
> > $ git series status
> > On series 4.7/base
> > Dependent series 4.7/kvm (and N more) needs update
> >   ("git series checkout 4.7/kvm" then "git rebase 4.7/base" to update)
> > 
> > Would that help simplify the process, to avoid having to carefully
> > orchestrate it while watching a repository browser?
> 
> I could see that being useful, although personally I'm usually quite
> aware of the overall commit graph I'm dealing with, so it might be more
> handy for when I forget that some other random WIP branch is based on
> it.

Fair enough.  I might still implement this at some point just to make it
easier to carry less state in your head. :)

> I suppose though once you have git-series taking away the need to find
> the base commit, its much simpler to script a sequence of rebases in the
> right order, so the problem may just fade away.

I was quite pleased to see that you've already started scripting
git-series. :)

> Even redundant rebases
> should be harmless (although I just tried one and "Base unchanged" seems
> to be treated as an error which necessitates a "git rebase --continue"
> after it).

Oops.  Fixed in 0.8.9, thanks.  (I also changed rebase itself to not do
redundant rebases; if the base hasn't changed, a non-interactive rebase
has nothing to do.)

- Josh Triplett
