Return-Path: <broonie@sirena.org.uk>
Date: Sat, 9 Jul 2016 11:36:26 +0200
From: Mark Brown <broonie@kernel.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20160709093626.GA6247@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TjoDfNCFvpOf6g+g"
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--TjoDfNCFvpOf6g+g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 09, 2016 at 10:43:05AM +0200, Jiri Kosina wrote:

> If maintainers are overwhelmed by extra work needed for stable,=20
> "offloading to Greg" doesn't sound like a proper solution to me at all.=
=20
> "Fixing a maintainer workflow for that particular subsystem" (such as=20
> extending the group of maintainers) does.

I think one of the big things we're missing here is QA.  I don't
personally have the hardware that would allow me to test a huge chunk of
the code in my subsystems, I'm relying on things like kernelci.org for
the bulk of it.  There's some work going on on getting Greg's stable
queue tested more which will hopefully make things better but it's not
100% there yet.

There's also the volume of stable trees to consider here - we've got a
large number of stable trees which seem to be maintained in different
ways with different tooling.  One big advantage from my point of view
as a maintainer with the current model is that I don't have to figure
out which I care about or anything like that.

--TjoDfNCFvpOf6g+g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXgMWZAAoJECTWi3JdVIfQxZsH/AhSxGx0rJZaRf2aQC5A7ojt
9IRwa2HbAoZSgs1CB4ewRvduU4moRJ5O4crJ5yWcukJPsECwIRJTMNfP/PkRaLNv
g1hUBwJ+iczjxfvVSO7jZ64lMXN/1Q/ZuGo483IfvIkLQgR/LsE8kQQGZX1IwGjf
c/NQ93U2eUeKk7ptZ/tSBOvSXOqlHbpq7P2KGj0NB5cAYW7iqmBMkFDznlLfGe95
dklzfzGD8JGrKwtxfu0h7/3zwWnR+9hSrN7YKnwdgGVonJqEGqPa/Yd+yW7Wy1Py
/YhnkLFbhFAApXjcFCcfGnahe9vxibIwEh5o0kSzpppTHyFFZ7uPef/x90cj8qQ=
=CksC
-----END PGP SIGNATURE-----

--TjoDfNCFvpOf6g+g--
