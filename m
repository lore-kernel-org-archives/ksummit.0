Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 33630596
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 10:19:51 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BDB72D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 10:19:50 +0000 (UTC)
Date: Wed, 28 Jun 2017 11:19:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20170628101937.zfpk2xtf5qw7wlay@sirena.org.uk>
References: <1de3c642-a4b7-1065-5c35-ba32866d471d@redhat.com>
	<alpine.LSU.2.20.1706221422360.30709@cbobk.fhfr.pm>
	<20170627175321.GS21846@wotan.suse.de>
	<1498588234.18166.29.camel@HansenPartnership.com>
	<20170627190202.GV21846@wotan.suse.de>
	<20170627194622.GE16189@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vvyklgwms7wwq4bw"
Content-Disposition: inline
In-Reply-To: <20170627194622.GE16189@roeck-us.net>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug reporting feedback
 loop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--vvyklgwms7wwq4bw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 27, 2017 at 12:46:22PM -0700, Guenter Roeck wrote:

> There are almost always some build and/or runtime failures in -next. Right now
> we are lucky (the current qemu boot failures are really build failures).
> For reference, from next-20170627:

Right, the important thing is that we sit on the results and no
individual failure tends to last for terribly long and hopefully by the
time things hit Linus' tree we're in good shape - the failure rate in
mainline from the build and boot tests is very much better.

--vvyklgwms7wwq4bw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllTgrkACgkQJNaLcl1U
h9CT9Qf/emKEYTSiu9Yk6dku1xT5yPiZxyFZ0kluNNTZuYJXEpu4meQwcwvBgcN5
9DU1Xp4oDvJdvOilpCOQNK+5/F2wgb81Bzy+YpxiGzav87tQJxcm6rN/pr9DkPYT
xrRla9UIATFqAor5iEDN8Nf0pgGcYcMROjyFq7nA3DYD4I38I5MBwjvSvjQVo+Hc
6JYbLIREB0emmri7opdO1mDwzXGmypU8qLrcBuKJlXQRsVfvaJpGEH3BBuhAoHt8
ms8cddAxaN+i2BBPd/GRZZMsL9tPT5Z0FEd0OV4GjjegWrCkMaClnhxX4PHW/w07
k+kNjZo5ypPDUY9OAO0qhTmy/1TLiQ==
=VdNv
-----END PGP SIGNATURE-----

--vvyklgwms7wwq4bw--
