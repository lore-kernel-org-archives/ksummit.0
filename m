Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 918BA413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 15:54:05 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3AAB3267
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 15:54:05 +0000 (UTC)
Date: Thu, 4 Aug 2016 16:53:49 +0100
From: Mark Brown <broonie@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20160804155349.GB10383@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de>
	<20160727180346.GP11806@sirena.org.uk>
	<CAMuHMdV7eJndSTQ9_C1KnezGb8mYJL+BXwnqc1zES_amT+XKWA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FkmkrVfFsRoUs1wW"
Content-Disposition: inline
In-Reply-To: <CAMuHMdV7eJndSTQ9_C1KnezGb8mYJL+BXwnqc1zES_amT+XKWA@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--FkmkrVfFsRoUs1wW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 04, 2016 at 02:37:36PM +0200, Geert Uytterhoeven wrote:
> On Wed, Jul 27, 2016 at 8:03 PM, Mark Brown <broonie@kernel.org> wrote:

> > Sure, I don't think anyone disagrees on that but it does mean we don't
> > actually blow up easily like we used to - it's messy but it does get
> > there safely.  I was specifically querying your statement that things
> > would blow up.

> Some drivers/subsystems don't support deferred probing yet. Such failures
> usually don't blow up, but cause subtle malfunctioning.

Sure, but at this point these are pretty much just bugs - it's one of
the most common error patterns I see in probe routines but it does tend
to go along with poor "let's just ignore that error, it can't have been
important" practices which ought to be fixed anyway.

--FkmkrVfFsRoUs1wW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXo2UMAAoJECTWi3JdVIfQ8OcH/AtmQ6tfOytkifWBd6Vt67tE
Db6mJ5s2Z2coMatc7opErZXfFw1vm/tuaxGlb/cskidDjebxlGIcIeglmlr5f1JY
08WwWDKICpG+0szVICxKX/StCYqI82ePpRgLXtGR4jJKB+C50/JSmZ3W2K14vIXv
eVkWj/glfPDr0lMxNd4Yuwm+3fYk137yl1v7hBSsHFPlWGwHBYYk86QnkVqcFCJT
0M8Orru5lyPTNcBfSRRWnTLxH9HvMd2C9MDIkWTGIoP5pRjqZwUYAg4lx6/v7cwi
+EKEWm4waUNQuBFX47IWPFQCPMtcTemjwehikx0oOEMh3/svRsokLQ4yE8A4VC8=
=i6XA
-----END PGP SIGNATURE-----

--FkmkrVfFsRoUs1wW--
