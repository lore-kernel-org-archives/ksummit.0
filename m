Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 522BDA81
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 15:44:05 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6CC8F16A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 15:44:04 +0000 (UTC)
Message-ID: <1500047038.2853.16.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Leon Romanovsky <leon@kernel.org>, Andrew Lunn <andrew@lunn.ch>
Date: Fri, 14 Jul 2017 08:43:58 -0700
In-Reply-To: <20170714153544.GE1528@mtr-leonro.local>
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
	<20170714153544.GE1528@mtr-leonro.local>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Ci898XVEFxukLxgTc2zZ"
Mime-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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


--=-Ci898XVEFxukLxgTc2zZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2017-07-14 at 18:35 +0300, Leon Romanovsky wrote:
> On Fri, Jul 14, 2017 at 04:10:57PM +0200, Andrew Lunn wrote:
> >=20
> > >=20
> > > The difference in maintainers style between netdev and RDMA
> > > causes to have long queue
> > > (100+) of patches posted to the ML [2], which are not cross-
> > > checked in various CIs.
> >=20
> > It is possible to get 0-day to run against any arbitrary git tree,
> > if you ask nicely. If same is true for the kernel-ci project. So if
> > you are willing to do the merge work, you can get it tested.
>=20
> 0-day is checking my tree, so it is not the problem.
>=20
> I don't see how kernel-ci can help me, because RDMA requires special
> hardware to run it and it usually requires more than two endpoints
> (servers) connected together.
>=20
> My problem is related to changes in other trees for example netdev,
> which can break RDMA functionality.
>=20
> Technology wise, there are:
> 1. RoCE - RDMA over Converged Ethernet - netdev is below RDMA
> 2. IPoIB - IP over Infiniband - netdev is above RDMA
> 3. HFI-VNIC - Ethernet over OmniPath - netdev is above RDMA
> 4. iWARP - RDMA over IP networks
> e.t.c.

So I think your goal is to get your tree and the one above you (Doug's
tree) into linux-next without causing a mismerge nightmare?

I still didn't get why you can't change workflow to share commits? If
you can do that, linux-next can be based on both your tree and the one
above it. You can do this either by you sending pull requests or by you
basing on the upstream tree and rebasing when the patches are accepted
(rebase is very good at recognizing and discarding the same patch with
a different commit id).

James

--=-Ci898XVEFxukLxgTc2zZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJZaObCAAoJEAVr7HOZEZN4rywQAKvFlmq3aJ8F7R7uQOTyJA6b
SgEmFEXKJ0BvSyjC3aXBgOVT1GQwldhVR4M2NjG+5L+/NhW2NdvKaVQquCRR2I4e
yXhiQnTihBG3WtoBuTN7O5C0FQoMPTGml51NiT9Abvq89I1SDkVYWv5AzBYqGt3H
yIUwW9udWmLlFhFi4TiThnUke9M9Mnh5FCbhuaQW9IVdktqVIbfAJHNZYEjbpKlt
ub7HhXGAWDdG266tK6Dv6EIyPYewYVJ18dKWKTUdE9cBpailQS6QtsK+LfkzTzcl
PXD0ZPj1Ks3dYkLVYeKZCxjQUXYJXVvIDD4W53JuP0OpM1+vSYNeYZtCQuslqQ5s
vX85sYK8jry6FWCoH4tYCLz9RrJnsihrLrl3AsJ4JyaCHthWEZm73qy9uRfOnB3a
T2gZuF9PosO/tf08p7kAKy+Xea+/OmSprlmoPBvEzRX2tKDyUKkJBiAiRELQPYY1
zwROr2SgcDFkkU335h/ARTwiG7R9CNBDlPrqW6Ezp7pAjrrtwTYeg+JXl9jt97fa
BRri8klBlczrmf/F8fnggUHy35fzF+qU8YJE8mxNZQvuja58q/XQ+0tQk4g532aL
95UovE6kKVXEw0nc+KoYSnXiWXdSmKX68aDc4u5tfRb/Xw3ErILg+H3WfMfaUt4H
A+axysYgWFa3dudWNjL3
=dlHO
-----END PGP SIGNATURE-----

--=-Ci898XVEFxukLxgTc2zZ--
