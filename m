Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DBF2783D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:00:22 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4FEB5EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:00:22 +0000 (UTC)
Date: Mon, 13 Jul 2015 11:00:12 +0100
From: Mark Brown <broonie@kernel.org>
To: josh@joshtriplett.org
Message-ID: <20150713100012.GZ11162@sirena.org.uk>
References: <559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710124416.GR23515@io.lakedaemon.net>
	<20150710182429.GX11162@sirena.org.uk>
	<20150710204005.GA10533@cloud>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1g8/xwKqmfjThapt"
Content-Disposition: inline
In-Reply-To: <20150710204005.GA10533@cloud>
Cc: Jason Cooper <jason@lakedaemon.net>,
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


--1g8/xwKqmfjThapt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 10, 2015 at 01:40:05PM -0700, josh@joshtriplett.org wrote:
> On Fri, Jul 10, 2015 at 07:24:29PM +0100, Mark Brown wrote:

> > The false positives are a bit of an issue since it discourages people
> > doing smaller cleanups over wide areas, you can end up getting CCed on
> > lots of things you touched which can be a bit offputting.

> --git-fallback seems to work pretty well.  It nicely embodies the
> approach of "if it doesn't have a maintainer, talk to the last poor
> sucker who touched it".

That seems to have the same problems as just plain old git, and given
the way it uses wildcards it will use git more often than it should for
common patterns like companies supporting all their devices.  It'll just
trigger a bit less often.

--1g8/xwKqmfjThapt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVo4wrAAoJECTWi3JdVIfQ6gIH/RzjG96t8yYPB0VSTesC48Y+
bSlWWpOiWJmLhZxh73cwQDmmjFBzwnPEJ/AuCpl31xwJFiUAX81EfWd1d7i2Z3a6
a9Rct4rOEyPd18hDvuoWj2jBU2Ur2L/HZFQeBYJJQ3EJmpI3b9ZazO72tY/xKsAL
qd+XlGJgOeOq1UAfmvh3Js7ZxYPVQrX1ZWhHS5GJ85uPKY7DzI8nGRKHomri1X/A
133qTnqUBy+OFiEJM6vw3H3i3UddfyJM0KL10VXRSs/zQcbq0UtqEqnquUgFJ5l3
m/xu9kNsqLBwjlwkXji1P7vPUJJafMkvdQM3WQfY2AHDpSgZbjQ3rBVrwKsQrVI=
=jtNA
-----END PGP SIGNATURE-----

--1g8/xwKqmfjThapt--
