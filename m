Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B9E4982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 10:43:42 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 73A67AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 10:43:41 +0000 (UTC)
Date: Wed, 8 Jul 2015 11:43:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150708104322.GO11162@sirena.org.uk>
References: <20150707092434.GE11162@sirena.org.uk>
	<CACVxJT8Ae3t9x=jF-xy6NunqZCbgOoaNxy9AqOxuDg8Dx=Tk6g@mail.gmail.com>
	<20150707131411.GI2887@sirena.org.uk>
	<20150707144725.6a19727f@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="H/P/fp31Su+ob3Cg"
Content-Disposition: inline
In-Reply-To: <20150707144725.6a19727f@gandalf.local.home>
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--H/P/fp31Su+ob3Cg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 07, 2015 at 02:47:25PM -0400, Steven Rostedt wrote:
> Mark Brown <broonie@sirena.org.uk> wrote:

> > Perhaps, perhaps not - it's not an unequivocal thing either way.  The
> > more barriers there are to enabling things the more likely it is that
> > people just won't bother in the first place (or that they'll run into
> > somme problem and give up before they get things working) and it's not
> > clear that having to figure these things out is always a good use of
> > people's time.

> The testing/selftests tests should have three results: PASS, FAIL,
> UNSUPPORTED. The UNSUPPORTED is what should be returned if the kernel
> configuration doesn't have the needed features configured. For example,
> if you run the ftrace selftests without function tracing enabled, all
> the tests that test the function tracer return UNSUPPORTED.

That's roughly what they're supposed to be doing now (I'd need to go
check exactly what happens in the unsupported case).

> Perhaps we should have a central location that each test needs to add
> the required configuration for it to be properly tested. Then if users
> want to test various subsystems, they would look in this location for
> the proper configs (be it a directory that has files of the tests they
> represent, and contain the configs needed). Then there should be no
> real barrier for people to run these tests.

Right, this is what I'm suggesting roughly - make the configurations
required to run tests easier to pick up.

--H/P/fp31Su+ob3Cg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVnP7KAAoJECTWi3JdVIfQb0oH/0gFsJ7JdTGJJBQS1fSwvfVr
6mUOs5faPFkxtLOf3M+zRmbh5aR32TzVLHobe/na1dCeBEfQVoqDX5mKSQKuyqfC
UsHF/B2DC0KFSPdoxUPcXVVPS8p5I6DNplAhmoS/0bqx2xDyE6glDKEJGxroUsGa
vkyg28+TjQlkEuR70an926Hml2IGtxSObdVDqJDn1BDyhVduMICj9Mbupmm1SokK
lme4+iL9SX8BXynAq0XerqcwO3katogbSQcTGrKWvnV3andJyzO/SmmzXGYEdaDO
fPZxK1fTVNKsUPnbTDORTBcNWJBf1/2SDMaGWliK3CMEXxu9AMso/t+J1bv2QP8=
=hm82
-----END PGP SIGNATURE-----

--H/P/fp31Su+ob3Cg--
