Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 93B24304
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:41:24 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1985D1FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:41:24 +0000 (UTC)
Date: Fri, 2 May 2014 12:03:01 -0700
From: Mark Brown <broonie@kernel.org>
To: Dave Jones <davej@redhat.com>
Message-ID: <20140502190301.GW3245@sirena.org.uk>
References: <20140502173309.GB725@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="KYuXQc0pXaBE/YCJ"
Content-Disposition: inline
In-Reply-To: <20140502173309.GB725@redhat.com>
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--KYuXQc0pXaBE/YCJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 02, 2014 at 01:33:09PM -0400, Dave Jones wrote:

> Something else that might be worth thinking about would be a runtime
> method to disable syscalls.  That might actually be more useful in the
> general case, but less so for the "I want a smaller build" crowd.

It would be useful for the smaller build case to have a way of auditing
which syscalls are actually in use on a system so you can then go
through and construct a minimal config.

--KYuXQc0pXaBE/YCJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTY+vcAAoJELSic+t+oim9GloP/1HvCPWY2LiH6HPRo1iDmZkp
lWICgq0BUSUGllovOGrLgOSC0lKPXEWBDW0Cd/t652kFsCh7vUK1IOBBUPnYRaLh
9QPdV8tItDlkIk4QHiqzUYHqVyCMhHeryPCgXLvjrByW5eDCPPQ/yhEIaGyRd4MH
+bcVOS8jnbKcqeoY4/U04fJLZCbkwI9eHMGNie/WSEEPVEA0Q+UW6sKR5J3DK+tf
ZoKafV3ZZ3AOh7nz/Ne/salO+x2/4y7/ASvNTDXGwDxzupNKbJ1gF+8+fYTTBfly
lu27wGzXFnlUK2IU6SJDm8a+b2vbYvbP3GF6tTRDxIc7JcJogQcu1R11YHl5F+R1
qq6J3A3QPRkPp0vW0Ny7tdUi3xsAlUlhhXFgnPKHpW2JZH+lfWPJxt5SvmezCPzd
z2a4i0KzEcimqse2RhFqZomgHadycO827uX8L2uEd2hYEMzYp18YhhuvRjY2JrWd
4LCv4EpeWK0q2+6qu4mPxLtb2FKoJovpb+5A8s/ulJ92XAVbTolI2aHSghjwJvGA
TP7XjAKsScv2JFScLY8wAeKRby/3F+KAfIRPk9JXTvts/3wWDpc+yf9jJ2PHPK+n
Wc1GdlO1vtVDk4iQZWnICMmIkhHsI8wI/UCeIvCNZ5e67q2KFbHC08HPUPSUsAns
1C96ef9tKZ0lWxmIhtGa
=QqVZ
-----END PGP SIGNATURE-----

--KYuXQc0pXaBE/YCJ--
