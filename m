Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 66E2283D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:18:54 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF3E1151
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:18:53 +0000 (UTC)
Date: Thu, 16 Jul 2015 16:18:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150716151840.GR4039@sirena.org.uk>
References: <20150710160714.GL111846@vmdeb7> <20150710222351.GA28632@kroah.com>
	<20150711000034.GU111846@vmdeb7> <20150711001348.GA30675@kroah.com>
	<20150711055441.GA6316@sudip-PC>
	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
	<20150716094720.2bf9f5ac@gandalf.local.home>
	<20150716144155.GM4039@sirena.org.uk>
	<20150716105751.6efc15b6@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jTlsQtO0VwrbBARu"
Content-Disposition: inline
In-Reply-To: <20150716105751.6efc15b6@gandalf.local.home>
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


--jTlsQtO0VwrbBARu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 16, 2015 at 10:57:51AM -0400, Steven Rostedt wrote:
> Mark Brown <broonie@kernel.org> wrote:

> > I basically agree with that, what I'm saying on the response time is
> > that I don't think you're setting realistic baselines for people.  A
> > week is just not what's actually happening in large parts of the kernel.
> > There are some people I'd expect to respond within a week in the normal
> > course of affairs but there are more where I wouldn't worry about it and
> > even the more responsive people are often slower on larger changes like
> > new driver submissions.

> And a lot of what maintainers prefer has to deal with the types of
> changes they handle. I don't handle new devices. I usually handle new
> features for tracing or bug fixes. Sometimes its updates for different
> archs.

Sure, though there's also a large amount of people's work patterns as
well - a lot of maintainers seem to batch up their work, sit down and
blast through a lot of changes at once.

> I especially prefer the ping if its for a patch series, as sending out
> a new patch series that didn't change anything will definitely waste my
> time, as I usually compare the old with the new to see what changed.

Oh, I tend to do the same thing but I basically just discard anything I
didn't review yet and compare against the baseline - if it's a resend
then I'm not discarding anything, if it's been improved then I get to
skip reviewing the intermediate version.

--jTlsQtO0VwrbBARu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVp8tPAAoJECTWi3JdVIfQmP8H/A/H2dM+ReN2JtEZeH3M8irM
/phAqwnn7+ueQWVPI4PQtfKIY8ybXM7j7sjkGy1+sxrE5+ZPb2zLlA64U8gVL3dd
DqLoopknOlqAr1UMTIYup+Xs/z3tMgIP9aW4AiUtUGpyLvIrtCG53UjbnO7Yszr0
qJnAeW7sGwhwaLb2ZYroQD8TG/OD+TSy2Nfvs2IujLeDhq2zHbH85uU2FAVZd9jC
WFJrNaJUjdejL4GQ+naWpyqvChpITT7HPaDqGg+TOw+w8D7ag7PRsCbLlBQ7bF6r
Wh1RIAJZpXE1XbQMgMfqD431bB7yAfITu7kbawcT+AYuJ+HPSYPILXCxRoQ9gqM=
=ieR9
-----END PGP SIGNATURE-----

--jTlsQtO0VwrbBARu--
