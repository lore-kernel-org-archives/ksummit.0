Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 31B4493E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:03:22 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B4A6F101
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:03:21 +0000 (UTC)
Date: Thu, 16 Jul 2015 16:03:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Message-ID: <20150716150308.GN4039@sirena.org.uk>
References: <20150710143641.GW4341@mwanda> <20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com> <20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com> <20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<20150716135623.GB22460@sudip-PC>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="D9sZ58tf58331Q5M"
Content-Disposition: inline
In-Reply-To: <20150716135623.GB22460@sudip-PC>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
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


--D9sZ58tf58331Q5M
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 16, 2015 at 07:26:23PM +0530, Sudip Mukherjee wrote:

> Then in my opinion, it will be better if every maintainer has a script
> which will reply automatically on receiving a patch that if the patch is
> not applied within xxx days then please send a ping / resend the patch.

That then sets the expectation that you're going to do something with
the patch which is fine if it's relevant but there's lots of moderately
common cases with things like changes that touch multiple subsystems
(eg, for mfds or for adding a device driver and the DT using it
simultaneously) which result in things like resends of patches that
you've already reviewed due to a change earlier in the series and which
could get awfully noisy and/or confusing for submitters as a result.

To be reliable you'd off the top of my head need to start doing things
like parsing the patch to make sure it was for a relevant subsystem and
that it hadn't already got a reviewed/acked/whatever tag, sending a
different message if it wasn't something you'd expect to handle
yourself.  Personally I don't know that I trust my skills in appropriate
scripting languages to write that safely.

--D9sZ58tf58331Q5M
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVp8esAAoJECTWi3JdVIfQoN4H/15rPdWjwKfA46UNz22QvbIP
fo+K4SNwbtUGccP6sCHld3fkosaLWArQ3oEfKC80AJfd881/BOLVN+qegFB1pcSD
/wwzOpZ4udG5OEYERIpMwEsWBln5lBnjxLtQoxQlf3i1kiQ7guOSHWFhIE2PvWFg
vj8RnmlXdzScHhgkpSTNKk39uEjtGBsxfaY38bYaE3CK2b6myn4mLxz9xh/ChweK
GyYkwf+o0j/XW03rOWgIDJInt6t7AOj9p3dWyMSQgCrwN80qgHE0SGP/7rw6gUVK
BGhspGle3QgNg2XVXANh3Fqqifv03ZGhVadD9HlJuvr2E+fD+jUDLzM18/j/Skw=
=O9Hw
-----END PGP SIGNATURE-----

--D9sZ58tf58331Q5M--
