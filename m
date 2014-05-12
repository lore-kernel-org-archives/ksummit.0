Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9AAEC6FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 20:27:20 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2A8892039A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 20:27:20 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mark Brown <broonie@kernel.org>
Date: Mon, 12 May 2014 22:27:14 +0200
Message-ID: <1890814.sS5FutD9xo@avalon>
In-Reply-To: <20140512201438.GE12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <20140512201438.GE12304@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart107708403.DWJZrKsOhC";
	micalg="pgp-sha1"; protocol="application/pgp-signature"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--nextPart107708403.DWJZrKsOhC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

Hi Mark,

On Monday 12 May 2014 21:14:38 Mark Brown wrote:
> On Mon, May 12, 2014 at 07:43:22PM +0200, Laurent Pinchart wrote:
> > The problem is not limited to IOMMUs. We have similar dependencies =
at
> > suspend/resume time with camera interfaces for instance, where two
> > completely unrelated device in the Linux device hierarchy (a camera=

> > interface platform device in the SoC and an I2C camera sensor) need=
 to be
> > suspended and resumed in a controlled order. I'm sure many more use=
 cases
> > exist.
> >=20
> > Whether we can (partly) reuse existing infrastructure for this is n=
ot
> > clear. I'd like to gather use cases, to first find out exactly how
> > widespread the need is, and whether we can come up with a common so=
lution
> > or we are really faced with different classes of similarly looking =
but
> > distinct issues.
>
> This is something ASoC has been resolving since forever with the mach=
ine
> drivers, Russell King recently created a generic version of the code
> that does the dependency deferral glue (see linux/component.h).  It's=

> not a model of elegance but it ends up getting the job done.

That solves the probe time dependencies, but unfortunately not the runt=
ime PM=20
dependencies.

> Anyway, I'm definitely interested in this - a couple of the subsystem=
s I
> maintain are affected and it's something I've thought about a bit.

=2D-=20
Regards,

Laurent Pinchart

--nextPart107708403.DWJZrKsOhC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAABAgAGBQJTcS6nAAoJEIkPb2GL7hl1ftsH/RRUwZwwen7gP7y/WgchW324
wRO3XzBr1xbfponyvypMZEhM3vsbCjQMu9bFGrs8VMOGb3egiz/YRVAA4iLp4HD0
CzDW5v3MX4rfceLfsVf2Nei1r/fVkTRZoJZ5gO9kY1JF4UakCLoCZdAjN+A3eFL/
/C8nfve7KGrX6Ww1uE4X+0EyAL7PsyMU2KOzgJYUQeNbaxXTnoLX47s0X5r7ZhT4
AJZ+bMWmLjkrPA0QX7yE3maQDxNVSREeXq/QBdt7mXKsxrk1A9W1INFps57JWXe/
b8DaoV2XHKXuB2RhYZZgRyoM7HpPtGRxoLHTaI36nfA944dnVIaeqDzLrD/2VjA=
=V/27
-----END PGP SIGNATURE-----

--nextPart107708403.DWJZrKsOhC--
