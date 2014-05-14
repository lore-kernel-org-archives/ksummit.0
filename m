Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 44D542FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 11:58:01 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A32491FD44
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 11:58:00 +0000 (UTC)
Date: Wed, 14 May 2014 12:57:45 +0100
From: Mark Brown <broonie@sirena.org.uk>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140514115745.GZ12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <1890814.sS5FutD9xo@avalon>
	<20140512203153.GH12304@sirena.org.uk>
	<1904209.2bUKgQ0eOo@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="MtuVShbwdGyfByg+"
Content-Disposition: inline
In-Reply-To: <1904209.2bUKgQ0eOo@vostro.rjw.lan>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--MtuVShbwdGyfByg+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 14, 2014 at 02:11:25PM +0200, Rafael J. Wysocki wrote:
> On Monday, May 12, 2014 09:31:53 PM Mark Brown wrote:
> > On Mon, May 12, 2014 at 10:27:14PM +0200, Laurent Pinchart wrote:

> > > That solves the probe time dependencies, but unfortunately not the ru=
ntime PM=20
> > > dependencies.

> > It also solves the system suspend dependencies.

> Well, I'm not sure about that.  How does it do that, exactly?

Since the core device probe is deferred until everything it depends on
is ready it'll get pushed along the device list so that it appears after
everything it needs and hence is suspended first.

--MtuVShbwdGyfByg+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTc1o2AAoJELSic+t+oim92T0P/jgq3nPJAPRxDZw8gdJUAy4p
71gQk+hJfZICCi6zAIhjKVfnJJOSBpAxzxCqqxuTLMgv3dpuvNvPdAK4xWY1pe9G
4vYeIsxlOoNGKvLTMORNf1h5TjchFEMHiNiiI2WJx6BxmfBPe2Yx9mY/Uf5oQMiF
Le/vYIrKpx5UBTdeobfnSWlkx7rC179G7XAvKclP3EOJ6h0m7EzswZK6wEMXZmk5
oBpn9B9mSDgcrC471OqBZIfmCDzha5g9wH1T43jvBZgjU/6i92Hc6nr21miC4Gq1
ckdBCP1b24H4TkPEZGCqet2ziHpCC8crx/ar0XH+BQt8VIEdD+2N3+2G4p3GWWLE
EWQrG6zCu/2fsMSjTfIK/rSIzKRD5MTqbPSEnVGoT0G/YekswtNYcEuDNH6SPPUC
fFPxfrDibWGA5x7XVitturNE2NzMy/++c8bMzGHZ2FNSIuiieWKVy91XzRA46wrN
wadQu/oMar4VlcCwB82CuuFDJ4MXwZDcTZQarpjH3JuBy38nAYGRARUwS1bPeYyj
6bt4jJXKAt7klvvkdRRhFkYRl5weueHoghK2KNcV3DBKCCAIzTeUsQ+aXRpirKTw
osOnW1EBdtAyCSyYobMfo/LFdrH8ai06oUrHyNiN9bC3YkFNRHAAd6ULJWcz5bUt
xd21YLbYdpeZ9MCpYdSU
=wmNP
-----END PGP SIGNATURE-----

--MtuVShbwdGyfByg+--
