Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E3538253
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 02:06:01 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5076869F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 02:06:01 +0000 (UTC)
Date: Thu, 3 May 2018 11:05:50 +0900
From: Mark Brown <broonie@kernel.org>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180503020550.GP2714@sirena.org.uk>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TRkqPRiqIDKgfg/F"
Content-Disposition: inline
In-Reply-To: <20180502194632.GB18390@sasha-vm>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--TRkqPRiqIDKgfg/F
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 02, 2018 at 07:46:34PM +0000, Sasha Levin wrote:

> As you said, the regression should be fixed "asap", not "immediately".
> It should go through some sort of review and testing the maintainers are
> happy with, but unfourtenately it doesn't happen now.

Doesn't happen some of the time.  It's not like this is a universal
problem.

Especially for driver specific things there's at times no realistic
prospect of getting useful independent review of fixes, the hardware
isn't always widely available and if the fix isn't a pure software thing
at some point you just have to trust the judgement of the vendor.

--TRkqPRiqIDKgfg/F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlrqbn0ACgkQJNaLcl1U
h9BAxgf/fXCIeM1jHh0QgTgSxBbF5rkYEeu+6LEre/3U8xRBNVLosMJNlLOMDK4S
18VLGZD1rC18DB6dx76eLejcJ65J+W2D5sa9E1UvCMArM7nWVOqukdyDUxEL94N2
ZFTnBNDTbOApi+AMQt8szMa8xCHjQCyhlHRpL5r9D5UABKfro8yAGN9khqk457Qu
nRLiEunpYw4EZTUeEOt0j+FOoAR3/L/JApWkriC011GPm7vjmDXMH7jQ69MODhLb
NTusEgzD7Nkzei44CPdciZ4HAAHm1E+I06icqlrUc4CEPUGlyWK1OZ3hrt/bdv1W
e/igKTf7raoKuXrYyjmUFWDqPUilrw==
=NE5d
-----END PGP SIGNATURE-----

--TRkqPRiqIDKgfg/F--
