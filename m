Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 96B67AB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 15:40:18 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5A32A20111
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 15:40:17 +0000 (UTC)
Date: Wed, 14 May 2014 16:40:02 +0100
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20140514154002.GH12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <1904209.2bUKgQ0eOo@vostro.rjw.lan>
	<20140514115745.GZ12304@sirena.org.uk> <7582809.t9iBxJcjvo@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pzF0hARdObpE3ANG"
Content-Disposition: inline
In-Reply-To: <7582809.t9iBxJcjvo@avalon>
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


--pzF0hARdObpE3ANG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 14, 2014 at 05:26:20PM +0200, Laurent Pinchart wrote:
> On Wednesday 14 May 2014 12:57:45 Mark Brown wrote:

> > Since the core device probe is deferred until everything it depends on
> > is ready it'll get pushed along the device list so that it appears after
> > everything it needs and hence is suspended first.

> That might solve (part of) the master vs. components dependencies (and ev=
en in=20
> that case I'm pretty sure that there will be cases where the master needs=
 to=20
> be suspended first and cases where th slave(s) need to be suspended first=
),=20
> but it doesn't handle inter-slaves dependencies.

> In the V4L subsystem we've implemented an explicit power management API t=
hat=20
> "slaves" (called subdevices in V4L) must implement, to be called by the=
=20
> master. That's of course more of a workaround than a perfect (or even goo=
d)=20
> solution.

Right, that's what the function of the master device is in suspend for
this model - it quiesces the compound device as a whole so that any
interdependencies between the devices have been unwound (including
giving callbacks to the slaves where appropriate).  It gives us a place
to hang everything associated with having the devices so closely
interrelated.

Though as Rafael says with async suspend that gets broken.

--pzF0hARdObpE3ANG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTc45PAAoJELSic+t+oim9WuUP/jiC6Rj3ZfH+P4pRyjUOMw+d
qzP/45oqzQ3IkRGFgKo+0Z7XA322L4Cxnp6vHwO7pSI1oBQOj2xaWrHaLrOyqkwe
n8GILLXxu1XTpvN/l4sI5208rVn3y3KBjUhgmLTHbCfHKsU5nNDyWGWZKFRb9VlY
043QbgwHuqtuHJXh6uOtDmKdSHj70y5ntf+Rc9wi5L44Hjtu0JseHuDsXJsa2Id9
XGRyOYSzyG6wMuAANq+mkesOkjS5OJ6b5sRPSHMcQaEp1CqAOYPIBQ9Ptrk4I00B
bq6EsTUhzcFzsDq9edFIhvY/LZCN6ZRzvZeb3BNMCM6+pksffjL4FXHTKc2SSmf/
0rm4nkyBHETEWZTBFTgWNhbVs8MiDJsWHPzpRF/+jnWU1/WIdmXcJ3h/XgxHO9tC
KP3SUvOqyMd8m0+vj1mMfEmgtjhS6Xd7FBbs/UVsyUSeBNrJ2VyZtSLkUQJm1Jq+
DBxi56UtlR7Mn1l0DVGzIPJcfbQxaYPDan9tJcZgvTkHgvrbiHrMnIV/J4pdbo0K
/HZI3aI8lNx+X+2ibs6Adc284eCCo4Go0U1GuwtzP16I8FSeG+zCB6z+tJNX6UMz
Iu4iOJuVnqTjHDr64AlFhtoBwTwMP3nPPr7qXxPRMqZpDXkgprN8XHQA4O72r33L
pcgARdZAa9uq2dGlsFXx
=tk/n
-----END PGP SIGNATURE-----

--pzF0hARdObpE3ANG--
