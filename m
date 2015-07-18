Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C4D19360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 18 Jul 2015 21:29:45 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5D53014B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 18 Jul 2015 21:29:45 +0000 (UTC)
Date: Sat, 18 Jul 2015 22:29:32 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150718212932.GA11162@sirena.org.uk>
References: <20150710143641.GW4341@mwanda> <20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com> <20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com> <20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150718105055.GE5422@mwanda>
	<20150718081914.7d904bfa@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aiR0qAUbq5guI9UR"
Content-Disposition: inline
In-Reply-To: <20150718081914.7d904bfa@gandalf.local.home>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>,
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


--aiR0qAUbq5guI9UR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 18, 2015 at 08:19:14AM -0400, Steven Rostedt wrote:

> One ping a week is just a reminder. It doesn't fill your mailbox
> quickly. It doesn't mean you need to do it in that week. Also, the
> quicker it goes in before the merge window, the more testing it will
> receive.

It adds up pretty quickly.  No argument that merging things quickly is
good but having to read more content free e-mails is not going to help
with that.  Indeed if I'm expecting someone else to review a patch for
some reason (eg, driver maintainers) a week is about the normal time I'd
give for them to ack it if I'm confident in the patch myself so it's
sometimes a deliberately introduced delay.

Like I say my experience as a patch submitter is that I'd be sending
pings more often than not at a week whereas it's reasonably infrequent
that I need to resend anything.

> Really, a ping once a week will bother you? The once a week was what I
> and a few others started to enforce when we were getting pings once a
> day.

Yes, it does.  It's far too close to the window of normal delays that
happen (finding time to read larger or more complicated patches and
serieses, travel, whatever) and my guess is that my response if everyone
was nagging at that rate would be to treat the nags as noise and ignore
them which defeats the purpose.  These things only work if they're
unusual.

Two weeks feels like a better lower bound to me for the point between
people being "normally" busy and there being some kind of problem.

--aiR0qAUbq5guI9UR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVqsU7AAoJECTWi3JdVIfQN+YH/jCaR9PJyKgZ7qOrZSuhw9sg
4j24Ek9l6PkFEhqWumo34ZRfXjjW1DEEdNh9PS/98ZB3fcDvH4ZTld3zEkzxettv
CpT9xgy9tyhqTt21Iau+ov5QxBc0PJoilc7JIFja+M//NzW2fElP39dbb7GXZhVB
peEnmR2pGo97btFNI1MbDsDMCQUdMrPjrbUwVOH9VPQQcfyzYHdL7ep5DyMofIBM
NCbmEC1f5T+P1hwITOCtSbqIrxVf1ll+Rm1gokaYEk2k9Ld29/SAmDxG/xoweqj5
BSzI9QmVAh6wD4HGPn9X/gQPeRL7i4j6bMUBxGFX10ylykFK8GIIxF1og5dj69U=
=roVo
-----END PGP SIGNATURE-----

--aiR0qAUbq5guI9UR--
