Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 327668B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 17:37:44 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C1834FD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 17:37:43 +0000 (UTC)
Date: Wed, 8 Jul 2015 18:37:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20150708173730.GT11162@sirena.org.uk>
References: <20150707092434.GE11162@sirena.org.uk>
	<CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
	<20150707131411.GI2887@sirena.org.uk>
	<20150707144725.6a19727f@gandalf.local.home>
	<CAGXu5jJN7z0Fa78SmyCe0mWE6mRY5f+giL-8CY_Li3tYwYeZrg@mail.gmail.com>
	<CALCETrUMeOdJstG1djALBidD60xOXNExh5vFZGbUSEJwyzutpw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9/lmB/GmAksD4Nrg"
Content-Disposition: inline
In-Reply-To: <CALCETrUMeOdJstG1djALBidD60xOXNExh5vFZGbUSEJwyzutpw@mail.gmail.com>
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--9/lmB/GmAksD4Nrg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 07, 2015 at 03:02:11PM -0700, Andy Lutomirski wrote:

> There was a fair amount of discussion about machine-readable output at
> the last KS.  I don't know whether it ever got implemented.

Yes, but that's very much at the most basic stage of reporting pass and
fail - there's probably room for looking at if we're ready to extend
that.

--9/lmB/GmAksD4Nrg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVnV/ZAAoJECTWi3JdVIfQFF8H/3+YxjYxY4mzT+Y5JHntmVZP
6Pdsu9A33qHRxgYGMa9rvMtPPuh3F1i1eSA/1JQIe9n3ztMBWdrgES76WpvfqqS4
7yg6NNDePXb/Omdkzfv8HDD9P2znB1QfzesB4NNN9VBaWmPFrCSqwNJE/dQFx+YV
f/SoYmB4/3LWDQyGHsGzUviSnZcD1hVdl/Yed492l6JuGb+yjRi1qXHNFWdZSFQw
Mnd+RE6SauJUykwJ4jLsR47vreeR9yOf3KEkqTnEUt+Qpn8S1hzucR3Je7fAB5gu
dh1R3pS3zCni00XKQu0+6MzuEWlI2GlWwr4AzXeQdUIO2mkXYGoHHXCp4vYCQLk=
=gI6l
-----END PGP SIGNATURE-----

--9/lmB/GmAksD4Nrg--
