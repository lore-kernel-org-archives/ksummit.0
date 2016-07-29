Return-Path: <James.Hogan@imgtec.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A8F5883D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 21:59:54 +0000 (UTC)
Received: from imgpgp01.kl.imgtec.org (mailapp01.imgtec.com [195.59.15.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 651EB152
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 21:59:53 +0000 (UTC)
Date: Fri, 29 Jul 2016 22:59:50 +0100
From: James Hogan <james.hogan@imgtec.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160729215950.GB1302@jhogan-linux.le.imgtec.org>
References: <20160729131151.GF4340@x> <20160729075039.GA26402@x>
	<30809.1469794812@warthog.procyon.org.uk>
	<1596.1469801212@warthog.procyon.org.uk>
	<alpine.DEB.2.20.1607290919480.14761@east.gentwo.org>
	<ECADFF3FD767C149AD96A924E7EA6EAF053BB894@USCULXMSG02.am.sony.com>
	<1469815046.2330.13.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yNb1oOkm5a9FJOVX"
Content-Disposition: inline
In-Reply-To: <1469815046.2330.13.camel@HansenPartnership.com>
Cc: Christoph Lameter <cl@linux.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

--yNb1oOkm5a9FJOVX
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 29, 2016 at 10:57:26AM -0700, James Bottomley wrote:
> On Fri, 2016-07-29 at 17:52 +0000, Bird, Timothy wrote:
> > I've been trying to convert to a pure git-based workflow, but for
> > some reason git rebase -I always seems to give me problems.  It
> > always takes me much longer to just move some hunk from one
> > commit to another than it did in quilt using the patches and vi.
>=20
> I do this too, but I also work with the diff when moving hunks.  What I
> do is:
>=20
> git checkout <removal commit>

> git show <removal commit> > tmp.diff
> vi tmp.diff so it only has the hunks I want to remove
> patch -p1 -R < ~/tmp.diff

another alternative:
git checkout -p HEAD~

and...

> git commit --amend -a
> git checkout <add commit>

> patch -p1 < ~/tmp.diff
> git commit --amend -a

git checkout -p <pre-rebase commit id> (assuming you're moving the hunk
further towards the head of the branch).

thats easy to do from a rebase -i, as you have all the commit ids right
there and can just add a line:
x git checkout -p <commit_id>

>=20
> It's a bit cumbersome, but you can script it.  If there are better ways
> to do it, I'm interested.

I often find myself just splitting it up with rebase -i. I.e. just
duplicate the removal commit, and add "x git checkout -p HEAD~" in
between them. The second pick will end up just with the hunk you've
removed.

Then you can mark it as a fixup on a second run of rebase -i, or even on
the first run using commit --fixup and rebase --autosquash:

pick abc removal commit
x git checkout -p HEAD~
pick abc removal commit
x git commit --amend --fixup add_commit

For more complicated extractions where checkout -p HEAD~ gets confusing
or when you want to move a hunk backwards while avoiding nearby
conflicts, precede the removal commit with:
x git checkout -p <removal commit>

Cheers
James

--yNb1oOkm5a9FJOVX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXm9HWAAoJEGwLaZPeOHZ6SAcP/1R6+HQ19ISXySk2vGAw6+qo
OLH3D6HjVqNMCx+9mSUi7u4yOLHUxYqjLafhFQWHmTxAQUPi4ksLKVkZoejHLDTf
j/zCyroOlQP+cfOr3O5x+Obfn7VvtdILE5daa3tPQTWzcDR+phtUDgnHvtZLnixC
JL0MReHtVOSEmsg/M1W7H8l7dQsYlvtsoOAUHUlKpHxPGuZFnCwb2tCBBKnH2S+X
/7++dxbhXcl+GWUdYfSV2gP4aXMH58S6udymQS8DysRieJCkkq1wHAk2XRM5BSRr
N/RdELLLII+3/vFOrzde6aM+LouY88MPb0G/TK0240HBUTRN2Vbx5fSiVLKtG0Nx
SzJe0Da3USJDfARgJjZDRaY7PHGv9tOV4FSZZLXNB57CtPug3sCrh2gbAClZJvVd
0bZKmACk5x7+O5kFY9m+D6MXDRrJ7mD9WV6BogSkhimfkCG9KoZC6a8jCz7BlkOD
b5eVuqVhNUMLevcxjXh8ynTCK7bGGfKQmQVXV5+XoA1mlOz0tlBg5z+Ev/vIfk7Y
D1LR/ddRfpg0wRetwI+ztwWOhk2/K4jT83yIlyX53DGQ39HKXOf0QLcGGvTnebVk
sNNStogPr0Uee2bEPNlo1Xf/e3XeYqGl3FGnVVYDRBn/vnFMDEDUKxvHMwePPyxg
v1IouLR5Zbcog9AP7533
=aatW
-----END PGP SIGNATURE-----

--yNb1oOkm5a9FJOVX--
