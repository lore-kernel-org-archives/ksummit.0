Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CC40B4A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 21:16:03 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 22C19682
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 21:16:03 +0000 (UTC)
Date: Wed, 2 May 2018 06:15:51 +0900
From: Mark Brown <broonie@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	Sasha Levin <Alexander.Levin@microsoft.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
	"julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <20180501211551.GI2714@sirena.org.uk>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PWfwoUCx3AFJRUBq"
Content-Disposition: inline
In-Reply-To: <20180501205448.GE10479@thunk.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--PWfwoUCx3AFJRUBq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 01, 2018 at 04:54:48PM -0400, Theodore Y. Ts'o wrote:

> I do think it's about AUTOSEL, because when I'm dealing with a
> regression, I want to get it fixed fast.  Because the alternative is
> the merge-window commit getting reverted.  AUTOSEL seems wants perfect
> patches that it can cherry pick once, as opposed to a case where if the
> user confirms that it fixes the regression, I want to send it to Linus
> quickly.  I do *not* want it to marinate in linux-next for 1-2 weeks.
> I would much rather that *stable* hold off on picking up the patch for
> 1-2 weeks, but get it fixed in Linux HEAD sooner.  If that means that
> the regression fix needs a further clean up, so be it.

We've had issues with the automated testing systems in the past where a
maintainer has had a policy of letting things percoltate for a week
before sending to Linus and there's been a bug that caused a substantial
set of tests to fail to run (generally it's something that had unnoticed
dependencies in -next so wasn't caught there) - we essentially end up
not getting the affected bits of test coverage for that period of time
which is not helpful.

--PWfwoUCx3AFJRUBq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlro2QcACgkQJNaLcl1U
h9DxnAf9HzUDmU+qq+4qRe4pUJ2JUqrxmOUrzh5xVDe59HtPwt3WOUjp5urbjJMB
GZirE6izFgY4kwP2uACJCOvNriAKh/WGpHpjOJXPMd9HMV8OD7KltB1z4K8PVcfM
SjMxJTgZRPDX5e7VsGkBkjcOI4bbLZuPa5zvD3QJnAmdXScyPEQz7qX/QZ1lFOVe
zFduJeyBXPf/UfUSNwUeWI6FV8sYSmvdbaayYFlJBSFaZLnYrN8MicGMHhn4mH7j
he7rLtGHqMwtLbS5zHIQ6uc/NTXJSLvxvHC/d7rzq1z2FJDe622u5q9nHt5gjTk1
UJXUaBdaUypURyopsJUgH04ZviJKWw==
=E0fI
-----END PGP SIGNATURE-----

--PWfwoUCx3AFJRUBq--
