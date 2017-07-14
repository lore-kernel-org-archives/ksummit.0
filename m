Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C2EBBBE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 16:20:36 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BBAA7151
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 16:20:35 +0000 (UTC)
Date: Fri, 14 Jul 2017 17:20:25 +0100
From: Mark Brown <broonie@sirena.org.uk>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20170714162025.liz3hmpedz2rfquq@sirena.org.uk>
References: <CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
	<20170629182044.GP21846@wotan.suse.de>
	<CAGXu5jL21gKAO1DxNHH-4x6H9jw1t84Z=Z8iCSDRmgcxh4TFrQ@mail.gmail.com>
	<20170630062717.534b06e9@canb.auug.org.au>
	<20170714040447.GT1528@mtr-leonro.local>
	<20170714095409.GF2269@kroah.com>
	<20170714102920.GY1528@mtr-leonro.local>
	<20170714141057.GC21743@lunn.ch>
	<20170714150550.ubtkwmd3wcx554m6@sirena.org.uk>
	<20170714155142.GF1528@mtr-leonro.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r2tryxqifvttpnyi"
Content-Disposition: inline
In-Reply-To: <20170714155142.GF1528@mtr-leonro.local>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Developing across
 multiple areas of the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--r2tryxqifvttpnyi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 14, 2017 at 06:51:42PM +0300, Leon Romanovsky wrote:
> On Fri, Jul 14, 2017 at 04:05:50PM +0100, Mark Brown wrote:

> > Trees can be added to kernelci, yes.  Another approach would be to work
> > out a workflow with the upstreams that makes this better, if they'd take
> > pull requests for example.

> Isn't the goal of this topic in maintainers summit? Improving workflows :)

It's also the goal here!

> So, my way to overcome my issues was to add "parallel" tree and to stop
> crying about "long queues".

So I guess what everyone is suggesting here is changing this from being
a parallel tree to a tree that's part of the normal workflow for this
code.

--r2tryxqifvttpnyi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllo70gACgkQJNaLcl1U
h9AG8wf/UJYFhWyWkWdJGd/+zyHYz0+dyIdTsZvmR/NmEWuRId34sEwaChxhPLun
YvrCYLbMeB8YuByUb5Af6SDGHXQAOPMnT1R0aIHjneNN0WvYWIvaWlr48kHLl0Cr
lxr+/xxa0UQZx6BcoIDsI0Vt105LouRHlb/o5Za2RAI0BumkNzXu8aldAD/qqQZy
PFz17dApnhXuYKVIZ1EFivxaw9zmGAG/LHVdxcQIpa/ct7pLbuY/TXeVvocohuPv
LiebZ0C5WvMXZ5D6V0X6P2dQLxy9KI5ylAQm2ZxX3R8NDq32PvAacJ4ZPrGFCxIk
KFDNOlvn4MxkyM3CzCD3tSU9UIprxw==
=6iHz
-----END PGP SIGNATURE-----

--r2tryxqifvttpnyi--
