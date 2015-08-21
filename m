Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 308139C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 16:59:14 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B2ECA1B7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 16:59:12 +0000 (UTC)
Date: Fri, 21 Aug 2015 09:58:52 -0700
From: Mark Brown <broonie@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20150821165852.GH12027@sirena.org.uk>
References: <2111196.TG1k3f53YQ@avalon>
	<CAKdAkRQLGRqMT-CJz6FemPqyo78wFrM6Kc=pR_BKxqLZqEzjQA@mail.gmail.com>
	<alpine.DEB.2.10.1508210805500.2566@hadrien>
	<20150821161409.GA26302@localhost>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="csjV5iuXLa65tnQH"
Content-Disposition: inline
In-Reply-To: <20150821161409.GA26302@localhost>
Cc: Tejun Heo <tj@kernel.org>, Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Shuah Khan <shuah.kh@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--csjV5iuXLa65tnQH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 21, 2015 at 09:14:09AM -0700, Dmitry Torokhov wrote:
> On Fri, Aug 21, 2015 at 08:07:09AM -0700, Julia Lawall wrote:

> > What is there too the "etc"?  Would it be better to just remove the devm
> > functions related to interrupts?  They seem to cause a lot of subtle
> > problems.

> And regulators, clocks, gpios... Even if we won't have interrupt coming
> in someone may submit request to the device (userspace for example) and
> we still may try accessing powered off or half-powered-off hardware.

For most of those there's no issue with devm - we're just releasing a
reference that allows us to control the device, not doing anything that
affects the state of the device.  We don't have managed functions for
the state changing operations.  Interrupts are different here in that
when we free we are also performing the operation that stops the
interrupt firing.

--csjV5iuXLa65tnQH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJV11jLAAoJECTWi3JdVIfQAucH/R7HKfwqn/iJdqNxQDwLsisj
f/MHlNVUvmXkLHIjzWqHqXjiP+uRR+LBa/WRhj0tlFeKps0h3OEAG9/GAMCTP41s
oftBoa4H+tsW+V/M896CF8MaTsuUuqk0pEpYgUbDFGwSDyr+CQUfeJgYuUoUygYn
3xgh0W6WAW2eJ9MbzZn57DaBoP0kmhLuFH4YCtAtwH/+PbEj1SKhFoxqM6LLdMmQ
tAOltFT05/xUibQUM6pqCFb7yDdkmTfqUSYj7FFdcx+z5NXf5nmjZ3nZsTRCyj5S
DOXXEmKouGOzzmnpiq/0HFS1MRdPDWXVye7jYEnC8s8rpc4K+1R/LlVPVacIaPw=
=wrEz
-----END PGP SIGNATURE-----

--csjV5iuXLa65tnQH--
