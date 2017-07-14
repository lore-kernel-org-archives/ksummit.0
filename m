Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DFDA0B7E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 15:06:02 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 785DE3F9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 15:06:02 +0000 (UTC)
Date: Fri, 14 Jul 2017 16:05:50 +0100
From: Mark Brown <broonie@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20170714150550.ubtkwmd3wcx554m6@sirena.org.uk>
References: <CAGXu5jJ011-7JH7w4n0No=gon-jp4VTeN=0JPWaQsGh5zz79eA@mail.gmail.com>
	<1498758126.2834.70.camel@HansenPartnership.com>
	<CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
	<20170629182044.GP21846@wotan.suse.de>
	<CAGXu5jL21gKAO1DxNHH-4x6H9jw1t84Z=Z8iCSDRmgcxh4TFrQ@mail.gmail.com>
	<20170630062717.534b06e9@canb.auug.org.au>
	<20170714040447.GT1528@mtr-leonro.local>
	<20170714095409.GF2269@kroah.com>
	<20170714102920.GY1528@mtr-leonro.local>
	<20170714141057.GC21743@lunn.ch>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l576hjuqrd36a5ok"
Content-Disposition: inline
In-Reply-To: <20170714141057.GC21743@lunn.ch>
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


--l576hjuqrd36a5ok
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 14, 2017 at 04:10:57PM +0200, Andrew Lunn wrote:
> > The difference in maintainers style between netdev and RDMA causes to have long queue
> > (100+) of patches posted to the ML [2], which are not cross-checked in various CIs.

> It is possible to get 0-day to run against any arbitrary git tree, if
> you ask nicely. If same is true for the kernel-ci project. So if you
> are willing to do the merge work, you can get it tested.

Trees can be added to kernelci, yes.  Another approach would be to work
out a workflow with the upstreams that makes this better, if they'd take
pull requests for example.

--l576hjuqrd36a5ok
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllo3c0ACgkQJNaLcl1U
h9BYVAf+M8Suy3h6WMY4HroggdCI/TBhrIKWBGMuuvOzZvP9IHn4mtwKrXWNbvTN
bCKEAj6edw8029+Y0A51yq3qoI4ZmpbRc4Tok3aHb9fw3Ag1xOCyB3jYq9t40Xv+
8LSYzFVGt2mssd7ouGU3FFg/BH3Sb+jHc3auxBOyxH103MjE4w/+Kd1fmilFmrQ+
MeMM5ZK10Zqq98Yx58/95qn7IYTkAUnJ5flfRkgYAF5ubI/nKreqtOwvjyjJ1gvU
DdQTKHath1zvyMVoz56TV1uVg1cgTZlmo4GT5nvRLlffrF1B48PlwS+0qZAmxfPk
6OH//894Gtvq8Ec7P7gXsdQqGhisaw==
=iwvb
-----END PGP SIGNATURE-----

--l576hjuqrd36a5ok--
