Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 251687AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:45:29 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 356A31F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 14:45:28 +0000 (UTC)
Date: Wed, 3 Aug 2016 15:45:08 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160803144508.GQ10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<871t27s1i8.fsf@intel.com> <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0FDNE3+7N8PCoNAN"
Content-Disposition: inline
In-Reply-To: <1470232658.2482.42.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--0FDNE3+7N8PCoNAN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 03, 2016 at 09:57:38AM -0400, James Bottomley wrote:

> This isn't a viable approach.  Firstly stable review is less thorough
> than upstream review because the review mostly goes "yes, I already
> reviewed this in upstream".  Secondly, if the upstream review didn't
> catch the problems why would we suddenly catch them in a stable review?

Some of the stable trees don't even want the review - the -ckt ones for
example don't seem to leave any gap between sending out the "this patch
will be added" mails and the applied mails and I guess they're happy
with the results (I have to confess I killfiled their mails at some
point).

> The fact that possibly no-one reviewed the upstream patch indicates the
> need for a better upstream process (so something like we now have in
> SCSI which is no patches applied without one review tag), but expecting
> stable to fix our upstream process isn't going to work.

I think the concern here is fixes that are valid upstream but rely on
context that hasn't been backported.

--0FDNE3+7N8PCoNAN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXogNwAAoJECTWi3JdVIfQX2kH/2aoD/mIcgmscnvJAeadqk/m
roVkGRf4lAo+6QesLB0H1QmmUvtQ+xUUQsVcn8FMOuqA01qQbeDHnmW373RTnckg
kL6JzgB+5pfmPoKlyMUbw2jaHKW8k6WnxIPcOtlNRiomeh+X+FPmHlvUEayKDPtU
jtYc1Y23T6LefFQi2g0EVbXHcOVxuERtHQwP2lTsLiYvEY5dX/na46VzUVFv7tLY
0z9s4Giuidefs+1tRSE8immSR9/qPMkSXT8Hr7YVthfG2f//WTKDtcwPoKsrJ9f9
sLWbfQQXmuhKKEJfObQK4QAZ53bVTJWoz1qiRi/N1w3AD54k+X7fJMyDp7rXwUk=
=RInH
-----END PGP SIGNATURE-----

--0FDNE3+7N8PCoNAN--
