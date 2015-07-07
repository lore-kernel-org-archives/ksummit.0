Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 857D3BA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 13:14:24 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EBD5AB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 13:14:23 +0000 (UTC)
Date: Tue, 7 Jul 2015 14:14:11 +0100
From: Mark Brown <broonie@sirena.org.uk>
To: Alexey Dobriyan <adobriyan@gmail.com>
Message-ID: <20150707131411.GI2887@sirena.org.uk>
References: <20150707092434.GE11162@sirena.org.uk>
	<CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dMdWWqg3F2Dv/qfw"
Content-Disposition: inline
In-Reply-To: <CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--dMdWWqg3F2Dv/qfw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 07, 2015 at 04:02:13PM +0300, Alexey Dobriyan wrote:
> On Tue, Jul 7, 2015 at 12:24 PM, Mark Brown <broonie@kernel.org> wrote:

> >  - Should we start carrying config fragments upstream designed to
> >    support testing, things like the distro config fragments that keep
> >    getting discussed are one example here but there's other things like
> >    collections of debug options we could be looking at.

> This will gravitate everyone to running the same config which is the opposite
> of what you want.

Perhaps, perhaps not - it's not an unequivocal thing either way.  The
more barriers there are to enabling things the more likely it is that
people just won't bother in the first place (or that they'll run into
somme problem and give up before they get things working) and it's not
clear that having to figure these things out is always a good use of
people's time.

--dMdWWqg3F2Dv/qfw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVm9CiAAoJECTWi3JdVIfQT3UH/23hCJwTzVAo1TsHUQJob3Zs
eHYBb2Vx/iN50X/77uK/mc5WSF3Jq4GGBWt6zetIY+eYMVyUabGagzs2GCO5YAJm
+Wt9aoEO2MMNdk/YvKSdnnsfqeyZZl/Yv01vHIVUtIEXNP+sKQT85zzzIutvUD9W
Si/NLCyJR3zyGOy0979iMOG4WcXGx8OB4M6BYeNMtIqqTNcd8L16qV83/BoP5NFo
9h/zYfMWEu6FVU61D0sPh2bFALPpLPyQ7EJIyeHp9AINy3PqOR4MeLAbuYt6f80o
41ZcynAm01e/RvdXiEYGvMxQxm9RtP1J6LJ08g8yabbJwTLCsuFQxF8oCGk7zAU=
=gGzY
-----END PGP SIGNATURE-----

--dMdWWqg3F2Dv/qfw--
