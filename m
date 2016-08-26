Return-Path: <James.Hogan@imgtec.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B032483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 11:42:08 +0000 (UTC)
Received: from imgpgp01.kl.imgtec.org (mailapp01.imgtec.com [195.59.15.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF85719B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 11:42:07 +0000 (UTC)
Date: Fri, 26 Aug 2016 12:42:05 +0100
From: James Hogan <james.hogan@imgtec.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20160826114205.GA16682@jhogan-linux.le.imgtec.org>
References: <20160826044651.GA25341@sasha-lappy>
	<20160826112635.GA27627@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ikeVEW9yuYc//A+q"
Content-Disposition: inline
In-Reply-To: <20160826112635.GA27627@kroah.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "Levin,
	Alexander" <alexander.levin@verizon.com>
Subject: Re: [Ksummit-discuss] Self nomination - Sasha Levin
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--ikeVEW9yuYc//A+q
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 26, 2016 at 01:26:35PM +0200, Greg KH wrote:
> On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
> >    - Improving tagging for stable. The "version tag" option is broken
> >    and the "Fixes:" tag is always preferable, how do we get people to
> >    use that more often? (script it somehow?
> >    scripts/find-version-it-fixes ?).
>=20
> Oh a script like that would be nice, but how would that work in reality?

Not all Fixes: tags are suitable for stable though. I've been caught out
by patches being applied to stable (4.2 maybe) due to a Fixes tag,
without prerequisite patches being applied.

FWIW I have a git alias that blames a git diff or commit (I think based
on an old version of [1] with some fixes). That doesn't necessarily tell
you where a problem was introduced, but it sure can help if the problem
was introduced nearby the fix (and for fixup commits before a rebase).

Food for thought if nothing else.

E.g.=20

$ git blame-show v4.8-rc2
commit 694d0d0bb2030d2e36df73e2d23d5770511dbc8d
Author:     Linus Torvalds <torvalds@linux-foundation.org>
AuthorDate: Sun Aug 14 19:11:36 2016 -0700
Commit:     Linus Torvalds <torvalds@linux-foundation.org>
CommitDate: Sun Aug 14 19:11:36 2016 -0700

    Linux 4.8-rc2

diff --git a/Makefile b/Makefile
index 8c504f324154..5c18baad7218 100644
--- a/Makefile
+++ b/Makefile
@@ -1,7 +1,7 @@
Blaming lines:   0% (7/1684), done.
Blaming lines:   0% (7/1684), done.
  c517d838eb7d0 (Linus Torvalds   VERSION =3D 4
  29b4817d4018d (Linus Torvalds   PATCHLEVEL =3D 8
  55922c9d1b84b (Linus Torvalds   SUBLEVEL =3D 0
- 29b4817d4018d (Linus Torvalds  -EXTRAVERSION =3D -rc1
+ 694d0d0bb2030 (Linus Torvalds  +EXTRAVERSION =3D -rc2
  1a695a905c185 (Linus Torvalds   NAME =3D Psychotic Stoned Sheep
  ^1da177e4c3f4 (Linus Torvalds  =20
  ^1da177e4c3f4 (Linus Torvalds   # *DOCUMENTATION*

Cheers
James

[1] https://github.com/dmnd/git-diff-blame/blob/master/git-diff-blame

--ikeVEW9yuYc//A+q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXwCsNAAoJEGwLaZPeOHZ6MXsP/Reg1bg2Pa6sK9uMl6ae9Pla
iv1Sv1c9jRuZTsy/oj3zfyVIlQtMhVs4ut/WWqbb9tOX0mE3bSZ/eQ4MHZvGq1Js
PTEgxlCg5aIj/iEgsVF9qsVW9o8U88KorRY7pfheWL9k/kFDOx3gq2JIbk9pFYC9
clzYyN9kMUGX95ESsBvOOXpDQ0pBuOah0DzKWT1ObM4H4M8hTt436aLtCLhXOaYL
tvZXFJGcJWjnf97GpTOWSPZ7zx+wecCkYbGvC0mAA+8uxXuCP2vCZUtABm56j1Op
8gCI+1LcDwANUaF83WhHapslkc0NKVo1k108wumTdJm0132kwDBwj1yoL3uBpkmH
aG1nhpSaMJ8c9/lfsWuWkeLQVHWSf8/5npOziayKi/JwjmTdF0OAESy1M5HMbcpG
DHbFwQn1Lev3wpsPjD1kWmwoSMOEkfWJsGMKULyYm24+YZl1PO4cwo6ageiZ29lM
SI3nbiRQSGkuBxWetF3i0hsJdz/YwviiMh/2d43cQK0KKpnITWYiEbLMmq0jGWy7
F+UIp1yr+2ZFNuOg5uscvIos86ORdf6tiJ/OBKSl82ftk6HzpVqx0JFvGHaGloXX
+9KCDzwEWd0fnCuBMJK5mWxgKbkZkYlscuLANtjb3Hju3p+mFOQUv9wCk/IiY8ue
vjNWOhZU09Sn2pClc9sA
=+iIv
-----END PGP SIGNATURE-----

--ikeVEW9yuYc//A+q--
