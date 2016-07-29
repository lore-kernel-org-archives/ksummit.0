Return-Path: <James.Hogan@imgtec.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4BA4E98C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:46:29 +0000 (UTC)
Received: from imgpgp01.kl.imgtec.org (mailapp01.imgtec.com [195.59.15.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CFA692AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:46:27 +0000 (UTC)
Date: Fri, 29 Jul 2016 16:26:51 +0100
From: James Hogan <james.hogan@imgtec.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160729152651.GA1302@jhogan-linux.le.imgtec.org>
References: <20160729075039.GA26402@x>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8t9RHnE3ZwKMSgU+"
Content-Disposition: inline
In-Reply-To: <20160729075039.GA26402@x>
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

--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Josh,

On Fri, Jul 29, 2016 at 12:50:39AM -0700, Josh Triplett wrote:
> I'd like to announce a project I've been working on for a while.  I sent
> this announcement to LKML, but since many people don't subscribe to LKML
> directly, and since ksummit-discuss has had several discussions
> specifically about patch workflow and development processes, I thought
> I'd send the announcement here as well, in case anyone found it useful
> for their workflow.
>=20
> git-series provides a tool for managing patch series with git, tracking
> the "history of history". git series tracks changes to the patch series
> over time, including rebases and other non-fast-forwarding changes. git
> series also tracks a cover letter for the patch series, formats the
> series for email, and prepares pull requests.
>=20
> This makes it easier to collaborate on a patch series, distribution
> package, backport, or any other development process that includes
> rebasing or non-fast-forward development.
>=20
> A patch series typically goes through multiple iterations before
> submission; the path from idea to RFC to [PATCHv12 1/8] includes many
> invocations of git rebase -i. However, while Git tracks and organizes
> commits quite well, it doesn't actually track changes to a patch series
> at all, outside of the ephemeral reflog. This makes it a challenge to
> collaborate on a patch series, distribution package, backport, or any
> other development process that includes rebasing or non-fast-forward
> development.
>=20
> Typically, tracking the evolution of a patch series over time involves
> moving part of the version control outside of git. You can move the
> patch series from git into quilt or a distribution package, and then
> version the patch files with git, losing the power of git's tools. Or,
> you can keep the patch series in git, and version it via multiple named
> branches; however, names like feature-v2, feature-v3-typofix, and
> feature-v8-rebased-4.6-alice-fix sound like filenames from corporate
> email, not modern version control. And either way, git doesn't track
> your cover letter at all.
>=20
> git-series tracks both a patch series and its evolution within the same
> git repository. git-series works entirely with existing git features,
> allowing git to push and pull a series to any git repository along with
> other branches and tags. Each time you change the patch series, whether
> fast-forwarding or not, you can "git series commit" a new version of the
> patch series, complete with commit message.
>=20
> You can rebase a patch series with "git series rebase -i", format it for
> submission with "git series format", or send a "please pull" request with
> "git series req".  git-series knows the base of your series, so you
> don't need to count patches or find a commit hash to run rebase or
> format.
>=20
> If you're interested in trying git-series, see
> https://github.com/git-series/git-series for installation instructions
> and a "getting started" guide.
>=20
> I've also documented the internal storage format of git-series at
> https://github.com/git-series/git-series/blob/master/INTERNALS.md ,
> including the details for how git-series ensures git can always reach,
> push, and pull a series.
>=20
> I'd welcome any feedback, whether on the interface and workflow, the
> internals and collaboration, ideas on presenting diffs of patch series,
> or anything else.

Thats pretty neat, thanks! I do loads of rebasing when preparing
patchsets, and tend to just rely on reflog if something goes wrong and I
need to look back at the history.

It looks like it could work quite well for tracking linux-next style
trees (not necessarily linux-next itself) that automatically regenerate
a bunch of merges of different branches each time one of them changes
(if you ignore git series format & git series rebase, since they
wouldn't be relevant and don't like merge commits anyway).

It may be helpful to be able to easily tag versions of the series, e.g.
rfc/v1/v2 etc when you actually submit them (sure, the git-series ref
could be tagged manually according to some naming convention, or perhaps
storing it in the metadata would make it more self-contained).

I use various git aliases / scripts for diffing patchsets, mainly based
around vimdiff'ing git log A...B --{left,right}-only | grep to filter
out irrelevant lines of diff (like index lines), but that all sort of
breaks down as soon as you reorder commits, requiring me to e.g.
manually edit one side and :diffupdate to be able to check the changes.

Cheers
James

--8t9RHnE3ZwKMSgU+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXm3W7AAoJEGwLaZPeOHZ6q9wP/2giU3ddIHMnoU+BhlUknATn
/3voBdSYpLN6Au1Avp1wNT2FXSVhw22HhMrZJBdoFWiLTvUc9LBBuubjtzIJF/as
sklAmxg6S9Ilf5bIgPVPnxDOUviWJsMaWQsuTQrjn1QrEx56C4kEaYSsOOvbUCQI
vrPZh7V++O4qalZxJScv9j0d/mbcatw0X1sSC24GR7rbEiDvMy2vuyDVEwt9QoLj
N/WHbKyP+OOrUNjq/7+iNYRWyqmmZkyZIhh0Ij2i+TMA6iTAYHuddN4ojiJqt68/
dHdOP9Uaz4P1/Y0Nfhofb5G0PF2nGnygsx3sz5IeFsUMr/Na7osctdLvV99rgIp3
YWWtA92hh00nSqnRBTEg0vjc7haGdg7c9N54Q+d1dgrSz8Hs+4eBZr7XOoKJhDQ4
Wz0YgRbp56vsYt4AfO4QY5igv0VnxOkVdSqxUkoGkGA+IYc5th+SfBSFkCUXzRgm
ao+BR/aJfjg3jFU3TFrxpB7K3lwATdGGe4SpqC+1UFj/MAUXfoIp4L1xY96jH1yz
j4uBxWPaniDZF9zgZO07xNkqbfNioQ85KDlGn8uN4Ukj7+lHJCb7fS/hFdLo6NvB
a8nCAR5rvvlG0WGJPStvlG6jx4E2PXO1A3/X0O8VnWFBmYQiasoPf+zKElh8veCI
UEo2i4/bWhr70HQofELZ
=e235
-----END PGP SIGNATURE-----

--8t9RHnE3ZwKMSgU+--
