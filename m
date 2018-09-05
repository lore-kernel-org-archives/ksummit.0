Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1EA1A1392
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:50:33 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 924807EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:50:32 +0000 (UTC)
Date: Wed, 5 Sep 2018 15:50:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180905145029.GQ9781@sirena.org.uk>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<20180905131643.GM9781@sirena.org.uk>
	<20180905142728.GJ16300@sasha-vm>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l7GkBbkEatsaRqBf"
Content-Disposition: inline
In-Reply-To: <20180905142728.GJ16300@sasha-vm>
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	Greg KH <gregkh@linuxfoundation.org>,
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


--l7GkBbkEatsaRqBf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 05, 2018 at 02:27:29PM +0000, Sasha Levin wrote:
> On Wed, Sep 05, 2018 at 02:16:43PM +0100, Mark Brown wrote:

> >It's not just maintainers any more - in particular we've got Sasha's
> >neural net thing picking patches as well and it's substantially more
> >trigger happy than at least I am.  People do get a chance to review what
> >it's picking but that's different to maintainers picking things.

> What can I do to make the process better?

> I tried giving longer review periods, I tried sending emails right when
> the patch is merged upstream instead of weeks later and I tried actively
> pursuing some maintainers for explicit Acks. None of which seemed to
> make anyone happier.

Honestly the whole thing just gives me a bit of anxiety.  I'd say most
of the patches my thinking is "it's *probably* fine" and it's rare for
me to think "Oh, I missed that important patch!".  As you know I do
sometimes actively push back on things.  On balance it mostly doesn't
break things though and I'm not sure what can be improved process wise
here, a lot of it is fundamentally that if I thought it was clearly good
for stable I'd have flagged it already.

--l7GkBbkEatsaRqBf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluP7TQACgkQJNaLcl1U
h9CRyQf/SeGJ8MqdapARaNQqPEl+VbE6ZG73lHAmLuEytpwRXS1VzyLLFahpzLAs
YvM1S6qeB90LgRHFF9CvlGXb2Od2FCf5gInJDcW84aukv/ex7KvbqZ2if+ycuWlZ
wGfoo9i3BUIKCfsExMAbj2TzCzLMVohfw0Hhb6u8Bkm1+aJSMLZgCfZ6rM4WyI//
GlCP2siZJaue756he8JS0e/E3F9Y3Tj6/y1y4H6I0mycssxMU4iOytPDgYbNLHYP
rRDuJ1UGRcjRCHI3hBivtckTmci6Mj4wIDPh4M4z8wR86qpRAp4YFKfEbrw53LdU
0G/3WcgMzdMAxhLJOVnm6yKYPi8sHg==
=ztfd
-----END PGP SIGNATURE-----

--l7GkBbkEatsaRqBf--
