Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C7684B2F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 15:51:46 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 66DF0133
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jul 2017 15:51:46 +0000 (UTC)
Date: Fri, 14 Jul 2017 18:51:42 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20170714155142.GF1528@mtr-leonro.local>
References: <1498758126.2834.70.camel@HansenPartnership.com>
	<CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
	<20170629182044.GP21846@wotan.suse.de>
	<CAGXu5jL21gKAO1DxNHH-4x6H9jw1t84Z=Z8iCSDRmgcxh4TFrQ@mail.gmail.com>
	<20170630062717.534b06e9@canb.auug.org.au>
	<20170714040447.GT1528@mtr-leonro.local>
	<20170714095409.GF2269@kroah.com>
	<20170714102920.GY1528@mtr-leonro.local>
	<20170714141057.GC21743@lunn.ch>
	<20170714150550.ubtkwmd3wcx554m6@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bXVaen7Op4LYXSUn"
Content-Disposition: inline
In-Reply-To: <20170714150550.ubtkwmd3wcx554m6@sirena.org.uk>
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


--bXVaen7Op4LYXSUn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 14, 2017 at 04:05:50PM +0100, Mark Brown wrote:
> On Fri, Jul 14, 2017 at 04:10:57PM +0200, Andrew Lunn wrote:
> > > The difference in maintainers style between netdev and RDMA causes to have long queue
> > > (100+) of patches posted to the ML [2], which are not cross-checked in various CIs.
>
> > It is possible to get 0-day to run against any arbitrary git tree, if
> > you ask nicely. If same is true for the kernel-ci project. So if you
> > are willing to do the merge work, you can get it tested.
>
> Trees can be added to kernelci, yes.  Another approach would be to work
> out a workflow with the upstreams that makes this better, if they'd take
> pull requests for example.

Isn't the goal of this topic in maintainers summit? Improving workflows :)

So, my way to overcome my issues was to add "parallel" tree and to stop
crying about "long queues".

Thanks

--bXVaen7Op4LYXSUn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAllo6I4ACgkQ5GN7iDZy
WKet+Q//dC7RujKQetYBpeREme3Aa/qJwvkqzWoqc0FznyfcNUBi8/yCulF45I6c
ZBiARHhIjfLhRwq/HCgDC9oj1ATfS7yTQHsg0szm/R3oYmJsNo1ZNa9c+WC3YaLG
2f42Kj2xFoCBNWWFGtLHBlnnWaVinoDM0OymN/vafwLATkf+5l6ncw9gC2hDGzDT
kOG/He95fOITg+LPhvdYfdn+NZWDFouYakosIR8yYlzmQzuWGaaYXxB24m4ywnv9
Fp60+ksBZkSZtidC4n6frASNAM6q62zsR2JrKnQ9itHRogfZWZDT2Yfjx3JtEZoQ
/QEeUv0JtAiLKcHBKCluJCUkx4AUgG7wIsjRZyyzKSNw1kOHkHoLN0FbznngT2T4
v+Ugj4smL2AkoWWLH+aO4RsRDXlsHMUkEz+gTbac/927yxL15PQaQcw3T2oWI6dl
HF045JliXrRzHoyS/5AzPSiN/sSFOHr6/F2FDRuO/X3v0KJBNCcb4pjGQRwn7u3g
sYE6gLy9AO0i5/yUHcVXzNsjwRgymZ1ZhlwY0TXoziyEE4u/spqPZRF/B5qQ1Rie
Th2kGDf6xDpDNsTJ2n2/D0j/0blzoVDcCXhyrYuPOXgxC7RkF/t3cXPQjUzIbaUE
1ktWVCUU++fz+yZB8Xw2XU0TrTMUYHcbZCGMQhLsv1gbxZIq26k=
=CjbH
-----END PGP SIGNATURE-----

--bXVaen7Op4LYXSUn--
