Return-Path: <James.Hogan@imgtec.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 29CAB901
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 22:06:51 +0000 (UTC)
Received: from imgpgp01.kl.imgtec.org (mailapp01.imgtec.com [195.59.15.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 271E9146
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 22:06:50 +0000 (UTC)
Date: Mon, 15 Aug 2016 23:06:47 +0100
From: James Hogan <james.hogan@imgtec.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160815220647.GW19514@jhogan-linux.le.imgtec.org>
References: <20160729075039.GA26402@x>
	<20160815125309.GA21566@jhogan-linux.le.imgtec.org>
	<20160815163443.kpyrgf3fuvmyyx7h@x>
	<20160815184646.GU19514@jhogan-linux.le.imgtec.org>
	<20160815213536.f5aq7afgu7bcsrsq@x>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="CSNFvL6ilyiKL/Hs"
Content-Disposition: inline
In-Reply-To: <20160815213536.f5aq7afgu7bcsrsq@x>
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

--CSNFvL6ilyiKL/Hs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 15, 2016 at 02:35:37PM -0700, Josh Triplett wrote:
> On Mon, Aug 15, 2016 at 07:46:47PM +0100, James Hogan wrote:
> > The metadata for my current workflow would be a set of other series that
> > each series is dependent on (usually 1, but sometmes more if there are
> > series for different subsystems, which need merging together before the
> > base of the new series).
> >=20
> > If I update one of the earlier series, I'd normally just rebase all the
> > others on top one by one (git rebase -p --onto HEAD <base> <branch>). It
> > gets a bit repetative, but with tig alongside showing the graph with
> > commit ids, and -p to preserve merges when necessary, and diffing to
> > sanity check changes, its doable.
> >=20
> > git-series could make that easier as I could just "git series rebase
> > otherbranch" without having to check the commit id for the base, asside
> > from when it contains merges of course.
>=20
> Would it help to suport "git series rebase seriesname" to rebase on top
> of a series?
>=20
> Actually you can do that today with "git series rebase
> git-series/seriesname:series", thanks to git's "extended" syntax.
> Still, probably a good idea to support a shorter syntax like "git series
> rebase seriesname" as well.

Right, I've already done it using a branch with the same name as the
series, so unless the default branch name is different I guess it
wouldn't help much.

>=20
> > So I suppose it'd be nice to be able to do something roughly like:
> >=20
> > $ git series create kvm/a/main v4.8-rc2
>=20
> I do plan to add a second argument to start to provide a base.  Sounds
> like I should also consider providing an alias "create" for "start". :)

Yep, I meant start :-).

>=20
> > ...
> > $ git series create mips/a/main v4.8-rc2
> > ...
> > $ git series create kvm/b/main kvm/a/main
> > (Implicitly depends on "kvm/a/main" branch / series)
> > ...
> > $ git series depend add mips/a/main
> > (Adds [sequence of] distinct merges at the beginning of the series)
> > ...
> > $ git series create kvm/c/main kvm/b/main
> > ...
> > $ git series checkout mips/a/main
> > ... hack a bit on that branch
> > $ git series update
> >  It'd probably be necessary to analyse the graph of dependencies to
> >  figure out the order, and for each series regenerate the merges and
> >  rebase on top of them:
> >    checkout dependency 1
> >    merge dependency 2
> >    ...
> >    rebase --onto HEAD <last merge at beginning of current series> series
> >=20
> > it'd probably be convenient to be able to autocommit each rebased
> > series too, which I suppose raises the question of conflicts, and how
> > hard it'd be to have --abort-all, --abort, & --continue options.
> >=20
> > git series rebase -i should obviously go back to the last merge after
> > the bases, since you can't meaningfully rebase -i merges.
> >=20
> > git series rebase onto... perhaps that should require a dependent branch
> > or series that is being replaced (previously implicitly the current
> > base), and I suppose require regenerating the merges too, to avoid
> > storing more metadata.
> >=20
> > Sounds like it'd certainly need a fair bit of complexity to do that
> > though, although if number of dependencies was limited to 1 it could be
> > a lot simpler.
>=20
> Yeah, I could imagine several possible workflows here, but it would
> definitely increase complexity quite a bit.
>=20
> If it would help people with various interdependent maintainer trees,
> I'd definitely consider it, especially if the complexity remains limited
> to people who actually declare series dependencies.
>=20
> As an alternative to doing all of that completely automatically, I could
> imagine tracking the dependencies similar to how git tracks upstream
> "tracking" branches, and then providing guided next steps but still
> requiring you to rebase the series individually.  For instance, if
> you have a series 4.7/base, and then another series 4.7/kvm that depends
> on 4.7/base, "git series status" on 4.7/kvm could notice if you've made
> changes in 4.7/base since the version you based 4.7/kvm on, like this:
>=20
> $ git series status
> On series 4.7/kvm
> Base series 4.7/base updated (rebased N commits ahead)
>   (use "git series rebase 4.7/base" to update)
>=20
> And conversely, "git series status" on 4.7/base could say:
>=20
> $ git series status
> On series 4.7/base
> Dependent series 4.7/kvm (and N more) needs update
>   ("git series checkout 4.7/kvm" then "git rebase 4.7/base" to update)
>=20
> Would that help simplify the process, to avoid having to carefully
> orchestrate it while watching a repository browser?

I could see that being useful, although personally I'm usually quite
aware of the overall commit graph I'm dealing with, so it might be more
handy for when I forget that some other random WIP branch is based on
it.

I suppose though once you have git-series taking away the need to find
the base commit, its much simpler to script a sequence of rebases in the
right order, so the problem may just fade away. Even redundant rebases
should be harmless (although I just tried one and "Base unchanged" seems
to be treated as an error which necessitates a "git rebase --continue"
after it).

Cheers
James

--CSNFvL6ilyiKL/Hs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXsjz3AAoJEGwLaZPeOHZ6tIkQAJ6ULcdmmA2fvm4Fkm1SziVh
MQmhFVemU4cl98LAtKl5h8t0wyt3cuyQRhGJde4S3txFT73EjnLH9qI3zIQW8uIn
w9KtcLXoYh6mMoAO9aBoK+6F4jeGfmtQtXM4F88SsiiSr37Aa1XVMh7Fvcx6WTUH
LOATXHBVrKJTqRloUEovNq2y2PyXbF0Y+ScTf8gS5ZCxQpk4Ago1rbqoOxhf9mZw
xbGizKyjO39p0nUvOyr43YcV/D9u/2Vte3E2wbbD+YaN4Aa/gcjLT7A5IBw77921
z2KmkdssLmEF6QkaTsTbnkSz4ahqdFsHOqyhXeAk9eVlQTC2t20ImKeDGSyvY+iL
yUOtt8Kgfs1H6MFciI1UJgqy2C8yhturOZMcGhLX837GnUGzUAhlGm+MxAI+VDju
M7yH+y+NFq9z1/iTV5lSZps0bylWmoyDdFLaKsnS2ZPxOzE/B2zDgBY4MmQ/AyoQ
ELAnDsTCb9BbIDG9Rm884OK7NaHQ0EmlzQ+NUrvRgzjkjica5GBFBa7PIwmk2QEp
K5eB6p+EhKAXcO7n6biPkDf6q+axfxKg022lTRlHoZ/3U1mRHXLA0ZlAF9/m+LF5
znMp6Wkbk/DDZBwZUn3coRqu7GxUMgsE6QJiznN6F/vvuHDs9CJ46rYhSzCsFHYW
4HeAj4y/TYEgCI/aM16D
=ljlz
-----END PGP SIGNATURE-----

--CSNFvL6ilyiKL/Hs--
