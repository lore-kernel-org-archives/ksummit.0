Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 79AB79B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 18:21:38 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1E89E2026B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 18:21:38 +0000 (UTC)
Date: Mon, 26 May 2014 19:21:20 +0100
From: Mark Brown <broonie@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20140526182120.GJ12304@sirena.org.uk>
References: <537F3551.2070104@hitachi.com>
	<1400853902.31124.5.camel@fedora64.linuxtx.org>
	<20140524003036.GB26422@thunk.org>
	<CAKMK7uGvF6x55ERBj-PSZuhJELp1xbtqBNVutjWk0CzhLYDkjA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="j59QAZTu3VOMopTm"
Content-Disposition: inline
In-Reply-To: <CAKMK7uGvF6x55ERBj-PSZuhJELp1xbtqBNVutjWk0CzhLYDkjA@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--j59QAZTu3VOMopTm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 26, 2014 at 07:08:45PM +0200, Daniel Vetter wrote:

> Otoh if distros/stable trees and other consumers of upstream want to
> run this I think it would make sense to have something unified. I've
> tried to haggle the drm/i915 testsuite to various people, but thus far
> very little success. So I'm not sure whether it's just a lack of
> awareness about the tests or whether it is a more fundamental lack of
> interest (usually called "we don't have time").

Having some sort of reasonably standard packaging for the various
testsuites might help if it is a lack of time/interest, it'd reduce
the incremental effort to pick them up and put them into whatever
infrastructure is being used.

--j59QAZTu3VOMopTm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTg4YdAAoJELSic+t+oim987AP/1UbNT3TXDM1QxIDvjsVbhx5
cpGE8fQE1HJLd55Es2JzS9pgl5xQUHFuEtO/BtiP6XlgrhOqut+2edon5Bfi924p
3bZLyP6hX39lH0J4Xvj3IZrVNO0MjRz6ZxUoJDwUxc8I7yVDCh3J2RTWUrGyDcIa
1N9Ht8ShrtDZCMncdVHtSzyCIyAcauu2tcBerAE1Fcc+9Y4lKVaEE0IC30mdTcIp
VHKrhH6FX152H69u2YYcxuoiruJQYtToKBN3u/XQYD3+nI9cNRMXrvbnAd7FFKgG
gFZsTck+v5g3HlTlygDsPF2E12msAJpty+01I1dFQBReYbd0HKidBggAlhmb2UKx
ZNkRQ/C5MUKsTT48xmzNizSXlVg6RFN/GnvZcd40MswgwJ35Nr/LVq42XuIqHxN2
N6kBsIgeniyOTWw6yDhebSBZgNFgHmhy3llJcJnZ3TKhBAijAcAs3nmleurxKMXd
xi6mdPc2mFLrPH2uNRHFQ9HWzplc1ppfzK1pvv83rPuHS0VRikUg/JUoW5RVada2
VaGW8moLkSW05cEluoBqkTE71tJ6cLDC+3F4syT+wOve/TO5lK3bWxjOYz5uOJx2
nEeSAfEl0SKgyaclckUkb/n21GVNZeLMuSIdrwSElpJkqa9+eMK+vpEeGdPDvtZZ
PvPZ0oCJTN5huoWomaql
=TyX9
-----END PGP SIGNATURE-----

--j59QAZTu3VOMopTm--
