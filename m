Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DBD6CABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 16:43:16 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 787E11C1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 16:43:16 +0000 (UTC)
Date: Wed, 8 Jul 2015 17:43:10 +0100
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20150708164310.GR11162@sirena.org.uk>
References: <201507080121.41463.PeterHuewe@gmx.de> <2102387.OD8sBG4Eol@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wQ8ANTl3uYPVjUZt"
Content-Disposition: inline
In-Reply-To: <2102387.OD8sBG4Eol@avalon>
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--wQ8ANTl3uYPVjUZt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 08, 2015 at 02:49:47AM +0300, Laurent Pinchart wrote:
> On Wednesday 08 July 2015 01:21:40 Peter Huewe wrote:

> > We are definitely short on reviewers and thus have mostly overloaded
> > maintainers.

> I was about to propose a related core topic.

> The reviewing and maintainership process seems to have a hard time scalin=
g to=20
> the amount of contributions we receive, to the point where even well know=
n and=20
> respected kernel developers get discourages.

tl;dr - upstreaming support for out of tree SoCs is currently often
hard and time consuming.

> Throwing more maintainers, co-maintainers or sub-maintainers at the kerne=
l=20
> won't magically solve this, as the more core developers a subsystem has t=
he=20
> more difficult it will be for them to synchronize. I would like share=20
> experience about good practice rules that have proved to be effective.

Right.  In the specific case of upstreaming out of tree SoCs it's often
in a large part part that there's some massive technical debt in the out
of tree code working around generic problems in mainline, things like
missing features or subsystems.  On the one hand those are the hardest
bits to get solved upstream, but equally because they present generic
issues they should be the easiest to collaborate on.

Tim Bird (CCed) has been working to try to get people together to try to
analyze what's in the kernels people ship on product and see what we can
do to bring that debt down, there's already some people starting to do
some active work on this.

--wQ8ANTl3uYPVjUZt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVnVMdAAoJECTWi3JdVIfQO5UH/AxVU1OR2IojPwLwbNEXryzY
3VloaRtz3Qs2dZCkyb6O3Ao16qcjk5VPoBWJRMdT2NQUTEgttmWkcNGU3G/633uw
mrkMp4xdSU6w5XBZ7XwORzFPHIaZW/I+KjP79cZXQIoh1g0VmEFJM7vzGOTx1+Vc
FrivHHfoYlyFT7mciA3Q3jTT+i4Quoq7uZC5g2JxwJb45iJnM7orLB/+p4dn3DPS
2UXUgkzXDXbY0RXtk8MDcJugvkoPQqEPIkO1vrW42TqOmn8pwX60eTLUhvD8WXMK
IfAgS7YDwTp+fcLq0ENY9OL6+BunVLm+aFyCwHGJz8dblmXEuXQPlDIIeUuOMvU=
=1Mwx
-----END PGP SIGNATURE-----

--wQ8ANTl3uYPVjUZt--
