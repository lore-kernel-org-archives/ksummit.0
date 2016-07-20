Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 485D3360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 15:53:35 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D28F1187
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 15:53:34 +0000 (UTC)
Date: Wed, 20 Jul 2016 16:53:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20160720155319.GG6509@sirena.org.uk>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160719173120.GE30372@sirena.org.uk>
	<alpine.LNX.2.00.1607192049170.24757@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yZnyZsPjQYjG7xG7"
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1607192049170.24757@cbobk.fhfr.pm>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--yZnyZsPjQYjG7xG7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 19, 2016 at 08:52:33PM +0200, Jiri Kosina wrote:
> On Tue, 19 Jul 2016, Mark Brown wrote:

> > There's a push from certain quarters to move away from GCC to LLVM. =20

> This might actually be an interesting topic per se.

Yes, indeed.

> LLVM definitely has quite some nice features, but their attitude towards=
=20
> bugs which are rather severe for kernel programming should be taken as a=
=20
> warning at least. Look at the "pushf/popf being generated around=20
> local_irq_save()" trainwreck as an example.

My understanding (which is a bit second hand here) is that LLVM upstream
really values direct engagement at time of development much more than
anything else - AFAICT they're more focused on driving things forward,
partly due to expecting other people to do the main release management.
To that end if people really want to run LLVM built kernels in
production they probably need to either use a downstream that ensures
that things are working well for kernel builds or work directly on
testing development versions of the compilers to catch issues there.

--yZnyZsPjQYjG7xG7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXj55uAAoJECTWi3JdVIfQFRoH+wb5XuK/1H66MlxLo57Mu1d6
FeAt14HUv7oHSwiqQheHi/v8sVU5oaUmjbyOwEIIgTBreYK3YN9yoEdKW1OjX5+j
4N76Xh9oslX8T3UBm0NqKVbY7NmatxbV0RUvI28d9GrUJwV3KyoFpDfeCLOJrmTU
/Tl5JFaIW3ez3Y1Intu4axZmDLquiid6/ajcwQEusRs8qyZPfAPeEtJQcEMebqJL
80L0kUR5eLfQ5jBOZgUhLuD8BoI3LYsveFtczbXkKm+O7LSZT9LNXEC2EetFV04s
0xbwgpf0yQUQa2pSPl3tk2t1pZOXDar7vs4vAc6EMq0c0r/ZW7GUtD3+ZDtPy5U=
=8X7J
-----END PGP SIGNATURE-----

--yZnyZsPjQYjG7xG7--
