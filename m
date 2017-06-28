Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5959F723
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 20:27:25 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C1CCB271
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 20:27:24 +0000 (UTC)
Date: Wed, 28 Jun 2017 22:27:22 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Sebastian Reichel <sre@kernel.org>
Message-ID: <20170628202722.GC18101@amd>
References: <20170626064947.GF23064@atomide.com> <20170626111207.GA11688@amd>
	<20170626114931.GG23064@atomide.com> <20170626131401.GA11980@amd>
	<20170626134904.GH23064@atomide.com> <20170626204932.GA19396@amd>
	<20170627071835.GJ23064@atomide.com>
	<20170627121455.tljtekx6bmzlezxa@earth> <20170627215727.GA5250@amd>
	<20170628160112.ip2ambkzlkkoz2ww@earth>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Bu8it7iiRSEf40bY"
Content-Disposition: inline
In-Reply-To: <20170628160112.ip2ambkzlkkoz2ww@earth>
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


--Bu8it7iiRSEf40bY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > Oh, another major piece is DSP coprocessor that is there. Unlike
> > graphics, we don't even know how support for it should like.
>=20
> https://www.kernel.org/doc/Documentation/remoteproc.txt
>=20
> config OMAP_REMOTEPROC
> 	tristate "OMAP remoteproc support"
> 	[...]
> 	help
> 	  Say y here to support OMAP's remote processors (dual M3
> 	  and DSP on OMAP4) via the remote processor framework.
>=20
> 	  Currently only supported on OMAP4.
>=20
> 	  Usually you want to say Y here, in order to enable multimedia
> 	  use-cases to run on your platform (multimedia codecs are
> 	  offloaded to remote DSP processors using this framework).
>=20
> 	  It's safe to say N here if you're not interested in multimedia
> 	  offloading or just want a bare minimum kernel.
>=20
> I have been told by some Nokia people (I do not remember who it
> was, possibly Sakari), that the DSP is not that powerful and any
> calculation should also be possible on CPU (wasting a bit of
> energy).

Ok, we probably don't care about DSP, but lets say we had really
fast DSP or really cared about power.

We'd need remoteproc. Sure. But that has no interface for userland,
right?

So we'd need to introduce interface for userland... fine.

And then we'd need cross-compilers for the DSP used. Ok.

And then we'd need to split mpg123 to CPU and DSP parts, and modify it
so that it can run the DSP parts using remoteproc, when available?

That starts to be ... complex, with changes all over the system :-(.

								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--Bu8it7iiRSEf40bY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllUESoACgkQMOfwapXb+vI+/QCcDKtO2dKKTCt9UPNEzn+jR+0N
bCMAoLORV4S/wEEh+KRT0w0FGFazZwxc
=ZSSU
-----END PGP SIGNATURE-----

--Bu8it7iiRSEf40bY--
