Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 49B887AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 15:34:15 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D1E84239
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 15:34:14 +0000 (UTC)
Date: Tue, 2 Aug 2016 16:34:00 +0100
From: Mark Brown <broonie@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20160802153400.GD10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<146834264.pgPOSbOmkO@vostro.rjw.lan>
	<1468119600.19833.9.camel@HansenPartnership.com>
	<871t27s1i8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xd7ZVmXU2EjaW0+X"
Content-Disposition: inline
In-Reply-To: <871t27s1i8.fsf@intel.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--xd7ZVmXU2EjaW0+X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 02, 2016 at 05:12:47PM +0300, Jani Nikula wrote:

> Generally adding cc: stable is like, this is clearly a fix to a bug that
> is present in stable kernels, and the bug should be fixed, but I have no
> idea nor resources to review or test if this is the right fix across all
> stable kernels. You end up relying on your gut feeling too much to be
> comfortable. You have to make the call too early in the process.

I think the problems here are more in the process of how things go from
being tagged stable to appearing in a stable release - the QA or lack
thereof and so on.  While I do share some of your misgivings here I do
also really like the fact that it's really easy for people to push
things out for the attention of those working on backports.  It's
essentially the same as the question I often find myself asking people
who don't upstream - "why would this fix not benefit other users?".

--xd7ZVmXU2EjaW0+X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXoL1nAAoJECTWi3JdVIfQUOAH/1ZbMrkHr2LEtiHaPpYx5nHD
d8+1iJHmkud+hYPZGT4bQgAGLGVvqQYnkhogw7e1lA9jYBZLVltzNvvWKq6nXlpt
ZneSL5LwKlanDYmHsFGzua5HddCuypGL0oPJEqgwluE/Q0CTAyeTDdPZvgFfGdVk
1n+cFRirvRBXVMcbff8t1oW3S0kvGSXKimpKqkTMPUAlVnji4b7yBadqh2FP1uG3
FKWBlqXEAPMkWIb8M4jlPKifiO7D6XZQufsKr3FxaQAV/lFDzHjSQVkecPFqK3kh
uhxF9yyA12VJV9cZEFFfEb74q+PyMw3LI4SX1Tz38i+uOCtIkco36fZFGMF3PX8=
=8nzK
-----END PGP SIGNATURE-----

--xd7ZVmXU2EjaW0+X--
