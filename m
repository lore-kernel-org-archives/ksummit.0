Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84E89EC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 13:16:47 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1B7BAA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 13:16:47 +0000 (UTC)
Date: Wed, 5 Sep 2018 14:16:43 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@Hansenpartnership.com>
Message-ID: <20180905131643.GM9781@sirena.org.uk>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3xQkynibq3FKlJyM"
Content-Disposition: inline
In-Reply-To: <6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--3xQkynibq3FKlJyM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 05, 2018 at 01:24:18PM +0100, James Bottomley wrote:

> I absolutely agree.  That's why I said our process is expediency
> based:  you have to trade off the value of applying the patch vs the
> probability of introducing bugs.  However the maintainers are mostly
> considering this which is why stable is largely free from trivial but
> pointless patches.  The rule should be: if it doesn't fix a user
> visible bug, it doesn't go into stable.

It's not just maintainers any more - in particular we've got Sasha's
neural net thing picking patches as well and it's substantially more
trigger happy than at least I am.  People do get a chance to review what
it's picking but that's different to maintainers picking things.

--3xQkynibq3FKlJyM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluP1zsACgkQJNaLcl1U
h9Agcgf/U1ugBD8fiaIAHJCTBbQSvHtIux1LX+476Zawn6/BTensVoqjnaMYnZ7u
vXbBOuiEyxG22NjvkNbUgCGpQrCWMrZKRYas5FgOGwMVBQYwu2bnfXDLOj1JZIy1
pl2LqW5RH6ouyAi/7/vCbIinYMfoCiesXzZbmTaj92oUxOq1FWVBOIY5VLZFg/rK
+Jx5AeSyorvuWjGrbBw5ZqdKgKXJe3gcYXSqFMEhEHYXoYeIOe2LgUsBuE/E0WL+
Twj4zVHZYIGjp1W9FeSmLMaXd8EqwmnKhcuNn1CLYWgQLVHTNyc1Lv5acY/OfwPq
y7Q0rF+ME1Mg0/MfJBoVpGl1H/b8Eg==
=UmS5
-----END PGP SIGNATURE-----

--3xQkynibq3FKlJyM--
