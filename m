Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8654CBC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:05:45 +0000 (UTC)
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E7E8B25E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:05:44 +0000 (UTC)
Received: by iecuq6 with SMTP id uq6so238276447iec.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 09:05:44 -0700 (PDT)
Date: Mon, 13 Jul 2015 12:05:41 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150713160541.GC15582@gmail.com>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1507131027000.7522@pobox.suse.cz>
	<20150713140752.GA15582@gmail.com>
	<1436801960.6901.19.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ghzN8eJ9Qlbqn3iT"
Content-Disposition: inline
In-Reply-To: <1436801960.6901.19.camel@HansenPartnership.com>
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


--ghzN8eJ9Qlbqn3iT
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 13, 2015 at 04:39:20PM +0100, James Bottomley wrote:
> > I'm far from suggesting that we make this mandatory, but I'm open to
> > any suggestions on how we can make more developers enroll with 2fa.
>=20
> It's a bit painful for those of us who move around a lot and no-one has
> ever articulated a clear threat vector it's supposed to counter.
>=20
> In fact, I'd argue it gives a false sense of security: the ssh keys and
> authentication factors aren't what I'd go after if I were attacking
> kernel.org because anything I pushed using a stolen key would instantly
> be noticed the next time the maintainer pushed and the tree wouldn't
> fast forward.  If I were trying to get a bogus commit into the tree, I'd
> be attacking the maintainer's laptop to put it into their personal git
> tree (I'd actually tack the code on to an existing commit via rebase ...
> cleverly choosing a commit they hadn't yet pushed), so no-one would
> notice when it was pushed to kernel.org and it would be properly
> accounted for in the subsequent pull request to Linus.  2 factor
> authentication does nothing to counter this.

It counters several vectors of attack:

1. Someone makes a commit to your repo while you are on an extended trip
   and it percolates to other repos that pull from you. When you notice
   this upon your return, it's already been widely disseminated.
2. When multiple developers are working on the same repository, an attacker
   can time a commit when one of the developers is about to step away for a
   few days (travel, conference, etc). When the developer is back, they
   are going to do a "git pull" as first thing, to get the latest
   commits from other developers and will therefore likely miss "their
   own" missing commit, pulling it in their tree.
3. Developers who use multiple systems (home workstation and a travel
   laptop, for example) will routinely perform a "git pull" to keep
   their trees in sync and it would be fairly easy to time an injection
   into the tree to sneak in a commit.

Getting private ssh keys is a lot easier than getting full access to a
developer's workstation:

- Many developers ssh to systems without restricting agent forwarding to
  a set of trusted systems only, which would allow an attacker on a
  compromised system to ssh to gitolite.kernel.org with developer's
  credentials.
- Many 0-days in client tools allow full access to local content, but
  not necessarily an ability to execute arbitrary commands.
- I'm willing to bet there are lots of removable storage floating around
  people's workdesks and travel bags that contain full copies of their
  homedirs for backup purposes (tell me it ain't true!).

The 2fa solution we have certainly doesn't solve all possible problems,
but it does have very good reasons to exist.

Regards,
--=20
Konstantin Ryabitsev
Linux Foundation Collab Projects
Montr=C3=A9al, Qu=C3=A9bec

--ghzN8eJ9Qlbqn3iT
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVo+HTAAoJEDZgaZyZ4FVXZl0H/ig6ht0N+dBW1diXLCnprc5Z
LWEJ/HJ4F18unyLG6ZgCKuaWJfxB/l5oGjNct+KFhlvn3of5Hh649rxL7BEAr68t
X3yGz76S55n5KwS7gMKlXQ3BtaBY5k8JGk0hVt7qJaSPx3+bXBQtJO9sIXOFFMLk
nv/ARsmBISBZFzDazH55br4PrZAFYUzQFO8ll/qgO6PlcFtHM1laEIzer+IgkRWE
3ZQL1mwIVPgsxxADsFGe8W7Y6h+U34hq7aoEmNEbJ7Nve8BQKBMWno4e98Rigb6S
MWhpakeyjq8AzvaqGqE+WypuJMW5ohH0XVeD7WDe+UKYj1C49yO2duIZwuQKgd8=
=2DKJ
-----END PGP SIGNATURE-----

--ghzN8eJ9Qlbqn3iT--
