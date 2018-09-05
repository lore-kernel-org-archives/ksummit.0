Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8C01FD9B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 10:47:06 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 10F347A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 10:47:05 +0000 (UTC)
Date: Wed, 5 Sep 2018 11:47:00 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180905104700.GE9781@sirena.org.uk>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="C+ts3FVlLX8+P6JN"
Content-Disposition: inline
In-Reply-To: <1536141525.8121.2.camel@HansenPartnership.com>
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


--C+ts3FVlLX8+P6JN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 05, 2018 at 10:58:45AM +0100, James Bottomley wrote:

> This really shouldn't be an issue: stable trees are backported from
> upstream.  The patch (should) work in upstream, so it should work in
> stable.  There are only a few real cases you need to worry about:

>    1. Buggy patch in upstream backported to stable. (will be caught and
>       the fix backported soon)
>    2. Missing precursor causing issues in stable alone.
>    3. Bug introduced when hand applying.

> The chances of one of these happening is non-zero, but the criteria for
> stable should mean its still better odds than the odds of hitting the
> bug it was fixing.

Some of those are substantial enough to be worth worrying about,
especially the missing precursor issues.  It's rarely an issue with the
human generated backports but the automated ones don't have a sense of
context in the selection.

There's also a risk/reward tradeoff to consider with more minor issues,
especially performance related ones.  We want people to be enthusiastic
about taking stable updates and every time they find a problem with a
backport that works against them doing that.

--C+ts3FVlLX8+P6JN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluPtCMACgkQJNaLcl1U
h9BIXAf/XoGwrWj4LPS7z29pDESIzRKq1hSp8h9TE1lCi+1WzkEQmtghDiogXGhS
z+/WF1NxuvUoyGMxUS3u3irYbsfKWt106pLtX21ln+SvrdUPVY2ACyppJrt+FkpJ
gfkKN4CmJcz9ocD4zyrHy7dFBxvgKkqHZHwODIGzfpHITUacChE4cPFlJoLbMmmK
TkndsT5mcoHXfd7qQT+3dTPjZ1wmcBkwd1Dtwys0zL/myPVflhRakAiQu1/hjCIs
ARuT0dT5FnxUiDqgfIQjXVbuxH8BKOHNCzveRf9F5MPnk0WzmvvXNVjoNP2k4xHf
rcVTP7/CfOX+ohah3qvjC/tbZ5r66w==
=MpOj
-----END PGP SIGNATURE-----

--C+ts3FVlLX8+P6JN--
