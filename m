Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7E2CFB68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 09:52:21 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1D098A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 09:52:21 +0000 (UTC)
Date: Wed, 8 Jul 2015 10:52:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20150708095207.GN11162@sirena.org.uk>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<CAMuHMdX6KcmZhibEC6hn2VN7veMSbbj1+P3kf=udY39fjdjj5w@mail.gmail.com>
	<20150708075409.GJ4341@mwanda>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UJhykcm+BCcdfd3/"
Content-Disposition: inline
In-Reply-To: <20150708075409.GJ4341@mwanda>
Cc: Shuah Khan <shuah.kh@samsung.com>, Tyler Baker <tyler.baker@linaro.org>,
	Kevin Hilman <khilman@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--UJhykcm+BCcdfd3/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 08, 2015 at 10:54:09AM +0300, Dan Carpenter wrote:

> Doesn't the 0day system obsolete the "Build regression" emails?  It
> should be sending emails to everyone introducing new build warnings.

0day only covers some configurations and doesn't always manage to kick
in (I know I've had stuff come in via other channels sometimes, it seems
to depend on loading).

> Are people ignoring them?

They're not reliably followed through on, no, and one of the things with
0day is that it just generates a one time report so if things don't get
followed up on then that's that.  A regular "these are all the issues"
mail helps chase down those issues.

--UJhykcm+BCcdfd3/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVnPLGAAoJECTWi3JdVIfQXhMH/141NN4ZYYzcmAn7VtV0FZkb
OsaKh+uhmEoF45jjAG0C3uujZs5foDTvTDW/K1J1YYAbDVcDuCqTh9xVQmQ8VaZF
XEwEhmEhm0tACrjQVLsCWvhxQQJgI2Bk9GWS6AZ2ELbYtyJjBTGzqis15p5NKj4l
c/r/VjQIPCLpnVVQRngXVDySFzzmQB8hABb68ceJWdUG8Z7EJ9uDAx2jlOVW4vT9
HFokns1gT3ECyC7S3KgjpuM4uWEWCWD2E1XYKDhoiG9dFtZgAu0FACihheaLgni0
MkCsdq3P+ppfAG+TmMrNU4D/t6gJzB69SllhSogLtpzaxkGQruvR/xi9gPr52Tg=
=2FBQ
-----END PGP SIGNATURE-----

--UJhykcm+BCcdfd3/--
