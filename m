Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 73818B78
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 15:35:48 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 27FC1133
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 15:35:48 +0000 (UTC)
Date: Fri, 14 Jul 2017 18:35:44 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20170714153544.GE1528@mtr-leonro.local>
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
	protocol="application/pgp-signature"; boundary="q7xFpbLMA4v1i4j3"
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


--q7xFpbLMA4v1i4j3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 14, 2017 at 04:10:57PM +0200, Andrew Lunn wrote:
> > The difference in maintainers style between netdev and RDMA causes to have long queue
> > (100+) of patches posted to the ML [2], which are not cross-checked in various CIs.
>
> It is possible to get 0-day to run against any arbitrary git tree, if
> you ask nicely. If same is true for the kernel-ci project. So if you
> are willing to do the merge work, you can get it tested.

0-day is checking my tree, so it is not the problem.

I don't see how kernel-ci can help me, because RDMA requires special
hardware to run it and it usually requires more than two endpoints (servers)
connected together.

My problem is related to changes in other trees for example netdev, which
can break RDMA functionality.

Technology wise, there are:
1. RoCE - RDMA over Converged Ethernet - netdev is below RDMA
2. IPoIB - IP over Infiniband - netdev is above RDMA
3. HFI-VNIC - Ethernet over OmniPath - netdev is above RDMA
4. iWARP - RDMA over IP networks
e.t.c.

>
>     Andrew

--q7xFpbLMA4v1i4j3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAllo5NAACgkQ5GN7iDZy
WKcLbA/8DwxBgfFg7U4y/MgLNX7IQUIv4fXwUxBzWNnCevFVEbFRWnPm80yImVc7
KOwhN0U1J339d2Yh1mHNR3bd6uWyckllftK4NISc6rmkYZxk6FPCedNKX0cklqIz
c9Yzg9vW6a0Px518WgD7DQmm0UoScWcJwu5MVdtSEKdbW6Vvo8Kcuu41NqLbd98/
9m70s/2L+F7vdoWqNR/9NS33XdsImzrn6xih1+K/OvNdyNKSiPAJoVoHoMZ4glhE
+ZvdygxAXmYKE4/qDRYufW83Q/jvEPQkasy/PiyJm/IGheC5jq5irn8cCTUtKFSU
ABfkg4FgVI1DDEkPG2dDruHRW3Tg4BJ6CCTfhkweCMmJ2W7YZ4YY8XM+YvGt75tJ
bMLzc8N/AKmlw/Xu4gZKblFplOlPnsB6bXoOYA6OdkzbFjLxtL2+6ZUboF4Svmg1
9aFbZUntv4XzN3l/SqdGhgoW8oKc/ekYXLzobntSDmAzHTAdGf5GzTRt7Npb9lrs
3Z90Bpo4UgS2Bn81GF/Ri4zjJYkJ7DDDUPNszUZYMmGdaYChRxnCYt6gO3Uc6SlY
MBKdr6rtqsIdYh3Hju4QEl/6sKn06M1hKnOF3i5l19LTvMEI+RnhzB23BawnaxeR
hUieB+8ZJZwyzRM0FXQf1kO/D5mD80aB92H2K0HN57SHmHWectk=
=4HHX
-----END PGP SIGNATURE-----

--q7xFpbLMA4v1i4j3--
