Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E9B583D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 11:07:37 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DB723F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 11:07:36 +0000 (UTC)
Date: Wed, 8 Jul 2015 12:07:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20150708110727.GP11162@sirena.org.uk>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
	<20150708021128.GB3102@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zfsaV+LVqEQKX7k4"
Content-Disposition: inline
In-Reply-To: <20150708021128.GB3102@kroah.com>
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
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


--zfsaV+LVqEQKX7k4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 07, 2015 at 07:11:28PM -0700, Greg KH wrote:
> On Tue, Jul 07, 2015 at 09:14:00PM -0400, Josh Boyer wrote:

> > You could make a Reviewed-by tag required before a patch can be
> > included in a submaintainer's tree.  At least some maintainers seem to
> > (arbitrarily?) require this at times.  However, if you do that then it
> > would likely slow down development quite a bit.

> It doesn't seem to have slowed down the rate of change for the
> subsystems that currently require this, so why do you think it would?

I think there's probably a cause and effect thing going on there - it's
more likely that a subsystem will start to impose such requirements if
they are confident that it is practical to get reviews of sufficient
quality in.  I'd guess at least some of the time it's a formalisation of
existing practice rather than a completely new requirement.

> > (I would love to see a graph comparing rate of change to rate of
> > regressions/bugs, but then people would have to know the latter.)

> Want to start tracking that?  We've needed someone to do that work for
> quite some time now, the fact that we've gotten by without it either
> means that no one sees the value in funding such a position and/or it's
> not really something that anyone cares about...

Well, first we'd need to find a way of counting the bugs and
regressions.

--zfsaV+LVqEQKX7k4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVnQRuAAoJECTWi3JdVIfQ0qQH+QHXbztesVj8sovyCZLSPnq5
q5CQ2cZofSpK+wJEskQCuN+xbd76quMSfc2JDTxqcJlzVe/Nhk+H6c2B9pckSIMB
kSVKS0HIZkiKBJNudD8+4Am4pk5uqAEZ448xvWILr1f3HieEH6b4bOvCTn5Nx4dG
DCUWEXrhG7CGXOaW/joaw96823BCOXZmllLiS3f70q6AsEk9uyuwCQqMjhxu7umn
vqDZGRSaBRx9ntF/fCRFHqX3sfsuaTsWIlPJm9mJaWXeZFupf1yg8DmlIQuH5AQ9
gYIS3l0C3s4MPucKVfe9iR3ZLdOd8Ciinqe+LWWTn0qZkuCtOmOcR3eXDIppG/0=
=V9Tf
-----END PGP SIGNATURE-----

--zfsaV+LVqEQKX7k4--
