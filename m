Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B6DB2256
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:21:42 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 50872178
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 10:21:42 +0000 (UTC)
Date: Fri, 22 Jul 2016 11:21:28 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160722102128.GX6509@sirena.org.uk>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<5791931E.5030402@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YnIutncTLXsDZs5t"
Content-Disposition: inline
In-Reply-To: <5791931E.5030402@roeck-us.net>
Cc: ksummit-discuss@lists.linuxfoundation.org, Rob Herring <robh+dt@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Sensors and similar - subsystem
 interactions, divisions, bindings etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--YnIutncTLXsDZs5t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 21, 2016 at 08:29:34PM -0700, Guenter Roeck wrote:

> if requested. Would it make sense to register regulators as hardware
> monitoring devices ? I don't really know, and never thought about it
> until now. Maybe Mark Brown and/or Liam Girdwood have some thoughts
> on this.

It has been discussed before but it never seemed sensible to me.  hwmon
is a read only interface monitoring the actual state of the system while
regulators are write only and if things are going wrong may not reflect
the actual state of the system.  Exporting write only information via
hwmon seems to break expectations for users of it, but perhaps that's
not what people are expecting from hwmon these days.

--YnIutncTLXsDZs5t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXkfOmAAoJECTWi3JdVIfQrakH/jpV1kixApRdVAxnOCrTBram
8lktlk7x58Xf1EXV+KINPtZtakeluXGI5us2flj0gEIO/HqCuB8zzxwL5x281Usc
UnRLBBKF9mnMizXsZPKtYS2IHUZz5oWLFZxy7imXWUwPenJx5V1+5iVCRIY4v1LC
xNUN7xd3B7dioDtJa3xdbtaTUvTUnPJYfttsS4RgmocFV5ef8IUZpEjSzDSw1HXe
ocn1eunY7Zy/J3Aeg8uo3H1kowzhwnISXm0brTwLCvc8KHmVEL23je7QcHFz7nzI
k+FVPLKaY19uK5XLCmmEosKLg5CdiWn9mydeH1E9YgLiJayCgXEyvRlPRyUxlo4=
=Q++w
-----END PGP SIGNATURE-----

--YnIutncTLXsDZs5t--
