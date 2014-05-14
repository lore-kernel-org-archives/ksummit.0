Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 430C04C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 12:25:49 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C17351FB50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 12:25:48 +0000 (UTC)
Date: Wed, 14 May 2014 13:25:20 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20140514122520.GB12304@sirena.org.uk>
References: <4779952.HbUGmSHJeO@wuerfel>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6h+r8nc3kJSVyGAy"
Content-Disposition: inline
In-Reply-To: <4779952.HbUGmSHJeO@wuerfel>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"dvhart@dvhart.com" <dvhart@dvhart.com>,
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


--6h+r8nc3kJSVyGAy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 14, 2014 at 02:06:10PM +0200, Arnd Bergmann wrote:

> The way I see things moving forward for ACPI is to add a standard way to
> name things (GPIOs, IRQs, DMAs, ...) so we can have a generic 'give me
> a pointer to the X object for this device' for each subsystem we want to
> have it for. Note that this would probably not be a combined interface
> across subsystems though.

And indeed we already have that interface in the kernel for most APIs
newer than GPIOs so in implementation terms this normally boils down to
adding an ACPI backend for looking things up.

--6h+r8nc3kJSVyGAy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTc2CtAAoJELSic+t+oim95PIP/0rVtFxDzRiWgCM8zjyU3CB3
SiitwoTq7kfaPfi5wq5uXXNrKpqkQUVnJbTI3k7zmr9WQuQa0TQum3hbC8KkXvlw
h/9zbVgsfpa3HIKaBE5raXOyS9iVh7otuFwB+u7ovqlzZbdyNZVAjU3OzfvJBGrc
cBoOALMevXAz5fmTz7tPWTEsCOQk5JBLooViOBZmGNVd1/Ow9WjdqdLEofK7HAEq
kqKhiBoa2vByt6S2hoS5QhrRTNCD63p9HDZAPu5MS7D9tVJ+To7WzmH7RE0Hf/61
tY+h85EX/O8WMTAUcVASm11ekWdX/xYqceiSJGMyoqwWo05eukFPfx7ZQMfWG6tX
vZUzSo0cG0Bk0EtUiizJ24vS8PfxP92HKKjO2YixYKaQpF2G2Kk+/yEPzE0dIdPk
Kjb/7MxTESXVwbD6n843yvTmUfENgdONpcQ6xVdPcD0hXjQxsV640pGlBCDV2HNQ
sWhZ6fAJiAoHv8HlqcN53SG6DDEow0nl7mryfwAJ0H3VDj/b1YhB3VbUJOds2iuD
Bf6p/Ip7HuhoKGxpLsd9PGHnWX+2uRj0r/dXqJpqHnuyFR/LcMklJGJZvfB5wFYr
eNrS/Ma22IF6izEXO9DO7CPzg92HIVZfxRXoHtN5q+QBjxNU/IQZC8PN9faaAI3r
Jxr4YL8tOtqq55FaVnHT
=H/Yn
-----END PGP SIGNATURE-----

--6h+r8nc3kJSVyGAy--
