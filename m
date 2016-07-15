Return-Path: <riel@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4C87F71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 06:19:21 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DA25612D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 06:19:20 +0000 (UTC)
Message-ID: <1468563557.30053.30.camel@redhat.com>
From: Rik van Riel <riel@redhat.com>
To: NeilBrown <neilb@suse.com>, Greg KH <greg@kroah.com>, Guenter Roeck
	<linux@roeck-us.net>
Date: Fri, 15 Jul 2016 02:19:17 -0400
In-Reply-To: <874m7rcus8.fsf@notabene.neil.brown.name>
References: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
	<20160715014103.GA5791@kroah.com> <578850EB.3090109@roeck-us.net>
	<20160715042938.GA5527@kroah.com>
	<874m7rcus8.fsf@notabene.neil.brown.name>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-cDAVgeGIDIwWnPBcRkqv"
Mime-Version: 1.0
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-cDAVgeGIDIwWnPBcRkqv
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-07-15 at 15:52 +1000, NeilBrown wrote:
> On Fri, Jul 15 2016, Greg KH wrote:
> > On Thu, Jul 14, 2016 at 07:56:43PM -0700, Guenter Roeck wrote:
> > > Overall, I can not imagine that it is even possible to use quilt
> > > trees as basis
> > > for development in a company with if active kernel development,
> > > even more so
> > > if a large number of engineers and/or a number of branches are
> > > involved.
> > > Sure, the QCOM example may be extreme, but do you really think
> > > that writing
> > > those 2.5M LOC would have been possible if QCOM had used Quilt
> > > trees instead
> > > of git ? Using Quilt would for sure have prevented them from
> > > writing those
> > > 2.5M LOC, but then there would be nothing. That doesn't sound
> > > like a feasible
> > > alternative either.
> >=20
> > It is possible, look at the Red Hat and SuSE kernel development
> > teams.
> > Yes, in the end, most of the patches are backports from upstream,
> > but
>=20
> You are glossing over a key point.=C2=A0=C2=A0We (or at least I as a SUSE
> kernel
> developer) don't use quilt for development because, like Guenter
> says,
> it would be too clumsy.=C2=A0=C2=A0I do development upstream if git.=C2=
=A0=C2=A0Upstream
> first.

The same is true for Red Hat. We have had an "upstream first"
policy in place for over a decade now.

RHEL is just not where development happens, because development
happens upstream.

RHEL is also developed on a git tree nowadays, because there is
no need to extract patches from RHEL, since the code came from
upstream to begin with.

It sounds like the embedded people are causing themselves a lot
of pain. Pain the distro people got all too familiar with a decade
ago, and decided to leave behind.

--=20

All Rights Reversed.
--=-cDAVgeGIDIwWnPBcRkqv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJXiIBlAAoJEM553pKExN6Dm8oH/jXDFtEmx6yzRv2BrMk1Nlkv
S4uZwBHXp1KitQg4p06eO8SE0VL9Jt7S2pVvHAQcrqzjacwmIJ9XeKNRQ3gk31oT
Zh2Z7xeKJIdM4oyoWaogfQg3OZu4yJDrk43TRUhqezpm6CdMjlrLeW4feaVRvtz9
Gx8eh3rGVOTBDgVXuNBu+ZPc+QMzbxe+jV50IlsxAJgG34g1E8NlyZYAmAA4yV0F
prg89ai4HIkyYrs8N85cJWrHcCfusSDmzS/j1/mOwRwke5FhCn7zY1CdVGTL5fNx
POVyxiES72xac7rfKumw04qbSL81oPxkrizF5pzfhIe1HVdh88FEcCtTdx0m+PY=
=ZbW1
-----END PGP SIGNATURE-----

--=-cDAVgeGIDIwWnPBcRkqv--
