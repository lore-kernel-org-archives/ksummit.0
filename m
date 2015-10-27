Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BCF4492
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Oct 2015 00:12:14 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 613B3166
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Oct 2015 00:12:14 +0000 (UTC)
Date: Tue, 27 Oct 2015 09:12:01 +0900
From: Mark Brown <broonie@kernel.org>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20151027001201.GI28319@sirena.org.uk>
References: <562E37D7.9080105@suse.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PNpeiK4tTqhYOExY"
Content-Disposition: inline
In-Reply-To: <562E37D7.9080105@suse.com>
Cc: theodore.tso@gmail.com, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Late KS topics
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--PNpeiK4tTqhYOExY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 26, 2015 at 03:25:27PM +0100, Hannes Reinecke wrote:

> - Asynchronous probing
>   Currently, the driver model has the simple match/probe mechanism by
> which individual drivers can attach to device. As per design, these
> device are enumerated by the 'bus', and the match/probe pair is
> executed for each device. As this is a simple loop, each match/probe
> pair is executed sequentially.

There's also the deferred probing and general device ordering thing I
mailed Ted about yesterday - it's a different issue to async probing,
there's a big thread on the lists about one proposal for a subset of
these issues many of the participants of which are here.

--PNpeiK4tTqhYOExY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWLsFKAAoJECTWi3JdVIfQ/zgH/AkLzeITcUbCSazb/dJJPdJv
2Hk5xw/5qx49ZT/Bc8gZtLtW3I9iw8EtX3osg4eDHU4DCMhMBnodyUL/cXG5oZKI
WLDvIgd0GX25gv9oTJvbbM22EXvQk2RJzf6ZR+RazvflUgdFoke0zWT74JOA3PaC
9zppMC4WAw3bAKd3v+2fxbjISzzCBj5LjIFKlx7uMsvW5GRyeMtHSs36vd+ZcOrZ
w3nP3kf+pN2tE37HJGBajCng0SU1+GBTnNL3qWDHm1+dnOPUQBDCT0LTaPHS1Pua
rVmDrF4R4wE+4B6ERna4dScI9Z9ATRzs3RFQx8cFgcyIkHANU3bDIXtggv2aB40=
=d+Qy
-----END PGP SIGNATURE-----

--PNpeiK4tTqhYOExY--
