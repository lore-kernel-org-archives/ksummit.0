Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E408BBB3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:40:32 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7D2E31BC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:40:32 +0000 (UTC)
Date: Tue, 7 Jul 2015 23:40:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Jiri Kosina <jkosina@suse.com>
Message-ID: <20150707224025.GJ11162@sirena.org.uk>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dZMKKfncsnDOeEps"
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
 infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--dZMKKfncsnDOeEps
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 07, 2015 at 10:42:49PM +0200, Jiri Kosina wrote:

> I personally would very welcome a facility that'd send out an e-mail if a=
=20
> new commit is pushed to a git.kernel.org repo branch (sort of what tip-bo=
t=20
> and akpm's scripts are doing these days) to automatically notify the patc=
h=20
> author that the patch has been merged and pushed out.

Those are useful, I know Greg has one and I just wrote one too.  I'm not
sure it needs to be on the server side though, they can also be done
=66rom the client which lets you try to fine tune things more readily.

--dZMKKfncsnDOeEps
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVnFVYAAoJECTWi3JdVIfQnWoH/06MvhMtGKnZ4583AMYRCtp7
G2ZodRzBIIqQuDfWNXZW9OpsaCVyQrMiQYy8Oo3ubVWNnjR6FDrWzXIaMucHcjpu
WW02T18R1oj+yhEWXCkc0AXdH92BNYLTe677aBvkuDJULS/fLYKrxS2ceW34jTVp
5HvSQivZ2geB+QQDwE7bngYK57tJ/xMOLwKvmAm2sP+Xo6kDfWf3IdVM8aKL5lyK
32zUaywUFsPtzG6sbRy5NgaAnpFeOMtis383jXiy87Dm+Dy7517aljg8ZijtitIw
wdKdzdgqSpPE72MjBiE3IIGSymrWWqSyKQVb8slPNmFifT8+GpSZhyfuikt/0rE=
=V2Da
-----END PGP SIGNATURE-----

--dZMKKfncsnDOeEps--
