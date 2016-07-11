Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E17828D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 16:23:00 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 79D5A173
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 16:23:00 +0000 (UTC)
Date: Mon, 11 Jul 2016 17:20:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160711162025.GC3701@sirena.org.uk>
References: <91774112.AKkGksYjl6@vostro.rjw.lan>
	<20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<57832D3A.8080702@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oJ71EGRlYNjSvfq7"
Content-Disposition: inline
In-Reply-To: <57832D3A.8080702@roeck-us.net>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--oJ71EGRlYNjSvfq7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 10, 2016 at 10:23:06PM -0700, Guenter Roeck wrote:
> On 07/10/2016 09:03 PM, Trond Myklebust wrote:
> > So, we might as well make this a formal proposal.

> > I=E2=80=99d like to propose that we have a discussion around how to mak=
e it
> > easier to implement kernel unit tests. I=E2=80=99ve co-opted Dan as he =
has
> > expressed both an interest and hands-on experience. :-)

I'm definitely interested in this discussion, it's something I've been
actively pushing on at work.

> Making it easier to implement such tests won't get such tests executed.
> I think we should also discuss how to implement more formal testing
> of release candidates, and/or how to improve test coverage.

Indeed, I think both are very important to getting progress on testing.
It's much easier to get people to write tests and fix issues they
identify if there's evidence that they're stable people care about the
results, but equally it's much easier to convince people to pay
attention to tests where the tests are actually there.  Bootstrapping is
going to need to push on all these things simultaneously until we've got
something sufficiently established.

--oJ71EGRlYNjSvfq7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXg8dIAAoJECTWi3JdVIfQDmcIAIJjJB1hj+3qNdqNuTRaB/Sh
GVrKDFUK65bqrwSGc4xp07u6zHooeMq7TYq/3Me3QgD6Kc3/S9ZYZ8qpYSSn4AFx
5BVxQiGwopAKnpZLoOsEkaYF3CXTyQR094MNkApATIaPyLdf3fhAKUvh2ExEJcER
dmZ7QRsWjncfvIZ9+ZXa9reh6MgRN00BOxhXir0KMXFPXMyTb9xYoy3VShxHu29v
Ed2ufABGkcvALtnKhtQ7wWOanA2JY9M89fHqe4u3A3Hd7oST9+LU92Pholg8gqaX
DuXi+Yru2i6nY9BOqtKpltNFIInPN+p996HgH6WOk5s+wytHXW+Y+wvPcaWshQM=
=N/k0
-----END PGP SIGNATURE-----

--oJ71EGRlYNjSvfq7--
