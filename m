Return-Path: <broonie@sirena.org.uk>
Date: Sat, 9 Jul 2016 11:12:04 +0200
From: Mark Brown <broonie@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20160709091204.GZ6247@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <2544945.WExZRG40u7@vostro.rjw.lan>
	<20160709000648.GG28589@dtor-ws>
	<alpine.LNX.2.00.1607091035150.24757@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="AXeJgIDWTp8Ir+uz"
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1607091035150.24757@cbobk.fhfr.pm>
Cc: ksummit-discuss@lists.linux-foundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--AXeJgIDWTp8Ir+uz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 09, 2016 at 10:37:12AM +0200, Jiri Kosina wrote:
> On Fri, 8 Jul 2016, Dmitry Torokhov wrote:

> > Also, do we have many changes that go to stable without maintainers=20
> > actually adding cc: stable annotation in mainline?

> I have a feeling (but it's not backed up by any proper statistics) that w=
e=20
> do have quite a high number of such patches.

> Yes, sure, the maintainer is later CCed on the patch in the -stable queue=
=20
> review patchbomb, but that's unfortunately in practice not the same thing=
=20
> as if he actually actively considered the patch for inclusion himself.

I'd expect to be copied in on any requests to add stable patches if
they're not coming from a commit I made, not just on the patchbomb.  I
do agree that the patchbombs are sufficiently noisy to not be useful.

--AXeJgIDWTp8Ir+uz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXgL/gAAoJECTWi3JdVIfQ0C4IAIZ+Rmeau93DdiJoFQITPWSe
DOZraglu3KpMatJGWgExFLLbirmMerxy1QYJqbcwjh9u/SJm0oConbdNDPgwuDP+
NbzcwG7seiWe5BR6POHjt1TIj+KwxCKK8aDkdv4a9TE4OKLHIDoZSZAyxCk/JDGf
glS31XSSgImWsdmFsXRk/t222XeJ5CoddPjpBbS5VvxpvzUVtc4eS/zHopoGmxEN
XIKyLTd0kwN+DpsFWIqbI2csnt6S5TcwnnEjFUTlTplcHqH0Nz8T8q4aSUyoBO91
tKoxlDsm0dLWmYoQrkIyNeCc/QHvs79VimLN5zQXUFCeKqtNIZYNmE1OXtisEiE=
=Zmi1
-----END PGP SIGNATURE-----

--AXeJgIDWTp8Ir+uz--
