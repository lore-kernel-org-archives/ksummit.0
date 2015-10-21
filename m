Return-Path: <broonie@sirena.org.uk>
Date: Wed, 21 Oct 2015 17:09:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20151021160907.GM32054@sirena.org.uk>
References: <20151020220328.GA21941@thunk.org>
	<CAOesGMiZrhXk4W=VScQ9ctnSqzCt6ba4QkPKAeACdaBRhDEjbw@mail.gmail.com>
	<20151021145626.GD2165@thunk.org> <5627AD56.7050500@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lGa3FpvTyf1CgKg0"
Content-Disposition: inline
In-Reply-To: <5627AD56.7050500@roeck-us.net>
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] Kernel Summit Agenda -- 2nd draft
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--lGa3FpvTyf1CgKg0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 21, 2015 at 08:20:54AM -0700, Guenter Roeck wrote:

> Number of build and runtime breakages in -next is a bit high, and fixes are
> sometimes slow to roll in. At least in part this is because those responsible
> for breakages are not informed, but I have also seen problems which were
> known for weeks to propagate into mainline before they got fixed, even if
> the culprit was informed. This could use some improvement, though I am not
> really sure how we could get there. Make more noise ?

Noise is probably a large part of it, having a human following up about
issues seems to help a lot.

I've seen some active resistance to pushing fixes to mainline without
lengthy soaks in -next in a very rules based fashion which isn't super
awesome when it takes out other testing due to the breakage.  As the
test coverage improves this is going to be getting to be more and more
of an issue as failures to build or boot will cause gaps in other
testing.

--lGa3FpvTyf1CgKg0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWJ7ifAAoJECTWi3JdVIfQOswIAITFxtHco3M0dxMRPxJacrwl
x+fMJuEz1IdKZ48U0tGyTMn58vfbwrmeqiu+LQVFBOyNVWk9quJxAEYIk61erRn1
vCHGKFJGE9iCj4nfQ7qAT9gBug3xJHfVfwoTgaFzDki5qvj7N3QGBpnkLknkop6d
Q51FEXtekBBaxvTv0HfsCo4OFf/M3wWbuJi+Au92P46XYu97wdPIedrR0xHm08Sv
8e4DmafZT/m0UfQrnmJZqTjEUBaLwVRf+qUCaVhSN0WG64M9TPuZkmLKlViy/J1L
yFJtwptWx4fpF4BQcS324YGBkHl5pVyLy6YB0jR6gU4zIavbUjfzzbq2zzGA8dw=
=H5YN
-----END PGP SIGNATURE-----

--lGa3FpvTyf1CgKg0--
