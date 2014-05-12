Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 02A09942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 21:59:46 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A4B70201E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 21:59:45 +0000 (UTC)
Date: Mon, 12 May 2014 22:59:25 +0100
From: Mark Brown <broonie@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140512215925.GY12304@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<3007964.pJHjDrtZps@vostro.rjw.lan>
	<1399279528.20388.37.camel@pasglop>
	<2059176.eyfmTsLPbt@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gJ/KN+iD8G+zT/Be"
Content-Disposition: inline
In-Reply-To: <2059176.eyfmTsLPbt@vostro.rjw.lan>
Cc: dvhart@dvhart.com, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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


--gJ/KN+iD8G+zT/Be
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 06, 2014 at 02:22:15PM +0200, Rafael J. Wysocki wrote:
> On Monday, May 05, 2014 06:45:28 PM Benjamin Herrenschmidt wrote:
> > On Sun, 2014-05-04 at 14:28 +0200, Rafael J. Wysocki wrote:

> > > In my opinion, device drivers should not be concerned about that
> > > really.
> > > The layers of code above them (bus types etc.) should, but not drivers
> > > themselves, because that makes it difficult to use the same driver
> > > for the same piece of hardware on two systems with different firmware
> > > interfaces.

> > Only for standardized resource types, such as mmio ranges or interrupts.

> > Anything else is absolutely in the domain of competence of the driver
> > and I would argue *only* in the domain of competence of the driver.

> But why can't we treat DT bindings as a standard?

Aside from the whole question of people bothering to pay attention to
the specs when writing their BIOSs DTs (as used in modern systems) and
ACPI have quite different models for what should be handled where - FDT
is pure data and expects the kernel to do everything while ACPI expects
to be used with active firmware.

--gJ/KN+iD8G+zT/Be
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTcUQ5AAoJELSic+t+oim9lsMP/1dKx7yE2Kftotg3Ahmeb5N3
8K6vytOj2LpkTKSCSX9/CyrbEPcZIRYaniAmegNAgVSy7KWulDaOAfjnU1RhIZi6
4V+JrmmVeJ1Op3VrcG+Xuz6IS/Wrp4EIAhWkYgz3qYvCktEdhGv9g1+PhMWJZmjA
emlTEr6H8IHIcCbWnBM3Ly0FcfZG6Vxb4wXu7rJYF1MT5rXss/jlkCJy4FyYdgnK
cva6IdFtZhRo7txVYVvC0eGvq9uHZxoW1OCzHGJHf0zKvPqfYgxgg/7fEkUNyyCY
Vb0sj9FfmKssBv9Gf9CEqtlFi+5VgUBF8e3At5gq9XK76f1ZOyLcSnNptejg/0Q8
qo6TC9otrZ4LK1JxkyjcpFX481UapxKx1e8oF5OGcib8cMq0+ZWfKeMW9l2U7FF3
UpWaYOJkVFczXqtSA8IXxh5M58D33uXSoPVQpZIni+nAd+k1eaz6Eg9WtDI0DjDg
ZsigLMJfobEMUdjVR5uNizOyGHU6RsXoksucDEZWR4w4vQLOevcHaF26qFFGZkbf
KyR7ksbkpgFhUFgvsw5XbhyvtHrDLXfyb9srfi3VDEmn4cs1whZY2AWmvwrND18o
LW2SUq1aCy4kP840Ef63n9lH/LOWcEPExrU/Lz0jBzf6cr1t3RkuZmvdjBxoehFF
U5HEOhCfBGZTLQBA94Yr
=NuoZ
-----END PGP SIGNATURE-----

--gJ/KN+iD8G+zT/Be--
