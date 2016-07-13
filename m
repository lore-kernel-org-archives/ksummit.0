Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E96C2997
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 14:35:05 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C9FFF173
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Jul 2016 14:35:04 +0000 (UTC)
Date: Wed, 13 Jul 2016 15:34:47 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20160713143447.GH9976@sirena.org.uk>
References: <20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OpLPJvDmhXTZE4Lg"
Content-Disposition: inline
In-Reply-To: <20160713090739.GA18037@kroah.com>
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


--OpLPJvDmhXTZE4Lg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 13, 2016 at 06:07:39PM +0900, Greg KH wrote:
> On Wed, Jul 13, 2016 at 01:48:15PM +0900, Alex Shi wrote:

> > I am thinking if it's possible to share an basic tree which include some
> > widely wanted backporting features. That could share the testing and review,
> > then will reduce bugs much more.

> Like LTSI already does today?  :)

There was a lot of pushback against LTSI, the most concrete bit I could
see was the inclusion of board support and vendor specific drivers -
people doing products won't care so much but people releasing source
weren't thrilled with the idea of it ending up either conflicting with
their internal work or showing up in the diffstat of what they release.

--OpLPJvDmhXTZE4Lg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXhlGFAAoJECTWi3JdVIfQwxwH/2D6uUNMuqXPwAXng5XCD9x2
378H7hNWRdwEq2Hhh/Cbf0O+RkaFMJE3VFardNgcqZeO8wFwXdtzX1yweHib/+mz
84PJM4Yes/uZfUlHw59lbvAFhrsTiLV6HMrBf8tboOSk8G4N7gOcaKEI3y24F3hU
Wl7P02XZSge1oRB2TW5/rSqIqpuPW02ST9HDC56bsWonkEHJMQvE7oOu9Z5US94Y
artQeWRm7NLvLmO2dRDH6u3enI4PBXFN70rwUbPNgQrKtl+ghp5VGMogl2/XzJEv
h73bFwKQNZqdlkxXHFZJLu4KaCbr4QsFcNLPcOojLcb81XhiLBp5VLToDPhHnFk=
=mrKa
-----END PGP SIGNATURE-----

--OpLPJvDmhXTZE4Lg--
