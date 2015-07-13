Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CD98BB88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 15:39:25 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D27187C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 15:39:24 +0000 (UTC)
Message-ID: <1436801960.6901.19.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Date: Mon, 13 Jul 2015 16:39:20 +0100
In-Reply-To: <20150713140752.GA15582@gmail.com>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1507131027000.7522@pobox.suse.cz>
	<20150713140752.GA15582@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-AC7SnqN+iE93SS/h8ILm"
Mime-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-AC7SnqN+iE93SS/h8ILm
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2015-07-13 at 10:07 -0400, Konstantin Ryabitsev wrote:
> On Mon, Jul 13, 2015 at 10:32:06AM +0200, Jiri Kosina wrote:
> > If the credentials can be used both to push to ra.kernel.org and to acc=
ess=20
> > your "local" copy of the GIT repo (on your notebook / desktop / storage=
),=20
> > I can just push the malicious commit (*) to both repos and you might no=
t=20
> > notice immediately (because you wouldn't get non-fast-forward hint from=
=20
> > git).
>=20
> This is mitigated somewhat by existing 2-factor mechanisms placed on
> select git repositories.
>=20
> https://korg.wiki.kernel.org/userdoc/gitolite_2fa
>=20
> To successfully attack in this manner, you would need to push to
> gitolite.kernel.org from an IP address that's been previously
> 2fa-validated by the developer.
>
> Which brings me around to grumbling a bit -- since we've made 2-factor
> auth available, only 30 people have set up a token[*] (not even 10% of al=
l
> account holders) and only 25 repositories/subdirs have a 2fa requirement
> on them, out of 450 defined.
>
> I'm far from suggesting that we make this mandatory, but I'm open to
> any suggestions on how we can make more developers enroll with 2fa.

It's a bit painful for those of us who move around a lot and no-one has
ever articulated a clear threat vector it's supposed to counter.

In fact, I'd argue it gives a false sense of security: the ssh keys and
authentication factors aren't what I'd go after if I were attacking
kernel.org because anything I pushed using a stolen key would instantly
be noticed the next time the maintainer pushed and the tree wouldn't
fast forward.  If I were trying to get a bogus commit into the tree, I'd
be attacking the maintainer's laptop to put it into their personal git
tree (I'd actually tack the code on to an existing commit via rebase ...
cleverly choosing a commit they hadn't yet pushed), so no-one would
notice when it was pushed to kernel.org and it would be properly
accounted for in the subsequent pull request to Linus.  2 factor
authentication does nothing to counter this.

James


> Best,
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



--=-AC7SnqN+iE93SS/h8ILm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJVo9uoAAoJEDeqqVYsXL0M3qgIAI7JYED1vb9NptwoBqTmMZZh
6f4Kz0gTcxvaQGJlligtrxXtmQc96uvmCtMw//7BirNlARpoiVCaYy97mK/CDJkk
BJiF9+dQ1nDfnsjpDJCaNIKczqq/vrEn2VY8EKGG0iGGTXLdf/GZUCXokmlF8k1d
uST0+maGM0a9oNJQmNi4iU8xWdT0eDQEVuSXO6wRjOwv76ZyQaCwF2RpohdVHNOU
dRy+qaHUB8EJn8c1ZP1UYt+9++bh+HI/o2rJmwJ7zDFKgNszrDm95sl8Gu2DUb4U
O9dRkw+YRrmn3ufZIWEx3irDA8929Wk+lcJ8Mkba4I2gSQLD9C8gp18qbviP2ko=
=WdBe
-----END PGP SIGNATURE-----

--=-AC7SnqN+iE93SS/h8ILm--
