Return-Path: <James.Hogan@imgtec.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EE066483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 12:17:51 +0000 (UTC)
Received: from imgpgp01.kl.imgtec.org (mailapp01.imgtec.com [195.59.15.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 28E18162
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 12:17:51 +0000 (UTC)
Date: Fri, 26 Aug 2016 13:17:48 +0100
From: James Hogan <james.hogan@imgtec.com>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20160826121748.GV13232@jhogan-linux.le.imgtec.org>
References: <20160826044651.GA25341@sasha-lappy>
	<20160826112635.GA27627@kroah.com>
	<20160826114205.GA16682@jhogan-linux.le.imgtec.org>
	<20160826115653.GA28645@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0k4Rxg87Lb8yV0u3"
Content-Disposition: inline
In-Reply-To: <20160826115653.GA28645@kroah.com>
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

--0k4Rxg87Lb8yV0u3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 26, 2016 at 01:56:53PM +0200, Greg KH wrote:
> On Fri, Aug 26, 2016 at 12:42:05PM +0100, James Hogan wrote:
> > FWIW I have a git alias that blames a git diff or commit (I think based
> > on an old version of [1] with some fixes). That doesn't necessarily tell
> > you where a problem was introduced, but it sure can help if the problem
> > was introduced nearby the fix (and for fixup commits before a rebase).
> >=20
> > Food for thought if nothing else.
> >=20
> > E.g.=20
> >=20
> > $ git blame-show v4.8-rc2
> > commit 694d0d0bb2030d2e36df73e2d23d5770511dbc8d
> > Author:     Linus Torvalds <torvalds@linux-foundation.org>
> > AuthorDate: Sun Aug 14 19:11:36 2016 -0700
> > Commit:     Linus Torvalds <torvalds@linux-foundation.org>
> > CommitDate: Sun Aug 14 19:11:36 2016 -0700
> >=20
> >     Linux 4.8-rc2
> >=20
> > diff --git a/Makefile b/Makefile
> > index 8c504f324154..5c18baad7218 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -1,7 +1,7 @@
> > Blaming lines:   0% (7/1684), done.
> > Blaming lines:   0% (7/1684), done.
> >   c517d838eb7d0 (Linus Torvalds   VERSION =3D 4
> >   29b4817d4018d (Linus Torvalds   PATCHLEVEL =3D 8
> >   55922c9d1b84b (Linus Torvalds   SUBLEVEL =3D 0
> > - 29b4817d4018d (Linus Torvalds  -EXTRAVERSION =3D -rc1
> > + 694d0d0bb2030 (Linus Torvalds  +EXTRAVERSION =3D -rc2
> >   1a695a905c185 (Linus Torvalds   NAME =3D Psychotic Stoned Sheep
> >   ^1da177e4c3f4 (Linus Torvalds  =20
> >   ^1da177e4c3f4 (Linus Torvalds   # *DOCUMENTATION*
> >=20
> > Cheers
> > James
> >=20
> > [1] https://github.com/dmnd/git-diff-blame/blob/master/git-diff-blame
>=20
> Oooh, nice!  Care to push this "upstream" to get it merged into git for
> everyone to use?  It looks helpful to me.

I wasn't planning to, mainly because I'm not the author and presumed
it'd need rewriting to work properly/efficiently with git rather than
just being a wrapper script.

I'd love to see that functionality in git though, maybe as a --blame
argument to git diff/show

Cheers
James

--0k4Rxg87Lb8yV0u3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXwDNsAAoJEGwLaZPeOHZ6e88P+QFz/RRU/aDYoQgXF3V2tjke
X4SgAv6W/0fmtPFIaCVicC1To1XHYEuQrWAAnCGRKo7uPlkZx8+77Rq5EBuY15KN
8xdWJMXS5DM6cGvxuLZQ8m5DKq3H0VYAaNtPysph+XIOWZEQM7dCD8EPxt6ljGOQ
XsdXlccKbtFHxWeSfk7PDp8d0tQdsjZRQwPzJD3vZWlqSczg7b4b07JXo864lOp2
Lpi0OY07sjQB3BaUgDIGLpLOkXa3/bNo5CAsPx54O0Lb3gYr26pq20YjWj+MV0S6
YD7fGiPj/wjnt45ErKblxxg4PsNT7/3zCQ8O4W6MA/M9IrNhmGNyMk2y2laC3BUa
C17WoiHHK1cSl+7Sl1MyJuAtrXxarNywuSF90WGY5fvBEAiR/AIW1gm4XzUb+nOc
gAjUqErdKHTIHxk1mIcXew33D2Mu7f+gOpynW1ENfoTMm8AYRym9DkURhIhfrzev
0xh822W2iZ1Du/3mHH04RHmku9F9J13IgEZXSCaWnILFwY2dT3B07bpAiCn51S8k
9NhmHtuZFzfbdwX2qPjf2xjv8j7XmTf2dtX7Qnp2weCAQdLMst3S8ZCLelBXetHy
Zrgy/YAcO6b6Mc50Za7skQgNrQSOTWnDHj/PuHeIqBcfcy/tiTC8evTeCM3jPnQ6
Wu1riJaf2jaO1sFqjimM
=c2w7
-----END PGP SIGNATURE-----

--0k4Rxg87Lb8yV0u3--
