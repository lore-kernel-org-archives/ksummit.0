Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F3CCDBE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 11:27:44 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 71AEB2C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 11:27:44 +0000 (UTC)
Date: Thu, 13 Sep 2018 12:27:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20180913112738.GA8411@sirena.org.uk>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<CAKMK7uF+RyTVxvg0HyzponA-orENm-n0GiDXr6EDTGSkOFp+FQ@mail.gmail.com>
	<20180912185949.GC25894@wrath>
	<CAKMK7uFpat8PxSq9EqEJ7Ec43o_0AcMzxFGC_fLY0c-Ncycegg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IJpNTDwzlM2Ie8A6"
Content-Disposition: inline
In-Reply-To: <CAKMK7uFpat8PxSq9EqEJ7Ec43o_0AcMzxFGC_fLY0c-Ncycegg@mail.gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--IJpNTDwzlM2Ie8A6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 12, 2018 at 10:05:19PM +0200, Daniel Vetter wrote:
> On Wed, Sep 12, 2018 at 8:59 PM, Darren Hart <dvhart@infradead.org> wrote:

> > Regarding tooling, Andy and I have documented our process and shared our
> > tooling which has evolved to try and prevent human error. I believe DRM
> > has something even more evolved.

> > https://github.com/dvhart/pdx86-tools

> Hm, the gen-config scrips looks like a really neat idea. Atm we
> manually maintain some configs for all the drm drivers, but this is
> much better I think. Next step up would be to double-check that make

Yes, I've got a script like that as well (mine's a *tiny* bit less
sophisticated) - it's super handy if you frequently add new drivers.

> Bit of googling and fooling around says make CONFIG_FOO=y olddefconfig
> seems to do this, including enabling (all?) dependencies you need.

That only works for dependencies that are selected, if there's a config
option that stops CONFIG_FOO being seen by the user (eg, having MFD_FOO
preventing SUBSYSTEM_FOO being enabled) then it'll just get silently
ignored.

--IJpNTDwzlM2Ie8A6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluaSacACgkQJNaLcl1U
h9ACNAf9EYZN15YnhdJSnf01zKp7z45ivsSzU7NYKsYk5KSBn5qBoKUHUtnwzbYh
fh9C2d19raukJhCOydKYgvelfESLOCC7/aNIVpMGL/DVXuoh3IM05aEoTmK1EHPm
HqIDNxi72VjS1GBT346TB/TYxOtacwG9iGH4vv7zGycnbxWrBfzDuTWdARQYJpGh
vOFJG1rgQOk/kY4btgWyNe1A4EfWSZy6js6yJ49YxlTxwAGUkkgdadHaIbHeETTd
AZs5OTl0BRa8x0mZRyYZ4NgkEBhv6WNP/SGww4PJzm5eIhCp12Y/LxSbK0r6RncJ
9uhUZ8gaYNtCG/32E/y2NF+LqyBnaw==
=Vo8j
-----END PGP SIGNATURE-----

--IJpNTDwzlM2Ie8A6--
