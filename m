Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6889DCD9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 13:47:23 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EDED471C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 13:47:22 +0000 (UTC)
Date: Mon, 10 Sep 2018 14:47:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180910134719.GE5856@sirena.org.uk>
References: <9fb15d7c-c59f-ee21-9c30-6d81d53a1456@redhat.com>
	<20180907160945.GI16300@sasha-vm>
	<20180907202328.GE25756@kroah.com>
	<20180907211341.GJ16300@sasha-vm>
	<CA+55aFyAWowFVi_UOkoJSfFb30Djk7JxRi4QFv7oJgpRKJxK0A@mail.gmail.com>
	<20180907224346.GA21546@roeck-us.net>
	<CA+55aFwqvy-NVg73RX-k0WNBU5FOyBFeOsBTbOr2N5egk6v_Mw@mail.gmail.com>
	<20180907225744.GL16300@sasha-vm>
	<20180908163351.GD11120@kroah.com>
	<23ec78f4-e038-2492-5b74-60adde97d5bc@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VUDLurXRWRKrGuMn"
Content-Disposition: inline
In-Reply-To: <23ec78f4-e038-2492-5b74-60adde97d5bc@roeck-us.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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


--VUDLurXRWRKrGuMn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Sep 08, 2018 at 11:35:54AM -0700, Guenter Roeck wrote:

> On the other side, adding networking tests and some basic virtual/network
> file system tests to the existing test suites would have caught several
> of the recent regressions. Not all of them, for sure, but at least some.
> If I had to choose one improvement, doing that would be my preference.

And also using more of the testsuites which we have but aren't widely
deployed outside of the subsystem maintainers/developers - we have a
bunch of things, especially in graphics and storage related areas but
they're not joined up with any of the stable testing stuff yet as far as
I know.

--VUDLurXRWRKrGuMn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluWdeYACgkQJNaLcl1U
h9DmDAgAgOAzjZPGqEpmj/s9Qp5qwdZBRMAQRgg8HyYZ4by9fTp48ibDGkfPYKvH
ijU3/DkSfrCIEGy+OM9JBJ2lJIWFskOBfRUo/KIFc2lndN4O+75MSCtbY5O/+tX/
U8B+f8igmeVXXBZtKuDLncUCZtpc7+Ukc+xnB6q2QV7ixzPU5KLN+Qhi8rm9YruZ
5tOS8QEu2uGZ+9KaQNVdOhkneIUyBW89b01lmnaZvXQM7pGKZkf/Msw9baC8w3xG
9FVV65q58aepbvgSPnvPh5AGihBNeZG/snVMxdy0CrIyD45cJVkdnYfy6RNBFVcA
A2zu/6WuMfvKlKsglRw8UerahQwOzw==
=AvnS
-----END PGP SIGNATURE-----

--VUDLurXRWRKrGuMn--
