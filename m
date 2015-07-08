Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 35FB6AE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 17:33:04 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C320413F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 17:33:03 +0000 (UTC)
Date: Wed, 8 Jul 2015 18:32:50 +0100
From: Mark Brown <broonie@kernel.org>
To: Jiri Kosina <jkosina@suse.com>
Message-ID: <20150708173250.GS11162@sirena.org.uk>
References: <20150707092434.GE11162@sirena.org.uk>
	<559BEF61.8050904@roeck-us.net>
	<CAMuHMdX6KcmZhibEC6hn2VN7veMSbbj1+P3kf=udY39fjdjj5w@mail.gmail.com>
	<20150708075409.GJ4341@mwanda>
	<CAMuHMdWH+g+=Ra6Do1TOQ8OdvUZ3Y051RnTpOzAQx-AWYidaFQ@mail.gmail.com>
	<alpine.LNX.2.00.1507081407471.10183@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tKkaNMvYmhQvRCRK"
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1507081407471.10183@pobox.suse.cz>
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--tKkaNMvYmhQvRCRK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 08, 2015 at 02:10:36PM +0200, Jiri Kosina wrote:
> On Wed, 8 Jul 2015, Geert Uytterhoeven wrote:

[0day]
> > > should be sending emails to everyone introducing new build warnings.
> > > Are people ignoring them?

> > Of course people ignore them ;-)

> I think the biggest problems with these are:

> - they are all squashed together into one report, totally unrelated thing=
s=20
>   together at one place. Noone is ever going to be actively looking into=
=20
>   it to see whether something he's responsible for hasn't popped up

> - they are not addressed to anybody explicitly. Sending them just to LKML=
=20
>   is a direct ticket to the "be ignored" land

That's not the case for the 0day warning reports, they're sent directly
to the people mentioned in the commit on a per-commit basis but as a one
shot.

--tKkaNMvYmhQvRCRK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEbBAEBCAAGBQJVnV7BAAoJECTWi3JdVIfQIsUH+KHypKOxrYbtndM56/QPgk2j
V7f8y/8A8cwCnI1ifAu7LV9d/76X1c+NIFgV1ZBAvcokGdAuMRk3xkZkeC+XKcjx
bRZ6Z8mqMczkBxmegy4CyJ5rht/gbgl6aebXLu8XWrUylS19P5irbuwHWjwZXdvg
9XJfBqYestnF0XrG8jPpQtu/mXsZbBKBeW3vPlDBTDKzemLg/XWDiATfT9g/E4F+
caJHiewv2RpnvrdLZRpoidR48Nmm9wOyoFrYXcd4xxhXD7TbVG63zo0U224oLeOD
KnlD+NWHIW/8Hv96vbQ/N9gWjb41cw2kXK+INJl45yN2w3TGcgff4nAOgJjV9w==
=t3ak
-----END PGP SIGNATURE-----

--tKkaNMvYmhQvRCRK--
