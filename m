Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 35D06F25
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 10:04:58 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E7C8376D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 10:04:56 +0000 (UTC)
Date: Wed, 12 Sep 2018 11:04:51 +0100
From: Mark Brown <broonie@kernel.org>
To: Tony Lindgren <tony@atomide.com>
Message-ID: <20180912100451.GA6062@sirena.org.uk>
References: <20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
	<20180911232249.GL5659@atomide.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline
In-Reply-To: <20180911232249.GL5659@atomide.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 11, 2018 at 04:22:49PM -0700, Tony Lindgren wrote:

> Well what we're after is providing a trigger for people writing test
> scripts to test individual branches before they get merged into next.

> With the goal of trying to keep next usable constantly.

One issue here is that the systems to build and run tests aren't free -
some will be able to cope with scaling up but a lot wouldn't be able to
add many extra branches in. =20

> Establishing a branch naming standard like "-pre-next" would allow
> the scripts to test the various branches where available before
> they hit next and warn about issues.

Add enough delays in and someone will end up making a linux-next-next...

--lrZ03NoBR/3+SXJZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluY5MIACgkQJNaLcl1U
h9DiTwf9FMJf+qqo1+I5HFi/27uaHiT0P7qw/dk6hTyuHUMsKjG20volJNZGQeVn
YgZbBxhThniGrRCyHhYKCvW80gdHVeA7DlKVm+V0WAYidEyFsE00WqPc0pWwbO7P
cxpULsKUJIIrGRFYGh633DYcAREYl+xBir+zXE8Lw9ebpept2YDoDpLoQqCd/5Ya
9AnC2xT8nJQXVIsFF+99lCMF1fgroOFMno0wU7GrQ7QG2ojP/cIEQz+xY2AElUZv
KktFMxUHjoOc53hkjv+UMYu7ODOlvjW1SIxx4ANwyo3Lfbsq+ng23ws8DQ1oZ8rF
WYi5JLg+X7SDXLSZ6ncb8bsybOb3ig==
=VVrC
-----END PGP SIGNATURE-----

--lrZ03NoBR/3+SXJZ--
