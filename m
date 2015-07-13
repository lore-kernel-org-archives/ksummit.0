Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 06D74BB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:02:44 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8E59B12D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:02:43 +0000 (UTC)
Date: Mon, 13 Jul 2015 17:02:35 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150713160235.GI11162@sirena.org.uk>
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
	protocol="application/pgp-signature"; boundary="gN3M3+2YQR7w0cmk"
Content-Disposition: inline
In-Reply-To: <1436801960.6901.19.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--gN3M3+2YQR7w0cmk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 13, 2015 at 04:39:20PM +0100, James Bottomley wrote:
> On Mon, 2015-07-13 at 10:07 -0400, Konstantin Ryabitsev wrote:

> > Which brings me around to grumbling a bit -- since we've made 2-factor
> > auth available, only 30 people have set up a token[*] (not even 10% of all
> > account holders) and only 25 repositories/subdirs have a 2fa requirement
> > on them, out of 450 defined.

> It's a bit painful for those of us who move around a lot and no-one has
> ever articulated a clear threat vector it's supposed to counter.

As the owner of about 16% of those repositories and someone who travels
a reasonable amount I have to say I actually find it a lot easier than
the previous system (especially given that previously I had to share a
single kernel.org SSH key over all my machines).  That's got more to do
with being able to use a self supplied SSH key but still.

> fast forward.  If I were trying to get a bogus commit into the tree, I'd
> be attacking the maintainer's laptop to put it into their personal git
> tree (I'd actually tack the code on to an existing commit via rebase ...
> cleverly choosing a commit they hadn't yet pushed), so no-one would
> notice when it was pushed to kernel.org and it would be properly
> accounted for in the subsequent pull request to Linus.  2 factor
> authentication does nothing to counter this.

For me the second factor is as much a defence in depth thing as anything
else.

--gN3M3+2YQR7w0cmk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVo+EaAAoJECTWi3JdVIfQDqwH/jrvErUkib6U8cLInyWgozIy
D0vQh4rZ0mpza8FmdJzGD5mtl3a8Bh74HXhoP1hr19uoPw5vE6GNHsC6d8nfd0KG
D4kOfwrXrQ0cYX9oFWIBGr4q577dlzbDbuML58JidJM6itYpcBvP4v0ZRoGd4qOy
Y5+uhm3jb8wyXtUpmfOe5u3AqafbP/gXvekeMeJIVz2uARWnt/rFhrlSW4cuLjCW
vCIStlBD/k3QAiZcDuYlA4WE8o6cjB0VEmSyxaUqwqIuypzbkNaVPR3rZNVpRjSf
QNYobCIkIhGmPGe8G1edapCWl7XRRsOJjMrZxuaNKqYG2YEdK1UQCfDmHFey2xA=
=gRG3
-----END PGP SIGNATURE-----

--gN3M3+2YQR7w0cmk--
