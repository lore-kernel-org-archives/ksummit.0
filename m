Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EB208B1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:14:22 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7BACB12D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:14:22 +0000 (UTC)
Message-ID: <1436804056.6901.27.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Date: Mon, 13 Jul 2015 17:14:16 +0100
In-Reply-To: <20150713160541.GC15582@gmail.com>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1507131027000.7522@pobox.suse.cz>
	<20150713140752.GA15582@gmail.com>
	<1436801960.6901.19.camel@HansenPartnership.com>
	<20150713160541.GC15582@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-KF5QT7+7EAfewKVfCISZ"
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


--=-KF5QT7+7EAfewKVfCISZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2015-07-13 at 12:05 -0400, Konstantin Ryabitsev wrote:
> On Mon, Jul 13, 2015 at 04:39:20PM +0100, James Bottomley wrote:
> > > I'm far from suggesting that we make this mandatory, but I'm open to
> > > any suggestions on how we can make more developers enroll with 2fa.
> >=20
> > It's a bit painful for those of us who move around a lot and no-one has
> > ever articulated a clear threat vector it's supposed to counter.
> >=20
> > In fact, I'd argue it gives a false sense of security: the ssh keys and
> > authentication factors aren't what I'd go after if I were attacking
> > kernel.org because anything I pushed using a stolen key would instantly
> > be noticed the next time the maintainer pushed and the tree wouldn't
> > fast forward.  If I were trying to get a bogus commit into the tree, I'=
d
> > be attacking the maintainer's laptop to put it into their personal git
> > tree (I'd actually tack the code on to an existing commit via rebase ..=
.
> > cleverly choosing a commit they hadn't yet pushed), so no-one would
> > notice when it was pushed to kernel.org and it would be properly
> > accounted for in the subsequent pull request to Linus.  2 factor
> > authentication does nothing to counter this.
>=20
> It counters several vectors of attack:
>=20
> 1. Someone makes a commit to your repo while you are on an extended trip
>    and it percolates to other repos that pull from you. When you notice
>    this upon your return, it's already been widely disseminated.

If I'm away and not doing any activity, it's only going to be in trees
that are basing on mine, so not really wide dissemnation

> 2. When multiple developers are working on the same repository, an attack=
er
>    can time a commit when one of the developers is about to step away for=
 a
>    few days (travel, conference, etc). When the developer is back, they
>    are going to do a "git pull" as first thing, to get the latest
>    commits from other developers and will therefore likely miss "their
>    own" missing commit, pulling it in their tree.

How multiple developers wish to work on the same repo is largely up to
them.  I could design a work flow that would detect injections without
2fa, but if they choose another way, it's fine by me.

> 3. Developers who use multiple systems (home workstation and a travel
>    laptop, for example) will routinely perform a "git pull" to keep
>    their trees in sync and it would be fairly easy to time an injection
>    into the tree to sneak in a commit.

Well, that's not what I do: I have one master tree and I work from that.

> Getting private ssh keys is a lot easier than getting full access to a
> developer's workstation:
>=20
> - Many developers ssh to systems without restricting agent forwarding to
>   a set of trusted systems only, which would allow an attacker on a
>   compromised system to ssh to gitolite.kernel.org with developer's
>   credentials.

It's possible, but it's a really short window to trick an agent.  The
default of ssh is no agent forwarding, anyway.

> - Many 0-days in client tools allow full access to local content, but
>   not necessarily an ability to execute arbitrary commands.

I'm not sure I get this: you mean client tools may compromise my ssh
keys?

> - I'm willing to bet there are lots of removable storage floating around
>   people's workdesks and travel bags that contain full copies of their
>   homedirs for backup purposes (tell me it ain't true!).

Well, not me ... I use a mirror between my server and my laptop for
that.

> The 2fa solution we have certainly doesn't solve all possible problems,
> but it does have very good reasons to exist.

So: I admit that if I'm careless, 2fa helps protect everyone else.
However, I think you can see that if I'm careful (as I claim I am) 2fa
doesn't buy me much.

James


--=-KF5QT7+7EAfewKVfCISZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJVo+PYAAoJEDeqqVYsXL0MK4AIAJ47CKR9jTV97xHIeZkW5dxU
P7e8NSwPbgqGsAecnZ8Zl4BtmGDaDOOT1juQ3DJb4dI+zU9iM+dU+ZoA+qGAzl/V
OX9VtyuRahMxvSBhAjptYgR884M60etaAo18MtMBUBAEGzp5rc7NPq5b+q59UBAm
2DmixADkVe7DquaYn2ZcOvfXgVyokHWDSvC5ENxuKczjXKE6d8YwWEIaDzYjEDyb
iJUKE77IqmMzB/mrcglINqvTameUSKk0lszxZjp8W8D+cIjtTBIggs7z9zjPP091
eKe3D3QT/+o7htXg76dBKBocMA1dQKU1IsVCgtTbY5YaWIs6ZMCPFuwnVAjXAaQ=
=oBbw
-----END PGP SIGNATURE-----

--=-KF5QT7+7EAfewKVfCISZ--
