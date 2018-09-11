Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C92211B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:56:37 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0C6658D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:56:36 +0000 (UTC)
Date: Tue, 11 Sep 2018 18:56:34 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180911175634.GF10123@sirena.org.uk>
References: <20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
	<20180911170212.GC8284@roeck-us.net>
	<1536686530.3511.1.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NGIwU0kFl1Z1A3An"
Content-Disposition: inline
In-Reply-To: <1536686530.3511.1.camel@HansenPartnership.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--NGIwU0kFl1Z1A3An
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 11, 2018 at 10:22:10AM -0700, James Bottomley wrote:

> Not to excuse rudeness, we always try to be polite on lists when this
> happens, but -next builds on Australian time, so when we find and fix
> an issue there can be up to 24h before it propagates.  In that time,
> particularly if it's a stupid bug, it gets picked up and flagged by a
> number of self contained 0day type projects and possibly a couple of
> coccinelle type ones as well.  It does get a bit repetitive for
> maintainers to receive and have to respond to 4 or 5 bug reports for
> something they just fixed ...

I'd have thought most maintainers would be pretty used to sending
repetitive e-mail by now :)

> Perhaps the -next tracking projects could have some sort of co-
> ordination list to prevent the five bug reports for the same issue
> problem?

We're not *that* overburdened with people running testing, and
especially not with people actively reporting the results, at the
minute.  A lot of the testers do have different focuses too which
reduces overlap quite a bit.  When I've seen this happening it's more
been collisions with people testing a specific platform for their own
use duplicating things.  There is kernel-build-reports@lists.linaro.org
but it's very much a firehose right now, really this would want a bug
tracker.

--NGIwU0kFl1Z1A3An
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluYAdEACgkQJNaLcl1U
h9DqpQf7BAtgh/f01DB8+RR9q88D0O5XEyDFrW4yx08RLD1WqWGA2xupiSlH2LFW
ulxgyRlgO0ypMSzzJ2Ad4ccxTdfeqyhh4dcQH/NpnEQTjf9SpU7PpSe4nSRXFxcs
Pt2wrGZTX/dLSlzziL7LLP0N8XiW7IbdD1IBo5CstO+sRaPTB9v+DUVC9XVCt1Ez
0PgFXWWIQQW/1tUpZiwuVy63o7W5OtGHpoO7TJArcEjWh0H3Yoy9eWleyHRMfwsC
9jhrDsxFiOWhoTODBWuA+BSPOG4pZAQbiYk175TPUnyf5wuKyA0KtTjMz3DaUNga
Q6RTPMbHqaWHL/mf5dAB0NmBnZ82dg==
=4KNV
-----END PGP SIGNATURE-----

--NGIwU0kFl1Z1A3An--
