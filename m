Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8D18B2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 18:52:56 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 025B62B8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 18:52:55 +0000 (UTC)
Date: Wed, 20 Jul 2016 19:52:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexey Dobriyan <adobriyan@gmail.com>
Message-ID: <20160720185246.GK6509@sirena.org.uk>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160719173120.GE30372@sirena.org.uk>
	<alpine.LNX.2.00.1607192049170.24757@cbobk.fhfr.pm>
	<20160720155319.GG6509@sirena.org.uk>
	<alpine.LNX.2.00.1607201859270.24757@cbobk.fhfr.pm>
	<20160720183530.GA2958@p183.telecom.by>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZG+WKzXzVby2T9Ro"
Content-Disposition: inline
In-Reply-To: <20160720183530.GA2958@p183.telecom.by>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] Support (or move
 towards to) LLVM
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--ZG+WKzXzVby2T9Ro
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 20, 2016 at 09:35:30PM +0300, Alexey Dobriyan wrote:
> On Wed, Jul 20, 2016 at 07:04:59PM +0200, Jiri Kosina wrote:

> > People who should be invited: proponents of the push from the certain=
=20
> > quarters mentioned by Mark above, and ideally some LLVM folks as well.

> This is a bit premature until Linux Clang patchset is empty.
> As an example, alternatives do not work and IIRC VLAs won't work ever:
> https://llvm.org/bugs/show_bug.cgi?id=3D24487

The main interest I'm aware of is from people working on ARM (and it
looks like there's some MIPS as well from the LLVMLinux git) so x86
specific issues might not be such a big deal.  There's definitely some
upstreaming still to do but the delta is getting smaller.

--ZG+WKzXzVby2T9Ro
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXj8h9AAoJECTWi3JdVIfQ8t4H/Ry2m16ob8cEa3yw7inn67QG
BsEiSL5EsDXanlHl2ICwqj8hnfYuTM/HRNJbLwHfn0qqbbWt+FyukJTnbm8wlHsf
lVNqmt/Zwu/Wo/2zkGhvjXh0mHCTl211ccX2W6UCHqf+wb3wYyqToS0NNP2/gGNE
fsbMDHnOVyqRAyAAqPu6M49Dze3kFiw8qZv8hMjeTXRjvzFHRxzXBrJ4tdpCFRqO
Gz45pHB4LRE4MUTczv4U9QQ9LSdedTVdbE+gf1nIHxZBWXNglnIo6VTeGQeUJ27/
06Fui3mgAgDbSThNS/Y0u0vsBrWE/R0ObU6zyula/iNd/CTq4tvUsl5ywPOgwPg=
=t/rc
-----END PGP SIGNATURE-----

--ZG+WKzXzVby2T9Ro--
