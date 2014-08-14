Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 74B008FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 16:39:33 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E6FC0201F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 16:39:32 +0000 (UTC)
Date: Thu, 14 Aug 2014 17:39:15 +0100
From: Mark Brown <broonie@sirena.org.uk>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20140814163915.GB17528@sirena.org.uk>
References: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
	<20140813180743.GB16662@roeck-us.net>
	<CAMuHMdVEYEsk1EtBbAAinJ=7m5SRh-w4DZb=_N0gaMgpvtRadw@mail.gmail.com>
	<20140813224507.GA29606@roeck-us.net>
	<20140814001450.GW17528@sirena.org.uk>
	<CAMuHMdUH_7KL0KCsZEL91m2YKwBBGTQEcYfQRQsHLcQ8LXHpkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="i8mz1utaBf8Zdcxn"
Content-Disposition: inline
In-Reply-To: <CAMuHMdUH_7KL0KCsZEL91m2YKwBBGTQEcYfQRQsHLcQ8LXHpkQ@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] RFC: Kernel tinification - kernel config
 reduction
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--i8mz1utaBf8Zdcxn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 14, 2014 at 09:49:59AM +0200, Geert Uytterhoeven wrote:
> On Thu, Aug 14, 2014 at 2:14 AM, Mark Brown <broonie@kernel.org> wrote:

> > allnoconfig is interesting too for similar reasons.

> Yes, but given you can't actually boot it, it usually receives even less care
> than allmodconfig.

Sure, but part of that is a function of people doing coverage working on
it and generally setting standards.

> Plus you have to band-aid various trivia, like
>   - NR_IRQS being zero,
>   - No CPU or platform code included, causing link errors (e.g. head.o is
>     not built on m68k),
>   - ...

That's not the case for all architectures, and TBH it seems like
something that it's reasonable to fix at least in so far as it builds
and links (assuming anyone wants to work on this for the architecutre).

> Furthermore, allnoconfig disables CONFIG_MMU on architectures that support
> nommu, which is less interesting, and thus need a KCONFIG_ALLCONFIG=
> trick (I'd love to have just "make CONFIG_MMU=y allnoconfig" instead).

That'd be nice, yes.

Another thing that's interesting to me is getting the defconfigs up to
the point where they run things like LTP well.

--i8mz1utaBf8Zdcxn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJT7OYvAAoJELSic+t+oim9tAQP/0rx5LB2CsHs6mYRGT5VxtjC
JSFogMXG0+jEEfRJ8bKMzcetTMaJGR6V+trIB5cPJJU5+EqbbvsP4MLrAWHvDyUA
FGFF9mZkUZryxNVSJLy2nqD4HtuX/zH+UQ6IgqXxvBdtkN65WxK4MN5TIp0wsjeX
1HwiBCYTGhSaftCanDI31x8/emMx500OGB4C9CNp6K6XIE9SpptMgrwvt1rVvWli
0KGapMKCcDEXVaBPgaSp9Y7VYfl0u7hYGZDET1MoUHzifzASewJIFIdn/8vK7g1J
p6NvVzn+CI1+N5cLsxgLZMRC6+T9FP2hrA3hIPt3E4Jqv4kdIfyBwTcezvt1SHUU
ziDLh03WqIjeiYiSO8Ukjnlp1WbcRBRgcfyP0M+xQTDuNK0yHKHPhSUatgBDprll
uzNTK9ALg9FLBtjTXK4tdvy04DuwiwDFajQpguD0c/dolD1YhQqWYjZN6ksS0ipR
YNcsdwGyF03x20/EiO8jH2oNZq94oWETmdlHjXzpOYLdLt2KEyam8Mh/anGIShjF
nMeSLC6SC3RD1KX3c82N3zCeNpaBr/eb4YnD1MfQInCrdhocGlVYQb6WfgDTF1uO
GmqBGWyXtWpA95XYGiMqmW7A0Apvb1vWlJHu4AA9JARta+mkLKqznj5UKSJkkFg/
oVkbcAKO8r+IGVu+LekC
=tNpn
-----END PGP SIGNATURE-----

--i8mz1utaBf8Zdcxn--
