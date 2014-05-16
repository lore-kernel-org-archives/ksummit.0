Return-Path: <ben@decadent.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6D5F748E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 22:21:08 +0000 (UTC)
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk
	[88.96.1.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CEE161FDEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 22:21:07 +0000 (UTC)
Message-ID: <1400278842.2647.62.camel@deadeye.wl.decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: Jason Cooper <jason@lakedaemon.net>
Date: Fri, 16 May 2014 23:20:42 +0100
In-Reply-To: <20140516184205.GL27822@titan.lakedaemon.net>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140511083729.211e9b5f@lwn.net>
	<20140515121546.3A06AC40B0E@trevor.secretlab.ca>
	<CAL_JsqJw11fZBbLVi=xxC559iWdwCMFOJ4XYM-8EjykttoWsOg@mail.gmail.com>
	<20140515194215.GR27822@titan.lakedaemon.net>
	<CAOesGMi0JrTp9kUVDod4duBOCZ+wNRJ0dMmgvBX7jEQRjE5cCA@mail.gmail.com>
	<20140516041022.GY27822@titan.lakedaemon.net>
	<1400265111.2647.54.camel@deadeye.wl.decadent.org.uk>
	<20140516184205.GL27822@titan.lakedaemon.net>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-GlB6/8EpPwBks/ZqsxyX"
Mime-Version: 1.0
Cc: Rob Herring <robh@kernel.org>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ARM legacy board DT conversion
 finalization
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-GlB6/8EpPwBks/ZqsxyX
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2014-05-16 at 14:42 -0400, Jason Cooper wrote:
> On Fri, May 16, 2014 at 07:31:51PM +0100, Ben Hutchings wrote:
> > On Fri, 2014-05-16 at 00:10 -0400, Jason Cooper wrote:
> > > Joking aside, I concede your point.  It looks like the last two mvebu
> > > legacy platforms (dove, mv78xx0) might get merged into mach-mvebu dur=
ing
> > > the next cycle.  After that, we can reach out to the Debian and OpenW=
RT
> > > guys and see what legacy platforms are in use or rotting.  We can go
> > > from there.
> >=20
> > I just removed ixp4xx from Debian as the kernel image wouldn't fit in
> > the NSLU2's kernel partition any more (even after disabling quite a few
> > features that are enabled in most other configurations).  iop32x was
> > removed for the same reason, a while ago.
>=20
> Hmmm, I have two NSLU2's, they might make a good platform for the
> tinification/IoT work.  Small flash, small RAM, slow.

Yes, whereas Debian is a general purpose distribution where we don't
attempt to guess which applications will be used on which platforms.

> > Our 'legacy' (which I take to mean pre-v7) configurations are now
> > kirkwood, mv78xx0, orion5x (all about to converge to mvebu) and
> > versatile.
>=20
> I'm not familiar with versatile, the others I've seen a few times. ;-)

Versatile is one of ARM's own development boards, but more importantly
it's something QEMU can emulate.

> Does Debian see any user activity with mv78xx0?  I know your build
> system used to have boards with that SoC family, but are there any other
> users?

There is still one build server (ancina.debian.org) using that board,
but I don't know that there are any other users.  The kernel package was
only added to support those build servers.

Ben.

--=20
Ben Hutchings
If you seem to know what you are doing, you'll be given more to do.

--=-GlB6/8EpPwBks/ZqsxyX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUAU3aPSee/yOyVhhEJAQoAvA//W9vgTR0wD9rRoHPSMfvz541esd9jEJdM
4TP0roppYjhFFbV80jYyfZz+M2XkR3cvqpzuxgCtsfdFTLbYSX4sXFJmoA3MIyyw
FsNjuIRLOQJueLzKVn/UzM5bSmIDblHV7p7XtNbtRi+bUknQreMTcwAwgMX/jOP6
CawaP9oDgNUbpAF+ATvip/qIZ9PypbUvjddlllz46goGNNrDH8+1n1LSits2B0u/
mfpBW+vbanQAijbJaY8Yz/9SumBdVw7aPBi+gg63sqZ1NKxrXJLtw4pFuMqfjKgo
C7EUNdBFHxtOGjaANf6HtSONGKRORdjuVZWrQrSXxxSkhu62uRSxzYlALe+9G87Y
msrjgwrESJI88e9C23g2mJkx/X4EfnIlol1Ixf1d/nh8d6HoflfLNKZiGD93+rMM
iQBiNageiaGMDLby8dg83y3waeDUVe7g0EhLR5Uj4ubbeGSD7qxB9KiL74akKf4H
p9cV7rf9h4XczPM9fLSdL3zFL02P0crCThwJoalQrXD/TNxkQcACvq5s1L0rU+ho
yK7CPfUrs0ScerOo3F0xIccHOdRKQcNlvw728TuYbFb3+j+JffEoecKU73Irhj55
MO+pygrxtrmRP+me4P05XKNsiwaSaYrTzZ7g5mub/g1Yc2gocxkfoDl/xFiGtDZZ
w6cO6lnJXAM=
=UAkX
-----END PGP SIGNATURE-----

--=-GlB6/8EpPwBks/ZqsxyX--
