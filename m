Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 076574D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 12:15:26 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 47AC620111
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 12:15:25 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mark Brown <broonie@sirena.org.uk>
Date: Wed, 14 May 2014 14:32:07 +0200
Message-ID: <2969644.G2RFXhV3FE@vostro.rjw.lan>
In-Reply-To: <20140514115745.GZ12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <1904209.2bUKgQ0eOo@vostro.rjw.lan>
	<20140514115745.GZ12304@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart21885769.6erGj0lQEJ";
	micalg="pgp-sha256"; protocol="application/pgp-signature"
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


--nextPart21885769.6erGj0lQEJ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Wednesday, May 14, 2014 12:57:45 PM Mark Brown wrote:
> On Wed, May 14, 2014 at 02:11:25PM +0200, Rafael J. Wysocki wrote:
> > On Monday, May 12, 2014 09:31:53 PM Mark Brown wrote:
> > > On Mon, May 12, 2014 at 10:27:14PM +0200, Laurent Pinchart wrote:
> 
> > > > That solves the probe time dependencies, but unfortunately not the runtime PM 
> > > > dependencies.
> 
> > > It also solves the system suspend dependencies.
> 
> > Well, I'm not sure about that.  How does it do that, exactly?
> 
> Since the core device probe is deferred until everything it depends on
> is ready it'll get pushed along the device list so that it appears after
> everything it needs and hence is suspended first.

Except for async suspend, that is?

Rafael

--nextPart21885769.6erGj0lQEJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAABCAAGBQJTc2JNAAoJEILEb/54YlRx+jQP/0rTn82tGn0HDqXbPg9PvM6D
p5b1CuDq31HTvv68pLkfGHjcuvzTmG//RH8u94QUP9k2Yyxo/7t5z4oR9x6d4ECW
E67kkwgMQkhVqT0BOUiZ6hudUe1zQ+8DROMraQDMTYzxlsoDwbXSyPBdZh5O9ECr
eqDaC9gukOtCzTZkzc9Zao6M0zkASwXLV+NZQmJMdp7xarwPXPWGFOFgEyLWoL1E
WXm4i0hGpE7JGfR5dvmiBMNjr5rlzGn03npy65SCi8vhHU7BhKj+OSzUjA03qGey
O90tc/yaxhTngVno4zmHv0JwrhtfC3kbXfZSJiC85K/f5nUrhFGyc7i71i28wsdE
Dpus0M8x85q7VZDm6QPa6pK6NTwfqHVez5YfBiCvFqEsZSCu1cqBsjnfvHgpu6MA
ylqjX3b2C/qrSUoH2XvylN5RIHKP4pkUOoETrJoNShLLWAN45FcVskASxBSgMtVF
PpKp9AU7Rveux4vCJ9v5dkIFoD0avhQ5wYECxT52ZfFKRU8eLjjwQ4EcwPWbL0f9
3V4CMEHGFDEJMLdO60c1MR5FEzj14e1WkBoTjGylMWYB43td0NzWljZxbUBFApvr
Jbx+9mVyFGnnSkrne/683//Ua7ig11JTYTLYXS/9z3XsSKKR3BoYLuSrCsXhGHOa
lYGI2LoTs6e0cTKsNLyo
=o0jS
-----END PGP SIGNATURE-----

--nextPart21885769.6erGj0lQEJ--
