Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2535DC7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 18:30:55 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9002A83A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 18:30:54 +0000 (UTC)
Date: Mon, 3 Jun 2019 19:30:50 +0100
From: Mark Brown <broonie@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20190603183050.GB2456@sirena.org.uk>
References: <20190530060727.GA31283@mit.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5FDiZl1vRbLRjwwc"
Content-Disposition: inline
In-Reply-To: <20190530060727.GA31283@mit.edu>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Satya Tangirala <satyat@google.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Inline Encryption Support
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--5FDiZl1vRbLRjwwc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 30, 2019 at 02:07:27AM -0400, Theodore Ts'o wrote:

> We=E2=80=99ve sent out an RFC patchset to add support for inline encrypti=
on to
> the block subsystem, UFS driver, f2fs, and fscrypt
> (https://www.spinics.net/lists/linux-block/msg40330.html).  We=E2=80=99ll
> discuss our approach including:

> How the filesystem communicates an encryption key to inline encryption
> hardware for each struct bio it submits.  How to add support for
> inline encryption to storage drivers.  Support for layered devices
> like device mapper.  A software crypto fallback.  How this work can
> make future encryption tasks cleaner - like metadata encryption,
> file-based encryption on removable storage and the possibility of
> unifying how fscrypt, dm-crypt, and eCryptfs implement encryption.
> like device mapper.  A software crypto fallback.  How this work can
> make future encryption tasks cleaner - like metadata encryption,
> file-based encryption on removable storage and the possibility of
> unifying how fscrypt, dm-crypt, and eCryptfs implement encryption.

There was some related work done by Linaro on this, specifically for
adding support for offloading ESSIV in dm-crypt using crypto engines
(rather than something directly in block hardware) through the existing
crypto API.  It does seem like something where there's hardware out
there but no clear idea how to implement support for it in the kernel,
the big blockers there were IIRC benchmarking requirements and in the
case of ESSIV handling the fact that everything is in dm-crypt at
present.

--5FDiZl1vRbLRjwwc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz1Z1oACgkQJNaLcl1U
h9CFTQf8C7hhrmU3lLjJlsijeHHe+xyzyCOkTDWhhcW7zc8mBXRwTcki00WKANS1
+N55KPedJtDBiLUditeNw0nF07aWWA9JUYf5Ed+qJL3J+iUMp/Mj3ZHRX3t3WivR
lx73lNd0BS6I5F95iT78lXzG6nPanOhvzby1qhQK23qUF7dA1gqSIDFqDMBBfjyw
KED3Akd5J1czvYf0l12NjPBZqLWGBcmwY3DIT9n7LWk95mNl04wn0iPfszPMtLM7
hgLeKehWdm0VpHm+qysa1ZSCtyo0GPGFOtylwMxtVPmDAck8wS4vZ2wLskS/uP0K
9O8ksoYWK9nMYXztk8qE826nUseblw==
=JO9w
-----END PGP SIGNATURE-----

--5FDiZl1vRbLRjwwc--
