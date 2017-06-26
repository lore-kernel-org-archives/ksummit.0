Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2E1FA710
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 10:55:00 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B61A7E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 10:54:59 +0000 (UTC)
Date: Mon, 26 Jun 2017 11:54:51 +0100
From: Mark Brown <broonie@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170626105451.tv4k7ib2g2kiknah@sirena.org.uk>
References: <20170625104850.GA24717@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="txfdyusjy33ddqb6"
Content-Disposition: inline
In-Reply-To: <20170625104850.GA24717@amd>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--txfdyusjy33ddqb6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jun 25, 2017 at 12:48:50PM +0200, Pavel Machek wrote:

> 2) How to handle GSM audio?

Do you have some more specific concern?  This already works basically
fine upstream, we happily support off-SoC audio paths.  The digital
configuration could do with being more flexible but it works and people
ship it.  It would be awfully nice to have some control/visibility of
the modem side but that's just a missing driver problem.

--txfdyusjy33ddqb6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllQ5/cACgkQJNaLcl1U
h9A4zQf/Xb+7Fr/U7RJXJhz7jYSdPOroTaVGEp8DX76VVbn+bPk+Jm03rL6G8VM7
4vy+8wy4cMbcR5bqjHftawMivMmbm7lNs+xzO4mtUZrLGF7yUCAArjgzoufZSTNo
GiaBdWcY0C+vvHD5K3H/EZgi4sYmV/KAnspjS/XxBYriMyJ+rh2VcgTHr2vAKYye
eqs5LRpw0S4b8eQbIuDYOCRidHH/zGwtGNb7IdOrN7YcMY9OUVJxbTIILDMpRh65
Wv80ctwbnhFRK/vi9v9eW1EiNoAgYxGMMOnf9xDt91L0TMw7PF7rbcK+pGsBwyeA
rPbcXt1YLf/zI/joPZa2SXlQeYYNxQ==
=yt2L
-----END PGP SIGNATURE-----

--txfdyusjy33ddqb6--
