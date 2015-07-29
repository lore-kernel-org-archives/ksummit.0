Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BC52949B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 11:57:31 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 14F37FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 11:57:30 +0000 (UTC)
Date: Wed, 29 Jul 2015 12:57:10 +0100
From: Mark Brown <broonie@kernel.org>
To: josh@joshtriplett.org
Message-ID: <20150729115710.GB3866@sirena.org.uk>
References: <20436.1438090619@warthog.procyon.org.uk>
	<20150728183610.GB5307@cloud>
	<1438109061.5441.202.camel@HansenPartnership.com>
	<20150728185428.GD5307@cloud>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bKyqfOwhbdpXa4YI"
Content-Disposition: inline
In-Reply-To: <20150728185428.GD5307@cloud>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>, mcgrof@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org, jkkm@jkkm.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--bKyqfOwhbdpXa4YI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 28, 2015 at 11:54:28AM -0700, josh@joshtriplett.org wrote:
> On Tue, Jul 28, 2015 at 11:44:21AM -0700, James Bottomley wrote:

> > So in that case, what's the advantage of separating the firmware from
> > the driver?  If we can't update it without updating the driver, we could
> > just build it in and save a huge amount of hassle.

> Licensing, which is a large part of why we have request_firmware to
> begin with.  Let's not make distribution kernel maintainers' lives more
> difficult than they already are.

Also developer convenience when people are working on the firmware
(which presumably isn't built as part of the kernel build process).

> For the drivers I'm most familiar with, new versions of firmware have
> new filenames and are requested from userspace in most-preferred to
> least-preferred order.  The expectation of those drivers is that any
> given firmware version should be binary-identical.

> Are there drivers for which the expected firmware update cycle is *more*
> rapid than the kernel release cycle?  That would be quite a surprise,
> though not an unpleasant one.

Some of the audio ones are like this, especially during development -
firmware is used to get system specific callibration data (to account
for the plastics and the taste of the system integator).  Those
firmwares would need system specific lists which would be miserable.

The code firmwares themselves do also get updated rather rapidly at
times.

--bKyqfOwhbdpXa4YI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVuL+VAAoJECTWi3JdVIfQukYH/RFJ7tG7kcu3LxxN8fTNzp0A
OVsaJn6npx+QnFjj8zwJn3Rr9JkwlxNx8mNfg9QNfsutaE+RfidFKyiRpp3JnWpu
VfBfv4Isc5TpJoWIh50L2nNC4U3ts/4Iph7rkJjUWlzv7wZYFtKJZXE0Nx5Iszg9
kO7Uq+7hhA4JgwsJEXDB3kSRcoPN3E6vTRQu7ZQpCevc6/YQn0STyEhPjEZq9YbW
ZNPpixdsT4UKBeslc6ETI3fVHgPeLGsH0jvkE+/0drYGtSYOoFaea1D40zO7eX8x
SIUpc1JLRxzznq303Q8QEgXuOdkhEAClPsZylts/Dk9MUvAUZlfYKIdkUfVfDXs=
=WTKk
-----END PGP SIGNATURE-----

--bKyqfOwhbdpXa4YI--
