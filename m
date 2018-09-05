Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9204CD2E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 10:12:02 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 18CB3A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 10:12:02 +0000 (UTC)
Date: Wed, 5 Sep 2018 11:11:59 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20180905101159.GD9781@sirena.org.uk>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<20180905085642.GA29931@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i7F3eY7HS/tUJxUd"
Content-Disposition: inline
In-Reply-To: <20180905085642.GA29931@kroah.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
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


--i7F3eY7HS/tUJxUd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 05, 2018 at 10:56:42AM +0200, Greg KH wrote:

> 	- We have finally woken some subsystem maintainers up into
> 	  actually properly tagging patches for stable.  We used to have
> 	  a horrid rate of this happening, and it is getting better.
> 	  However, we still have whole major subsystems that _never_ tag
> 	  anything, which is a problem, so things will get larger.

Some of us have been doing this for 5+ years :/

> 	- Sasha's work in finding the patches that maintainers/developer
> 	  fail to tag is paying off really well, which also increases
> 	  the size.

These and the few other patches that I didn't tag for stable myself are
the only ones I try to review reliably, the others I already looked at
for stable at least once and especially where things are automated it's
better to have some manual checking.  It's good that Sasha's stuff is
flagged now, and most other submissions are obvious as well, so that's
fairly easy to do and means that the review burden is relatively light.

--i7F3eY7HS/tUJxUd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluPq+4ACgkQJNaLcl1U
h9Cf1QgAgFfYtqbDvKLBWnaFHcX56YCmxEo0EVrPj6fSmkcbZo9mFkv1FxA012sR
MQIF0yrvP3P+ZwEYuRXRHOZl5gNRGW9RZjQ/IXb0jKGVsg3etQNWI/2viZo+BuRm
kVS3AvK37TXSlEPXnYDSuIgJ+3L31oKHxlK61Vur8bBVCSozuRRch0lbuhGemFMY
Ejb6BB/tB7SqSkK78GQSBTenmnnXWOYBpZ1eXosoQYcBV4+rkLA8xImUC6RTERPQ
xZu35BTcMrgbvPX2VIrX9cV3K52H+FMhumCv1C4Fq+OWeO7SAUj4zzf38xJbXIvA
kge0pwaiyMHZmSKXN3a6Bt5qQM5oMQ==
=LGI/
-----END PGP SIGNATURE-----

--i7F3eY7HS/tUJxUd--
