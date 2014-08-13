Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 22A6A910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 17:11:50 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B4BD220348
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 17:11:49 +0000 (UTC)
Date: Wed, 13 Aug 2014 18:11:28 +0100
From: Mark Brown <broonie@kernel.org>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20140813171128.GC17528@sirena.org.uk>
References: <53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<53EA3DA0.2070407@roeck-us.net>
	<CACxGe6vYNjEAZT6YhB5WNyh40urSEVRbmVaWjEt6nQNUbgMbPw@mail.gmail.com>
	<20140812164922.GS17528@sirena.org.uk>
	<CACxGe6vu6P=KsP7O09afqzgdx2Xh11N9t_C0VKJ9T+yY-_3m6A@mail.gmail.com>
	<20140813104053.GK17528@sirena.org.uk>
	<CAGa+x870XoA8Yi6BCOq7EsOQRjmKUpM3AAwhP_Y30eEbrkcHPg@mail.gmail.com>
	<CAOesGMjEMG9+uxeg_zPhhZFPi9ZdvdxapjypGLrCVtxGZh0Ejw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Vs8imIC20X8526NW"
Content-Disposition: inline
In-Reply-To: <CAOesGMjEMG9+uxeg_zPhhZFPi9ZdvdxapjypGLrCVtxGZh0Ejw@mail.gmail.com>
Cc: Shuah Khan <shuah.kh@samsung.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Vs8imIC20X8526NW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 13, 2014 at 09:40:34AM -0700, Olof Johansson wrote:

> Yeah, I'm in the same boat (but I don't have a public git repo with my
> scripts). They're all just big hacks to get things going, and I'm not
> so sure it makes sense to collaborate on them too much. pyboot has
> been useful to share between us, but even there it's been more work to
> share a code base than having separate copies and borrowing ideas.

> If things get turned too generic then they just become more cumbersome
> to modify and improve (or even use).

I think the reporting side is a lot more tractable than the execution
side here - there's enough going on with crunching a set of build and
boot logs into a useful report to be useful and it's a pretty common
need.  The execution side is different, that's a lot more likely to be
tied into the environment especially once you start running actual
runtime tests, but there's still common elements.

--Vs8imIC20X8526NW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJT65w9AAoJELSic+t+oim9W3cQAJA7mfyL9El/yYEnTDx79Xg4
Crmb8fUCqPzR2wK59qOpBvqIsObvpNuwR8sdCeuu2MZfmeqxAi3d41IHiynQohb6
eM0GygnE75S89eDzXsc+A+dqltW53yabQtGcoYZRpCO/r9lXRfJOeaya9aHWGKOT
Saf/MkNuZVbKnPcY5icmddlfw1JlM5drTLocjUY+CCp9NhgSFW2vdxKo2f8W3Rbh
M1wHd7G14Sdw0J2tT9nwTMW591AO8u4UWTeghy3axqRhAK27KoD18TGdtUWZGPEm
gXINSdhahMpO6gOIsYzftjsksZ9O+Uy1y/znYP0TKTny6sZCNGvAZI0a1vzBeFRB
OmRP5C6eSGjlz5yMcTWlTubT9pMhQA078Iodaa44NR8/WFT44w3GoJEZsdKzAh9u
7nzLenxaa/nFcuD2VzsXp11pOZ6L6zNPSgW2qYaFlUVZwYB05K1rQO1sy+5Xgsi4
7bZ2Tazn7DI9GoLVdjaBqFCg2wPMhr9Yyq94p6sif1OIZiBrcqsygnHNbvPsU2E1
edoIm+FFe7/3DR8f4m3C8sO5oYHKmS5VJBnKL8uXfJf2KtfRERjkZ3wgS1twvQWi
Jn98K3OTGWFNJk48uXTVqRXN+z9wYmpD+mKMSXNZZKJRiqPl2l1wVTC3AyVAQcHr
YQd9hSuan2gdLspOqoUt
=g++q
-----END PGP SIGNATURE-----

--Vs8imIC20X8526NW--
