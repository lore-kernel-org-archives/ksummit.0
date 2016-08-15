Return-Path: <James.Hogan@imgtec.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C7699722
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 18:46:50 +0000 (UTC)
Received: from imgpgp01.kl.imgtec.org (mailapp01.imgtec.com [195.59.15.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 51B49138
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 18:46:49 +0000 (UTC)
Date: Mon, 15 Aug 2016 19:46:47 +0100
From: James Hogan <james.hogan@imgtec.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160815184646.GU19514@jhogan-linux.le.imgtec.org>
References: <20160729075039.GA26402@x>
	<20160815125309.GA21566@jhogan-linux.le.imgtec.org>
	<20160815163443.kpyrgf3fuvmyyx7h@x>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mgIE+9cwyCTt+85Z"
Content-Disposition: inline
In-Reply-To: <20160815163443.kpyrgf3fuvmyyx7h@x>
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

--mgIE+9cwyCTt+85Z
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 15, 2016 at 09:34:43AM -0700, Josh Triplett wrote:
> On Mon, Aug 15, 2016 at 01:53:09PM +0100, James Hogan wrote:
> > Hi Josh,
> >=20
> > On Fri, Jul 29, 2016 at 12:50:39AM -0700, Josh Triplett wrote:
> > > I'd welcome any feedback, whether on the interface and workflow, the
> > > internals and collaboration, ideas on presenting diffs of patch serie=
s,
> > > or anything else.
> >=20
> > I often have patch series which are dependent on one another. It is then
> > very useful to be able to see all the branch names in logs (i.e. with
> > --decorate or using tig). This isn't possible out of the box with
> > git-series however since it seems to prefer to work on a detached head.
> C>=20
> > I sort of worked around this with a hacky script (see below) to update
> > my branches (which start with e.g. "4.8/") to point to the corresponding
> > git series latest commit.
> >=20
> > Do you think it'd be practical and make sense for git-series to learn to
> > (optionally?) automatically remain on a particular branch (in my case
> > with the same name as the series) and keep it updated with rebases etc?
> > I realise the semantics of how it might work may be a little unclear at
> > the moment since the SHEAD doesn't get updated until git series commit.
>=20
> That sounds entirely reasonable.  I had git-series use a detached HEAD
> to avoid the potentially surprising behavior of continuing to update the
> branch you started the series from (or a branch you re-attached HEAD
> to).  However, intentionally specifying a branch to keep updated with
> the current state of the series seems fine, and useful for exactly the
> reason you mentioned.
>=20
> I'm tempted to introduce a default branch name for this, involving the
> series name and "current", which would make the --decorate use case work
> out-of-the-box.  Naming suggestions welcome.
>=20
> Given such a default, would you still want to specify a specific branch
> to keep updated, or would the default branch name suffice?

Personally I'd want it to be able to match the name of the series as
closely as possible (handy to be able to copy branch name and paste into
"git series checkout" command).

>=20
> Either way, I don't think I'd store the branch name within the series
> itself (as it represents entirely local metadata that shouldn't get
> transmitted with the series). Easy enough to store local metadata
> separately.
>=20
> Also, your mention of dependent patch series makes me tempted to try to
> add some kind of dependency mechanism between series, to make it easier
> to notice when you need to rebase a family of series, and to work out
> what patches you need to submit together.  (That would also allow using
> the new format-patch metadata for "prerequisite-patch-id".)  I don't
> want to get as complex as topgit, but I'd welcome suggestions for how
> this should work, since you have a workflow that motivates it.

I haven't tried topgit tbh (I probably should).

The metadata for my current workflow would be a set of other series that
each series is dependent on (usually 1, but sometmes more if there are
series for different subsystems, which need merging together before the
base of the new series).

If I update one of the earlier series, I'd normally just rebase all the
others on top one by one (git rebase -p --onto HEAD <base> <branch>). It
gets a bit repetative, but with tig alongside showing the graph with
commit ids, and -p to preserve merges when necessary, and diffing to
sanity check changes, its doable.

git-series could make that easier as I could just "git series rebase
otherbranch" without having to check the commit id for the base, asside
=66rom when it contains merges of course.

So I suppose it'd be nice to be able to do something roughly like:

$ git series create kvm/a/main v4.8-rc2
=2E..
$ git series create mips/a/main v4.8-rc2
=2E..
$ git series create kvm/b/main kvm/a/main
(Implicitly depends on "kvm/a/main" branch / series)
=2E..
$ git series depend add mips/a/main
(Adds [sequence of] distinct merges at the beginning of the series)
=2E..
$ git series create kvm/c/main kvm/b/main
=2E..
$ git series checkout mips/a/main
=2E.. hack a bit on that branch
$ git series update
 It'd probably be necessary to analyse the graph of dependencies to
 figure out the order, and for each series regenerate the merges and
 rebase on top of them:
   checkout dependency 1
   merge dependency 2
   ...
   rebase --onto HEAD <last merge at beginning of current series> series

it'd probably be convenient to be able to autocommit each rebased
series too, which I suppose raises the question of conflicts, and how
hard it'd be to have --abort-all, --abort, & --continue options.

git series rebase -i should obviously go back to the last merge after
the bases, since you can't meaningfully rebase -i merges.

git series rebase onto... perhaps that should require a dependent branch
or series that is being replaced (previously implicitly the current
base), and I suppose require regenerating the merges too, to avoid
storing more metadata.

Sounds like it'd certainly need a fair bit of complexity to do that
though, although if number of dependencies was limited to 1 it could be
a lot simpler.

Cheers
James

--mgIE+9cwyCTt+85Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXsg4WAAoJEGwLaZPeOHZ6wEkP/R6mgd6G8fGDG9tcRetFnt1A
YU7iUJg4JKdz4dEiGMZHnrv1HbC4fzjAZqI0luHPr6m8DsrGJseLeRqgmxJ5HGBs
I0ZgS84V3VWJw1nedPUp1O0lQ+KDltieTIbW6glItRvDETpcDRce3nHZub0mEXRg
g6tN3jD1OKqQxq6jDfNqdjG+0zfvm+nMXSQWrW+BDueNYfDVlHWBJOLDqTYftRTe
ROCazuSBAYdNXjm1NfiPZaHc8nuTffR2yJyK6u93UFObiqdTZib7vbHwoqXblBOT
eaXkVOO0GqQyfpKZQnoe8q+jPZNhHnb+3XEIDzXppeAOGGcLcnXmHUA8gbqCMOsJ
MmDf9drAhwVjW/oXPif+ly8vr77+WlDA4wxhe1CObTPnkeACTcwY1yC+cfJuW9dy
XQWVPmc4uJXCGo8nOCzN3oBBGw6ApFfl5wtbI2w6+k4xDGZRPwCUgjvQsgi8SqfW
qVI1VM62AjxP2FEe7HMmxIuVkqqz5Sv6MbSZypc0zmpXUqtEoYXCFWeBz40lexJO
abLJDqeNF6kI7vjW9TheLI+D4JgfWeT4WO4XqZ26RkDc4xBb0G2Mr/djWM4UoV5g
Z3Zn5ZNWVTgzHQxRumRr9UW9g1y5J+8/vYRhDB8AuzuPZP+WNU9c9cXC2lfZRX/8
MxBw/zaMdiGJD9bu+PDy
=DFAd
-----END PGP SIGNATURE-----

--mgIE+9cwyCTt+85Z--
