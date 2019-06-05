Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6C4B92F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jun 2019 09:27:21 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F23B519B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jun 2019 09:27:20 +0000 (UTC)
Date: Wed, 5 Jun 2019 10:27:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20190605092717.GK2456@sirena.org.uk>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
	<20190603211004.GU12898@sasha-vm>
	<20190603221131.GE2456@sirena.org.uk>
	<6a90bf6c-e9a4-85eb-527c-c4bc3658e779@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aJFFgG5QZHt5jcrP"
Content-Disposition: inline
In-Reply-To: <6a90bf6c-e9a4-85eb-527c-c4bc3658e779@linuxfoundation.org>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--aJFFgG5QZHt5jcrP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 04, 2019 at 11:16:17AM -0600, Shuah Khan wrote:

> - Create a directory under our source tree for bugs. This way bugs
>   stay with the source and we manage them the same way we handle
>   non-runtime objects: Documenation, scripts etc. This can be flat
>   directory or have a sub-dir structure underneath.
>=20
>   ../bugs similar to ../Documentation

If bugs are tracked in the source tree doesn't that make it difficult
for people to update the bugs?

--aJFFgG5QZHt5jcrP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz3ivAACgkQJNaLcl1U
h9AefAf/bs5JYGUFrA1aqis27ge1m/nwrQ13hJItVscw39owDqIzu8EK5R2VQ9OB
wOWIc2v7hFy9GGL4m4xfvCxPTWg0L4vvcc7w3V4MuL0KgbEqp0C6EqztNP9+zmBN
ijxRtBZVFKBY6TQfGZUXq63LiQbXxrbW+UbqV522Wc53bb0qWK2bQgrFw+k29Quv
391aGJU0AB061eZIOxVlEJOt7yeR069VFObmddssSAYfVdRT5kCCCulvt9ZFviMU
XeuJJgoS1jQ1TgB0Rc7NU5Y9KkHZGOWn8oR04p59jmO2D6vlf9BtVk3ThDyNl/k8
a8eUQjKCRvl5tn6N6eW6FRJp33Rogw==
=yieP
-----END PGP SIGNATURE-----

--aJFFgG5QZHt5jcrP--
