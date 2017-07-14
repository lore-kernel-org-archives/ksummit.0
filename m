Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6F2F2BE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 16:08:45 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E60A8FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 16:08:44 +0000 (UTC)
Date: Fri, 14 Jul 2017 19:08:41 +0300
From: Leon Romanovsky <leon@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20170714160841.GG1528@mtr-leonro.local>
References: <CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
	<20170629182044.GP21846@wotan.suse.de>
	<CAGXu5jL21gKAO1DxNHH-4x6H9jw1t84Z=Z8iCSDRmgcxh4TFrQ@mail.gmail.com>
	<20170630062717.534b06e9@canb.auug.org.au>
	<20170714040447.GT1528@mtr-leonro.local>
	<20170714095409.GF2269@kroah.com>
	<20170714102920.GY1528@mtr-leonro.local>
	<20170714141057.GC21743@lunn.ch>
	<20170714153544.GE1528@mtr-leonro.local>
	<1500047038.2853.16.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Cf4FSmGpny4pfRGM"
Content-Disposition: inline
In-Reply-To: <1500047038.2853.16.camel@HansenPartnership.com>
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


--Cf4FSmGpny4pfRGM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 14, 2017 at 08:43:58AM -0700, James Bottomley wrote:
> On Fri, 2017-07-14 at 18:35 +0300, Leon Romanovsky wrote:
> > On Fri, Jul 14, 2017 at 04:10:57PM +0200, Andrew Lunn wrote:
> > >
> > > >
> > > > The difference in maintainers style between netdev and RDMA
> > > > causes to have long queue
> > > > (100+) of patches posted to the ML [2], which are not cross-
> > > > checked in various CIs.
> > >
> > > It is possible to get 0-day to run against any arbitrary git tree,
> > > if you ask nicely. If same is true for the kernel-ci project. So if
> > > you are willing to do the merge work, you can get it tested.
> >
> > 0-day is checking my tree, so it is not the problem.
> >
> > I don't see how kernel-ci can help me, because RDMA requires special
> > hardware to run it and it usually requires more than two endpoints
> > (servers) connected together.
> >
> > My problem is related to changes in other trees for example netdev,
> > which can break RDMA functionality.
> >
> > Technology wise, there are:
> > 1. RoCE - RDMA over Converged Ethernet - netdev is below RDMA
> > 2. IPoIB - IP over Infiniband - netdev is above RDMA
> > 3. HFI-VNIC - Ethernet over OmniPath - netdev is above RDMA
> > 4. iWARP - RDMA over IP networks
> > e.t.c.
>
> So I think your goal is to get your tree and the one above you (Doug's
> tree) into linux-next without causing a mismerge nightmare?

Yeah, exactly, I acknowledge Doug's work and just want to be sure that
all other tress are not breaking our technology and want to see it as soon as
possible.

In regards, of my submissions, I'm pretty confident with it. The patches are
backed by verification teams and don't got public without approval.

>
> I still didn't get why you can't change workflow to share commits? If
> you can do that, linux-next can be based on both your tree and the one
> above it. You can do this either by you sending pull requests or by you
> basing on the upstream tree and rebasing when the patches are accepted
> (rebase is very good at recognizing and discarding the same patch with
> a different commit id).

1. I would like to send pull requests, but It doesn't depend on me to honor
or not pull request.
2. In my early days, I tried to base on upstream and rebase, but it caused
to emails from Stephen [2], maybe I need to try it again.

[1] http://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1302627.html

>
> James



--Cf4FSmGpny4pfRGM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAllo7IgACgkQ5GN7iDZy
WKf+kRAAvK+6FeXGl4BUqTZe/oGAWLdbyqkk4sWxiwFpyYzkvEyLKLcXgUxGSva8
StJDWxfuhsFQasgUhR02pzqqllPA30SSlaAETI4033/q8xmj3wcjSdH6n5IIZtsv
gHkh+iebJRdgzIbsU+gdV/7JQ0QbVBzYl5CBDcslaz6cE0wLWGrYqQkN2r9oin7i
fY38fia+clo2+g6f1f7ZjXxIiUhNGYkMpJVuEI7DvHpaduXkPsgZanSCUUoX4tjY
znfQ70OLkl3275GiwFjliybuSnSk4ordznuvLxsbQIRbHhgRQLgCUuVdhpU6Pls+
HRKcyV7vicEBDFy33Hd8l4zfAGDutZ8TzQ8OYFrLf1s1+dOnxLfgnX9zwx5qyKA7
99Xfjb16KqJMY1jtztPehzxepXz7SLYJKRUx2fL/mLXMyEJxSyrr0OADXoOyzsSY
09l1we5w2D+CcVkwvhCuDxnhEGh65MhA/uWn9HROXm2EMY8VBlmu28glhGtvwiCp
RnZkH4T7hF9TXItoHQ+9T0EvFi0NNZgnICoV95YH9U/GCDmNyhG6Fl05jpaE6rET
o+s5XijuHh/DR+blGtwVozKSiXbWYIkRdmBlMa2Z8UeHp91wVPfLln4QhDirvufZ
BAtgFGbFl5WzVEIlfeSSiPw9jAzSdzA0u3AT22rbv3avEWlq93o=
=neLv
-----END PGP SIGNATURE-----

--Cf4FSmGpny4pfRGM--
