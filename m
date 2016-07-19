Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7D9A6360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 17:31:28 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 50BCD162
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 17:31:27 +0000 (UTC)
Date: Tue, 19 Jul 2016 18:31:20 +0100
From: Mark Brown <broonie@kernel.org>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <20160719173120.GE30372@sirena.org.uk>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Ca0e2zgpnh8/XhnM"
Content-Disposition: inline
In-Reply-To: <87inw1skws.fsf@x220.int.ebiederm.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Ca0e2zgpnh8/XhnM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 19, 2016 at 10:32:51AM -0500, Eric W. Biederman wrote:

> Would a gcc plugin that checks the most interesting things that sparse
> checks on every build be interesting? (endianness of integer types for example)

There's a push from certain quarters to move away from GCC to LLVM.  Not
that these things are unachievable in LLVM but it's a thing.

--Ca0e2zgpnh8/XhnM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXjmPnAAoJECTWi3JdVIfQT68H/3n63Q4AE87M7DhE7ZUgZrJJ
6bHGIF+GLrWBHs1XPJ99gH1vK08bZ84V8s3eNUV+JDt4l9nh2Mp5g34/+MRk+SQa
k+o2umcZFITGFUtiULBDUn/fBJtdHQn9lwhIBRI6ePUha/MQd6MS+Y7N6P79d2Dz
msCz9eqxFA4UWXd7raAA+SELqs6WXTTgF9kmgL/cbyc1nkYCcKRWAl3/WOhVA2J2
7RqCLJrJRap5YRkSMePGTO498n9aROu7XPRwBrkfS3O8xKLH21yhSSzyxXPgH8PK
3gI903gJ4Vv0KxB3ULf2L3vABcoZvTQAXC5bYTHDpdpNBRvWWQIhqMpz33dJWxE=
=isJw
-----END PGP SIGNATURE-----

--Ca0e2zgpnh8/XhnM--
