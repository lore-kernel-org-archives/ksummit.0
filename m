Return-Path: <vinod.koul@intel.com>
Date: Sun, 10 Jul 2016 21:52:04 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160710162203.GA9681@localhost>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline
In-Reply-To: <20160709093626.GA6247@sirena.org.uk>
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


--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 09, 2016 at 11:36:26AM +0200, Mark Brown wrote:
> On Sat, Jul 09, 2016 at 10:43:05AM +0200, Jiri Kosina wrote:
>=20
> > If maintainers are overwhelmed by extra work needed for stable,=20
> > "offloading to Greg" doesn't sound like a proper solution to me at all.=
=20
> > "Fixing a maintainer workflow for that particular subsystem" (such as=
=20
> > extending the group of maintainers) does.
>=20
> I think one of the big things we're missing here is QA.  I don't
> personally have the hardware that would allow me to test a huge chunk of
> the code in my subsystems, I'm relying on things like kernelci.org for
> the bulk of it.  There's some work going on on getting Greg's stable
> queue tested more which will hopefully make things better but it's not
> 100% there yet.

For patch merge, the expectation is that it is tested against upstream.
For stable, should we also mandate that it be verified against the stable
tree(s) as well, or if Maintainer feels it is stable material then we
can ask Submitters to test before CCing stable...

> There's also the volume of stable trees to consider here - we've got a
> large number of stable trees which seem to be maintained in different
> ways with different tooling.  One big advantage from my point of view
> as a maintainer with the current model is that I don't have to figure
> out which I care about or anything like that.

Yeah that also an issue...

--=20
~Vinod

--fdj2RfSjLxBAspz7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJXgnYqAAoJEHwUBw8lI4NHVBsQAMTNpRNlPkFafBvEQxGt48d6
+gQR2GnQGurrUgZu0c4t5MszdKWbbQPQLM8j1JUu9oca6L8KSpZ9sA15g+AmZ2Hi
B2iQRNNl2a5peE8MusY2y7/s+CajnAGnKJArLxXvmSSvMOGL9NT7aAC+4zlmply1
bAVvJcEY15w0jwNERMYkq1RUpnVEVjwaSSLRNCqLX4U/wMns2hUYqCDngQ4lx0ro
1hXpPpECQsPOn5R1CuVveeBPDaFTNJ6qFPB5SVhjmYW4QBCZUPf+Wo5WGtNN0o38
RX9MIq7XAIn7COFt1qbo+/hfuYKu1+jO0sAlBUF5S0iZ+2ayVQ1Mek+R0Q0yY2ga
xUvREhqB6z91NV3CkXB5nR8OrsN2R3gvAvlIsKWjFgOa2T3RA0pg4tgdq0BZu3a6
kgpaD4P7R2HrC614RaggPvVMXAhIUBvQWsJjLSBFKblj2zvMQSSf7KVoYvtR+h1D
38qlpIx7nhm+OBGhIgrgDkyuccXWnnhEo1Oew/+TbmB/VEsYHvskD4S6IUC95/eM
HGAgqA525MKaY0PuPmJ57VVLKiD+dZ0Lr8HTYPUZgAnUrHxwyEb5kp53S8o7+pnt
x9/ic35YqhFVqj4eEAKYHIYNw+sNa1kvsyWHRY+T6ypiQYYIRehUWn43YrmxzMkc
4HjmMsid+1o5RjEu+QWX
=x5+j
-----END PGP SIGNATURE-----

--fdj2RfSjLxBAspz7--
