Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3D0007AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 11:12:30 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D5ACC1A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 11:12:29 +0000 (UTC)
Date: Wed, 3 Aug 2016 12:12:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20160803111215.GP10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3LbzE+0aVzOo6fIw"
Content-Disposition: inline
In-Reply-To: <87oa5aqjmq.fsf@intel.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--3LbzE+0aVzOo6fIw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 03, 2016 at 12:36:29PM +0300, Jani Nikula wrote:

> However, I presume maintainers don't add cc: stable lightly, even when
> the fix could benefit stable kernel users, if there's any risk of the
> backport coming back to haunt you. I believe maintainers assume some
> degree of responsibility for the backport when they add cc: stable, even
> when they don't have the means to do QA. (And with the plethora of
> longterm kernels around these days, who does?)

> But does being more liberal in adding cc: stable tags and shifting the
> responsibility for backports towards stable kernel maintainers work

I'm not saying be *more* liberal, I'm saying that's pretty much where
we're at at the minute.

> either? The bugs will anyway be reported to subsystem/driver
> maintainers, not stable maintainers.

That's not happening in my experience, people working with stable seem
to generally involve the stable people in the few cases where there's a
problem.

--3LbzE+0aVzOo6fIw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXodGOAAoJECTWi3JdVIfQenYIAIXcYT009J9Q1JtrQfaTqUdA
IRprsJN9PulJyQryix+AusgLEDr1qPVPmO5y+5XbBI8t3I9dt2vYa43QQ5Y2O47Y
l8jwJL+tDRh/rYnVNnK+5umBzvTLvesSPA5fd2QQ7aor4DiQE0deagmA0JY3+AWv
Ii/VPsbPgC9cAY8/zCRtJD8in321WvNmchhn5tB8mHGVIcWmozNkd0rdiSeY7p3n
Z0q+MuiVBpDshHWlhab7w2fuwzlyDFKSsYLUyIiYhETsv5khmlJ8aOxqWWN2KqgW
3tkp24pkmhNtDFbFF5PB8bUSj5KGRg84XSfbsNrgi1QRjtIs7wHL1kLoDGmajDg=
=L5Km
-----END PGP SIGNATURE-----

--3LbzE+0aVzOo6fIw--
