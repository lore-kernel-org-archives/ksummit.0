Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B33978CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 11:10:47 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 40E3F1C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 11:10:47 +0000 (UTC)
Date: Fri, 15 Jul 2016 12:10:34 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160715111034.GF30372@sirena.org.uk>
References: <1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0hHDr/TIsw4o3iPK"
Content-Disposition: inline
In-Reply-To: <5788337F.8000500@roeck-us.net>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--0hHDr/TIsw4o3iPK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 14, 2016 at 05:51:11PM -0700, Guenter Roeck wrote:
> On 07/14/2016 05:22 PM, Greg KH wrote:
> > On Thu, Jul 14, 2016 at 11:06:03AM +0100, Mark Brown wrote:

> > Ok, there's no need for everyone to use the same messy tree, but perhaps
> > Linaro could participate with LTSI to help make something that more
> > people can all use?  No need to keep duplicating the same work...

> > But this is way off-topic here, sorry.

> Maybe a separate topic, and not entirely feasible for the kernel summit,
> but it might be worthwhile figuring out why companies are or are not
> using LTSI. My major problem with it was always that it is just a collection

I do think that could be a useful topic to cover in stable discussions
at KS, we've always focused on the stable trees but there's a much
broader spectrum of work going on there.

> of patches, not a kernel tree, meaning merges or cherry-picks are non-trivial.
> Sure, one can create a kernel tree from it, but that is not the same.

This is actually the main reason why I've never got around to pushing
things back into LTSI (it has been a little while since I last did that
admittedly).  The effort involved in figuring out the tooling for LTSI
always got in the way before anything productive came of it, having a
directly usable git tree would be *so* much easier.

--0hHDr/TIsw4o3iPK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXiMSpAAoJECTWi3JdVIfQ12wH/1/RXwPh9Hn3sYhnVdzoPeJF
vsUU47ulNAS/BZl232Fv/ommQ4ZcRs1MIFosl+vstiV8g3hP4cTxCThOlsTag4Kz
RPO+5uS5g3+20b/xLv5+FTD6a6CNSHbfNr6muzlpGWkhd9slP5m/QHsmpG3kFAy9
WXfNnUkhaM5EHGrrmHFzBtgbJpEGVdZTI9ob4BI2U5m2oJXhm+jf6MnO1ieAH5Rm
iEgjmJoiGrmsoVUXUug2dkYzJuyZkm9YDAUkyzKtfgtFwRHOMVrFlxGCa59nA2aJ
1zkp1AzMlsqv86OfpkvF0NsG9KyamDRT//kaGqA/r+fhpTrb4l/oCvYcigcGwbI=
=Y9lQ
-----END PGP SIGNATURE-----

--0hHDr/TIsw4o3iPK--
