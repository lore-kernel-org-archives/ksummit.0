Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D83BA93E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:48:42 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6BFA314B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:48:42 +0000 (UTC)
Date: Mon, 13 Jul 2015 11:48:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20150713104829.GA11162@sirena.org.uk>
References: <559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud> <20150709203830.GF7021@wotan.suse.de>
	<20150709210059.GA3720@cloud>
	<1436518482.2393.19.camel@HansenPartnership.com>
	<20150712020235.GB24356@wfg-t540p.sh.intel.com>
	<20150712051958.GA15346@x>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wuUGvGHayROCMC3J"
Content-Disposition: inline
In-Reply-To: <20150712051958.GA15346@x>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
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


--wuUGvGHayROCMC3J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 11, 2015 at 10:19:58PM -0700, Josh Triplett wrote:

> Patch submitters should be making it clear to what tree their patch
> applies, preferably using an unambiguous tag in the mail subject.  In
> the absence of such a tag, try it against torvalds/linux.git and
> linux-next.git, and then give up and tell the submitter to specify what
> their patch applies to.

This does get complicated rapidly when people have trees with multiple
branches, or when people start basing work on other pending serieses.
It's easy to indicate, but doing so in a way that a machine can cope
with gets harder.

--wuUGvGHayROCMC3J
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVo5d9AAoJECTWi3JdVIfQ9w0H/26Pq7xuAv5iGbasfAjr9xJc
uFQChHnbYQqihS0M49wKyJ6U7/1aB/HEd0sscR5vBMrCqGTVBWwhsTM/Gp0hsxAX
OY3sB0ikb7bcXb4T5H9O5w8qYVJw9yX0xdyr/WREAdgGW6WNIqzRghJlhWl0sC/g
T05wdeWGy991MnNb2n8G8/eNkTKigmQmXlntU43iYSTAw+xgFvNOF/FodnMGeYNA
ADAdxwtSVRLIvc7q/3zj86eE1keDuodmbn8AYo40BRePl8Vp0nH0cUT6lJfJZCt5
sSxqs45NGj2qxtm22FTIKmYMufx3Y9PBVjlTuAOPMNUm/1cY+ldb3fUjMZqmYs4=
=kp7e
-----END PGP SIGNATURE-----

--wuUGvGHayROCMC3J--
