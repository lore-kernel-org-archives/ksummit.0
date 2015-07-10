Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 62A79BC8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 18:24:45 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 05E8111A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 18:24:44 +0000 (UTC)
Date: Fri, 10 Jul 2015 19:24:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20150710182429.GX11162@sirena.org.uk>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710124416.GR23515@io.lakedaemon.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1wckj8K+SD/hhJpt"
Content-Disposition: inline
In-Reply-To: <20150710124416.GR23515@io.lakedaemon.net>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--1wckj8K+SD/hhJpt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 10, 2015 at 12:44:16PM +0000, Jason Cooper wrote:

> --kernel would go through each patch and auto-fills Cc based on MAINTAINERS.
> Amongst a few other things.  Shallow threading, check/edit cover letter
> and so forth.

People blindly CCing everyone get_maintainers finds can be a bit of a
problem, either they use --git and the false positive rate is quite high
or they don't and they miss out relevant people because MAINTAINERS
isn't 100% filled in or the reasons for CCing aren't entirely file
based.

The false positives are a bit of an issue since it discourages people
doing smaller cleanups over wide areas, you can end up getting CCed on
lots of things you touched which can be a bit offputting.

--1wckj8K+SD/hhJpt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVoA3cAAoJECTWi3JdVIfQPY8H/1Rkp9xE/WdLhcGGioReEka1
cqFRQ/Z/a9W2TMy12TvoV7G8W/8UM8AkAJ74bHC/hz0FaR6Pfx2rls3Atun+4EGg
cCtsZpePCP+iRhJDga6eaSTCkMW1PlvHV+rrGzURb1GNeeoYWtTV4gOVVtU3Fn6C
hszsq3tiU8riZdiAHx7MtLPUP3EyYam5+FUNfvMw7pdYzeKP1ppc5L3avs81vLXM
rnvVT/X5O1tMSCnRQViahxLFR6MPEdD7S7ccVgO9eKfSz7YKrFXUon05YRB6OzCw
m0xnpQ4h7h7aRgXa0NVHtoAnkebmRhkDp4VfxiStkx3ZahmPXp8sGrpuwPeeH7E=
=VuUl
-----END PGP SIGNATURE-----

--1wckj8K+SD/hhJpt--
