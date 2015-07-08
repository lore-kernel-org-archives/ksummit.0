Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16CE1BA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 09:35:23 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E01A0EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 09:35:21 +0000 (UTC)
Date: Wed, 8 Jul 2015 10:35:11 +0100
From: Mark Brown <broonie@kernel.org>
To: Jiri Kosina <jkosina@suse.com>
Message-ID: <20150708093511.GL11162@sirena.org.uk>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
	<20150707225223.GG12491@dtor-ws> <20150708021619.GC3102@kroah.com>
	<alpine.LNX.2.00.1507080957360.10183@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eoIDHIhs9vfKIXA8"
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1507080957360.10183@pobox.suse.cz>
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


--eoIDHIhs9vfKIXA8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 08, 2015 at 10:02:36AM +0200, Jiri Kosina wrote:

> The "everybody has his home-brew hacked-up script" model is just=20
> unnecessary duplication of work a brings potential for unnecessary bugs.

I think the only barrier here is someone writing some tooling that is
sufficiently useful and generic enough to work for people.  I know I
wrote my scripts mainly because none of the scripts I could find tie in
with my workflow (mainly around figuring out which branches in my local
tree correspond to branches on the server and syncing them up).  If
there'd been something I could just pick up I'd have happily done so.

> This would be caught immediately if it's properly maintained "project".

Or alternatively would allow people to quickly attack a large number of
developers :)

--eoIDHIhs9vfKIXA8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVnO7OAAoJECTWi3JdVIfQdMQH/jhSTaTSY5YaOT5X0BKe/YMh
4//h+CYDNaLktUu9zqjz+IFPy2YVs8c/FzLt5P0ftw0eI78gsUNtom4CIKeSKmxS
DE5JO9XVgJ/XsOps8foZrFJZkKRC/yPc/BRN2ExEYv5xZcQ/N/mEW81SJJ8KIh8X
0CUko54Ds0/icJbs/THbQILP2mHooW0GFCStBNbb8vGQFaUzFfNUscLoPwO036Af
jrOS0M5FnmhcU8hBUGzeKPV4Kn40gOrXkmBiuN35q4RI5XS2CyK7/Nj/11bH/t1v
rytVzfna9HwUr5dGePxpCfGjlRocZmsSU2OcNPUOajPw+uwFDHt4ZQJUjLjVxyY=
=IBXQ
-----END PGP SIGNATURE-----

--eoIDHIhs9vfKIXA8--
