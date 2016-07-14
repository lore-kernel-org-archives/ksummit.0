Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DCBA998C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Jul 2016 10:06:15 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 77D2AA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Jul 2016 10:06:15 +0000 (UTC)
Date: Thu, 14 Jul 2016 11:06:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20160714100603.GJ9976@sirena.org.uk>
References: <0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="T4IYkFBVPN84tP7K"
Content-Disposition: inline
In-Reply-To: <20160714031753.GA28722@kroah.com>
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


--T4IYkFBVPN84tP7K
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 14, 2016 at 12:17:53PM +0900, Greg KH wrote:
> On Wed, Jul 13, 2016 at 03:34:47PM +0100, Mark Brown wrote:

> > There was a lot of pushback against LTSI,

> pushback from whom?

Linaro members who wanted the LSK.

> > the most concrete bit I could
> > see was the inclusion of board support and vendor specific drivers -

> That's exactly the goal of LTSI.

Right, which is a problem for some people.

> > people doing products won't care so much but people releasing source
> > weren't thrilled with the idea of it ending up either conflicting with
> > their internal work or showing up in the diffstat of what they release.

> What is conflicting?  BSP and drivers for hardware that you don't use?

No, hardware that you do use.  If LTSI is including changes for a driver
that's also being worked on in the vendor's own trees then at some point=20
the two sets of changes are going to have to get merged which makes the
workflow more stressful. =20

--T4IYkFBVPN84tP7K
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXh2QKAAoJECTWi3JdVIfQO3IH+wXFOA6V5Ji3wXa1uFHCT/CO
JLFZjvmnM/RMe3Zb2aCEJSk/a9+WFI/UMy1adXRfxjjiLJp+aLd4mEeSeKyP5qnW
WTYtvkiCAnA4fJtR8PO/B1v7K+fsXG05n7e1OWlCvsdZqChcs0zOK2FdqZMr2Qpc
50Nf7nBb0eJ6isiihCFqm7GGoZ3JQJ7KGtstZCBGv39xsd0kYfVuss1UWZkP52Wl
9GiPsIfZ/U1ePZSemuwZoSw9Zwur3cc/cXfs98eCSPhnopGQLYhzMgQDvjwKoIli
HUMizntiK7cU195PtuFyfvOrJEVTP25JLwDIEH0ILHLMMizycxeuvFjDsgXQwVo=
=xevB
-----END PGP SIGNATURE-----

--T4IYkFBVPN84tP7K--
