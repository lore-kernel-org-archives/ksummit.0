Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 15390ABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:35:11 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A3F1BEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 19:35:10 +0000 (UTC)
Date: Wed, 8 Jul 2015 20:35:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20150708193505.GG11162@sirena.org.uk>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150708001650.GA32155@kroah.com>
	<20150708180637.GV11162@sirena.org.uk> <1571305.WKZVFOSBqK@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="spzFwWfYKRzjK1rH"
Content-Disposition: inline
In-Reply-To: <1571305.WKZVFOSBqK@avalon>
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


--spzFwWfYKRzjK1rH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 08, 2015 at 10:27:10PM +0300, Laurent Pinchart wrote:
> On Wednesday 08 July 2015 19:06:37 Mark Brown wrote:

> > I think this *might* be something that the efforts to reduce the amount
> > of out of tree embedded code can help with?  A part of that effort is
> > identifying areas that need fixing, there will be a large enough list I
> > imagine.  The hard part is always matching people up with things that
> > they are interested in though.

> There's also the issue of documentation. Datasheets for embedded SoCs are=
=20
> often not publicly available. Even when out-of-tree code exists, the lack=
 of=20
> documentation makes it more difficult to understand it and port it to=20
> mainline. I've seen many such cases in practice for camera sensor drivers=
 that=20
> are often provided by vendors with a small set (or even a single) hardcod=
ed=20
> configurations, using large register address/value tables. Porting such a=
=20
> driver to the mainline APIs often require computing register values from=
=20
> parameters received through the subsystem API, which requires a good=20
> understanding of the hardware.

Yeah, if you're doing device support.  The generic subsystem bits are
less impacted by these issues, though you can't completely get away from
it.  Fortunately I don't think we've got a great shortage of problems
that need addressing so there should be some things that are tractable!

--spzFwWfYKRzjK1rH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVnXtoAAoJECTWi3JdVIfQI4UH/3/mdVEDzQfGtuUwfl4CLAbb
zIeR5k4l7took0avKCBgRp1dRnt+0Iyfa6utuEtzWejN2XP/9ohrD+M6yNJvHOMB
MM/MPKlspAQg1zN4Pn9tz+FyN4b5kWHPS//u8g14ajS1fYQtVDTzIL8bK8BuOC6P
zSihgDxj5AmkzRw8dUGk5X5NHkLjQqoTF5biav6iLqcV28MxH78V3T6FH0dYc1CQ
WxSUAWuDLLQS78vd9agAzmOpITAAJyXBlm+qGqaQthtJ9Et+B5QIllzEOaAxGkDT
Iw20l7zUFghaQD4DNzu5qx3MJmFU2xFh6I/V3NxZEGRvMREfL3KK0YO66mD9cmc=
=CE6Y
-----END PGP SIGNATURE-----

--spzFwWfYKRzjK1rH--
