Return-Path: <broonie@sirena.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 980F7B1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 18:52:36 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 16E7A13E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Oct 2017 18:52:35 +0000 (UTC)
Date: Mon, 16 Oct 2017 19:52:18 +0100
From: Mark Brown <broonie@sirena.org.uk>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20171016185218.57obu7biasbjocpo@sirena.co.uk>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1710091750540.14384@jbgna.fhfr.qr>
	<1507567045.3100.16.camel@HansenPartnership.com>
	<alpine.DEB.2.20.1710091848390.3870@hadrien>
	<1507568189.3100.29.camel@HansenPartnership.com>
	<871sm9plfb.fsf@intel.com>
	<1508163175.7571.2.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kqfk25balu37tth4"
Content-Disposition: inline
In-Reply-To: <1508163175.7571.2.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--kqfk25balu37tth4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 16, 2017 at 07:12:55AM -0700, James Bottomley wrote:
> On Wed, 2017-10-11 at 21:51 +0300, Jani Nikula wrote:

> > By -rc1 we (drm in general, drm/i915 in particular) will already have
> > accumulated easily 4-5 weeks' worth of commits for the *next* merge
> > window. Applying treewide stuff to Linus' tree at -rc1 forces a
> > backmerge and potentially conflicts galore

> If we're applying a semantic patch script (and we've verified it works
> well enough to use the script on the -rc1 main tree), couldn't you
> simply apply it to your tree at the same time?

git doesn't do the best job figuring out that the same change was made
in two different commits so you still end up with the conflicts.  It's
much easier if we can just get changes in through the maintainer tree.

--kqfk25balu37tth4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlnk/+EACgkQJNaLcl1U
h9Ckagf/fxmFTzPNX89XZYqJx+d1vluoFSfCSZvslLnuwwByK9XaTdELWajI2k91
4VjBqxiRH+nEAkRjcky0aydDXl+/cNSzKgjYX4YSFozM7eSAkW5drQpV4VY1sCQX
X2U/JL54GBNz9mL+TiShdz/nhgCqyMhxhNO9OgXRIvPNlyuN4bSRqMMyacGk5Oq5
fU5eG5fGc0oYvI98z51diBZeYPESaxih+t40tJK2JyMQWSjW4GFm4I/dA1lb+ZLM
wwG/HogRz9sCd8Jm1J2rPURgfSl9fCIoSj+XSoJUm6YJQ7AgXXEJ8J6E67sBLnZH
h6H2M1PMM0CZWU91KalxmRgsz+MVZg==
=4d6C
-----END PGP SIGNATURE-----

--kqfk25balu37tth4--
