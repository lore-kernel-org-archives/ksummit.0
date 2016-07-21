Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 40F3B910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 19:10:41 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CDF092A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 19:10:40 +0000 (UTC)
Date: Thu, 21 Jul 2016 20:10:28 +0100
From: Mark Brown <broonie@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>
Message-ID: <20160721191028.GS6509@sirena.org.uk>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="90KBcPA0h13nTGdQ"
Content-Disposition: inline
In-Reply-To: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
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


--90KBcPA0h13nTGdQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 20, 2016 at 10:18:11PM +0100, Jonathan Cameron wrote:

> 4) Should we drop all the bindings for bridging between such subsystems
> and do it all from userspace?

This clearly doesn't seem sensible, we have plenty of hardware that's
obviously wired up in a fixed function format even if it could be
general purpose and several duplicated ABIs (eg, hwmon and power_supply
have clear overlap).

> I think we may end up with a hybrid of the two, but need to be able to
> make it work in 'standard' cases without userspace being involved. That
> hybrid solution may well be devicetree overlay based... Unclear so far.
> + plenty of crazy things that 'might' make sense where there isn't even
> the pretence of representing real hardware.

I'm definitely seeing people choosing their kernel subsystem on the
basis of libiio.

--90KBcPA0h13nTGdQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXkR4jAAoJECTWi3JdVIfQiXoH/0bvlB6Q9GBdb5H9n/KsBsmZ
jfueRKwKG8rc6kPWftRoFWYEUjgWzNxqRNkxWbHKQz9JNzjKvwqfNlm3hMGOGPBl
mHMfNW54KJllGjr8jjHzOAkbZheCv7q+BcczGqHgj+p2FHugAU8xY+YNIjjVZYBR
B1SgYDFJj5J72okx82mPrzXiPQl27skfVC9CiCxlzRz0gBpuoZm0rNw0+ZCC/9Ax
2EVxLbP9oSAxwoBj7PmcliowN2xxkocKa+GI/uc16bOqLEA8cOD6Wa8V4LzB2NiY
lLMMi+LpTXTVLggxY4aUbZ/4yRSqCfuPoIpzpuOPlaOltJhPDoAsop59wDOzVuw=
=rHWJ
-----END PGP SIGNATURE-----

--90KBcPA0h13nTGdQ--
