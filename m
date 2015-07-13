Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 13B39AF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 18:51:29 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A5D5120A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 18:51:27 +0000 (UTC)
Date: Mon, 13 Jul 2015 19:51:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150713185118.GK11162@sirena.org.uk>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QFQuXaHm0gDucWbk"
Content-Disposition: inline
In-Reply-To: <20150713142132.08fead4d@gandalf.local.home>
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--QFQuXaHm0gDucWbk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 13, 2015 at 02:21:32PM -0400, Steven Rostedt wrote:

> I disagree. I thought next was a place to have integration of new
> development, and not just a place to test. Really, how many people test
> next compared to Linus's tree? I trip over bugs all the times in
> Linus's tree that's been in -next for almost a whole release cycle.

> The only bugs that I find that come from -next is integration issues,
> where an interface changes and another subsystem stumbles over it.
> That's exactly what it was for and what it's good at.

In the embedded space it's much more common to track -next as people are
often working with multiple subsystems so the integration is important.
Most of my code is developed against -next then moved to topic branches
for submission.

We also catch quite a lot of issues in -next as a result of the work on
boot testing that kernelci.org and Olof's bots are doing, hopefully
that'll start to build out to include test suites like kselftest (I know
there's work in progress there but no ETA as of yet).  Things get
exposed to a lot more systems and configurations than individual
maintainers have access to which can shake out issues in code that deals
with hardware.

> > I think that this is a small mind-shift from thinking about Linus's tree as
> > an integration tree to considering it as mostly bug-free code, and stop
> > merging in risky patches. We already have -next for that.

> No, we have -next as a way incorporate new code and see how things
> interact with other subsystems.

I think you're mostly agreeing with each other here (or at least talking
about the definition of "mostly") - it's not an either/or thing.
Exposure in -next does expand the audience and provide a lot of risk
mitigation to what gets sent to Linus' tree as a result of that.  That
catches more than just integration issues between different trees, it
also catches integration issues with a wider range of hardware and
usage.  Not as wide as you see for Linus' tree but wider.

--QFQuXaHm0gDucWbk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVpAilAAoJECTWi3JdVIfQQ3MH/1Foj55WpsZrj9lZVHsSRVDb
VDCVrWYLmCapjmhLnaaZIFOIyt00pQ3blO7OPhSFDdjAgu5p9SKTsiLogVKeYYE3
wi0Eb9ynfiwCV911gbIyQP/em6V1x6zpdndatiCajSM2z5a8leEeV/dqvb4MK2rt
xQ1EXmD/5eO9y+333DyfQEbdeL4faadTMTyrSkYLXrgKZhxqcsxpxce67RN0WvSI
BRgErPGUKlrLbtpKXfabeLbn5RbCmM5/7h6f+/PzQWpHkFRlwIFjw5t3QEw+USDd
7H35a1B7G6BtJhdOCDWa7DthLaZq7CH7JlQq7Nit0r/9JVtL2PSKj24FjxlS2AA=
=Mj9r
-----END PGP SIGNATURE-----

--QFQuXaHm0gDucWbk--
