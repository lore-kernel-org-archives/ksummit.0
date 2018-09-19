Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A154D904
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 06:27:37 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 13AC8F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Sep 2018 06:27:36 +0000 (UTC)
Date: Wed, 19 Sep 2018 16:27:31 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20180919162731.049e4618@canb.auug.org.au>
In-Reply-To: <20180913113919.GD8411@sirena.org.uk>
References: <20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
	<20180912162422.37d545ec@vmware.local.home>
	<20180913101955.3163ef05@canb.auug.org.au>
	<20180913113919.GD8411@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/PkvS_mz1/orMW15zpbw1AOM";
	protocol="application/pgp-signature"
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

--Sig_/PkvS_mz1/orMW15zpbw1AOM
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Mark,

On Thu, 13 Sep 2018 12:39:19 +0100 Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Sep 13, 2018 at 10:19:55AM +1000, Stephen Rothwell wrote:
> > On Wed, 12 Sep 2018 16:24:22 -0400 Steven Rostedt <rostedt@goodmis.org>=
 wrote: =20
>=20
> > > If a bot discovers a new failure in linux-next, do you look to see
> > > which tree caused it? And then create a new linux-next without that
> > > tree? =20
>=20
> > Sometimes a bot will actually identify the actual commit and sometimes
> > not.  Sometimes I don't even see the notifications :-( =20
>=20
> Do you want to see these sent to you directly as a matter of course
> (rather than just if they're particularly disruptive)?  I don't CC you
> on stuff normally because I figure it'd be too noisy.

I do get your summaries each evening on the linux-next list, though,
right?  Certainly I guess I should know about disruptive problems.

--=20
Cheers,
Stephen Rothwell

--Sig_/PkvS_mz1/orMW15zpbw1AOM
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAluh7FMACgkQAVBC80lX
0Gwg8gf9EKaHvRxIweeBz4GGUtvZnuve9DbEj9AzYNfVZcqhpjYNPHg2u6u7rWZi
I8XZ5sPX1RuXLKxbDKS3OA9NH1Bdf949SoGcfg9AX5d/dHMVS5zft+20xfPwXeaH
mjacDeH2RHUlnVLzWXYXJ9qvWN1O/X2fyHvS0F9d9LaGhZUOSJ6kG6fuL/PGiNDy
MrDhRq5AeWr/aSi8kt5HnsXUJzRfkKacjgR6N9RrofeOptA7zzR3UhQaPbFEzR1M
RmMMaVtGS5b66sY90kynQaM8pzKtaYFRw0ytswz8kqCOXkY22GgUsfCcGi/xI0YJ
ST43YgNAIZXmm5Z/Xyps3ktzRcFqXQ==
=WHyf
-----END PGP SIGNATURE-----

--Sig_/PkvS_mz1/orMW15zpbw1AOM--
