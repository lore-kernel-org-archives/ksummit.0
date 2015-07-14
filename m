Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 64388B88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:25:24 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E1F78138
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 15:25:23 +0000 (UTC)
Date: Tue, 14 Jul 2015 16:25:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150714152515.GX11162@sirena.org.uk>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150714104623.GQ11162@sirena.org.uk>
	<55A51548.4040502@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="htqZ8ueYdoAOu1w6"
Content-Disposition: inline
In-Reply-To: <55A51548.4040502@oracle.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
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


--htqZ8ueYdoAOu1w6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 14, 2015 at 09:57:28AM -0400, Sasha Levin wrote:

Re-wrapped the text, it looks like something joined all the paragraphs
up into single lines.

> On 07/14/2015 06:46 AM, Mark Brown wrote:

> > Indeed depending on the bug having things forced to sit in -next for
> > too long can be a real problem - I've had people refusing to fix
> > build errors in Linus' tree for a week as they wanted things to cook
> > in -next which took out automated testing of Linus' tree (and
> > anything that merged it) for the duration.

> I don't agree that letting things cook in -next is hurting anyone: if it's
> a critical bug then Linus should probably delay releasing a final before
> it's been resolved, and if it's not then there's no harm for letting it
> sit outside for a bit.

If the issue being fixed is serious enough to take out substantial
portion of our test coverage or affect a lot of other development usage
then that's really disruptive to other work, it impacts things like
bisection for example.  A strong rule does nobody any good, it's
overkill for the problem.

--htqZ8ueYdoAOu1w6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVpSnaAAoJECTWi3JdVIfQsLsH/RsFPnu1U26DBgP7OHxMfVhh
SCq2cDkmOTX7nZAFTb8y9vRtX6KbXm0aa4s0ekiDucW0RhzDjuiSXM+PyXSaXhUF
hjXIEadlmXDshVXLBw/HzuNe3W+q9IhThuQjFa/Ntz++iRgXj0InCiOY7bbgrKFC
QvVvdHFe65mDiGlE/vd7i89n6alI7k1sJ0sGZWqv5HwDzNlxbhZ1bEH0t8xDPmW3
gEf052UV/0PfQuweq4buVy6+wFFfQBb28S/yz8Qw6qZPN7D/ULqZ899rufsglDLl
c2ozyxy0XFjDc0CZfz7W/wnEa+fBSkpGi8vX8nUvJ2A0Ffenya2iCPUmol7NNKs=
=yKTH
-----END PGP SIGNATURE-----

--htqZ8ueYdoAOu1w6--
