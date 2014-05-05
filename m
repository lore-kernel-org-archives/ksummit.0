Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 89C5D92F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 00:57:49 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4B0191F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 00:57:49 +0000 (UTC)
Date: Mon, 5 May 2014 12:06:22 -0700
From: Mark Brown <broonie@kernel.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Message-ID: <20140505190622.GH22111@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan>
	<20140503020242.GD22111@sirena.org.uk>
	<3007964.pJHjDrtZps@vostro.rjw.lan>
	<1399279528.20388.37.camel@pasglop>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="hAW+M2+FUO+onfmf"
Content-Disposition: inline
In-Reply-To: <1399279528.20388.37.camel@pasglop>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dvhart@dvhart.com,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
 etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--hAW+M2+FUO+onfmf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 05, 2014 at 06:45:28PM +1000, Benjamin Herrenschmidt wrote:
> On Sun, 2014-05-04 at 14:28 +0200, Rafael J. Wysocki wrote:

> > In my opinion, device drivers should not be concerned about that
> > really.
> > The layers of code above them (bus types etc.) should, but not drivers
> > themselves, because that makes it difficult to use the same driver
> > for the same piece of hardware on two systems with different firmware
> > interfaces.

> Only for standardized resource types, such as mmio ranges or interrupts.

> Anything else is absolutely in the domain of competence of the driver
> and I would argue *only* in the domain of competence of the driver.

> This is a dirty enough table, don't invite a 3rd party to it :-)

Right - boring and easy stuff is boring and easy but that's not all the
world and we need to acknowledge that.

--hAW+M2+FUO+onfmf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTZ+ErAAoJELSic+t+oim9CrEP/0LOFikfaA5lSACWvMB/YqRP
wwJhb8MWVc95CRxWl22jEw036hD4xXNhXsC6jjRowzVIW7KBUQHT8CWKbpHLo7zj
B0mhxU1BpMm1qrTYaSGvGV5oOn3MGYODNRcn7tKel81TTYQJtrpYWdC5fUPHkkAK
1+1XTr+0RtKRr2CfdhfQJjYtzE875VL7Jno/MNhvfJU1M0Bb+qk4pjicUVW6Dj02
OCr8RS7ysBuM3sofv6/T84cblLap0xpm+9RWLw7eYR5CqZPvsmlX/WLpjAvoZ1yh
MGV9nZwgEnC+JsWfKFH/B7HPM/yEJMoLXf0Bp4BLzo8R39Cijm/rgI2bkXYggPvQ
UM5DdJjT11Tkuz30NdKPPuahncI4ERjXDVRo88wDA6ZjMwbCy9xHM2dRSkJr0lt7
5YtTK6Dhot0UXF/XDcLoCAE+jkChrNDVZhhDh2LzRb0O5ypkuH0WjLQ9UjZl+YHb
1RrEzBuavGBToPOFKgiHub0dV304Cgk/gnG1B9CACJVen4YQ1Ne221kl1SKyQNeZ
a+pnnWJJyoeBvhH9jeeKPHk+pjUNdNymqPn7rp7J0yGyxZ4oDNKRh1d7OHjvL0NH
k8zc+UnZ3EptrBOZTwDZ0iB29dSEAMwG6F0HqWuCptS1bU/p2Jl1TwDapOj1QVWO
IdYSElGpygx4xnIN0o7P
=ptCx
-----END PGP SIGNATURE-----

--hAW+M2+FUO+onfmf--
