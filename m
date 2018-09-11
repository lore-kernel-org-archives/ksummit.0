Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1EE76F47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:26:44 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8B1ED766
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:26:43 +0000 (UTC)
Date: Tue, 11 Sep 2018 18:26:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180911172640.GD10123@sirena.org.uk>
References: <CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
	<20180911170212.GC8284@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bjuZg6miEcdLYP6q"
Content-Disposition: inline
In-Reply-To: <20180911170212.GC8284@roeck-us.net>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--bjuZg6miEcdLYP6q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 11, 2018 at 10:02:12AM -0700, Guenter Roeck wrote:

> FWIW, for the most part I stopped reporting issues with -next after some =
people
> yelled at me for the 'noise' I was creating. Along the line of "This has =
been
> fixed in branch xxx; why don't you do your homework and check there", with
> branch xxx not even being in -next. I don't mind "this has already been
> reported/fixed", quite the contrary, but the "why don't you do your homew=
ork"
> got me over the edge.

Ugh, yeah - that sort of response is super annoying, especially when it
also comes along with something about not fixing -next for a while for
some process reason.  I have found it's very rare these days fortunately
but it has happened.

> To even consider reporting issues in -next on a more regular basis, I'd l=
ike
> to see a common agreement that reporting such issues does not warrant bei=
ng
> yelled at, even if the issue has been fixed somewhere or if it has already
> been reported. Otherwise I'll stick with doing what I do now: If something
> is broken for more than a week, I _may_ start looking at it if I have some
> spare time and/or need a break from my day-to-day work.

I'd say that should be true in general, being pointed at some previous
discussion or whatever is clearly fine but it's unreasonable to expect
people doing general purpose testing to know about random other threads
or branches.  It's especially true if it's something that disrupts other
testing in an integration tree.

> > FWIW kernelci isn't nearly so bad on -next today - only four build
> > failures from the configurations it tests (someone managed to break
> > arm64) and the boot tests are clean apart from one board that's been
> > having what look like intermittent board specific issues. =20

> >    https://kernelci.org/boot/all/job/next/branch/master/kernel/next-201=
80911/

> > No testsuites run there though.

> It doesn't require test suites. The crash happens on reboot/poweroff when
> unmounting the root file system. initrd/initramfs boots don't see the
> problem. Pretty much every architecture except arm (for whatever reason)
> should see the problem.

You'd also need to reboot or power off which KernelCI doesn't do for
boot tests - it's just happy if we make it as far as a prompt then kills
the power.

--bjuZg6miEcdLYP6q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluX+s8ACgkQJNaLcl1U
h9APpAf/QDklZ0UD9S7oey3Ecsoph2/OOChAKAJITjj3iKw9eczSWQz9KS2vXitx
/sZGBmYICSO1sEII7tWiWWQXmBrHF02kk2hybqez89PXqUcffWgBVdt4csbZQojc
hHy2uFIve+hILIf0rdCtCvcvzvT80VvxgTEMWkbanQdbNMvnj1k3NZBFVXG7tOOE
tI0Gw7+9d3Ak293p0xi6uECfCkPMpcYVZ58GedeAJ8pOa4CtS+wPI8dNQ+rLcDIL
crrcwjUlteNzfAsDAWrjxSpVrGGBmbMH73CA0NwVZpajxrjVeg3pgmkJ+lhuOstm
qcUdtJzF1W9K6dLzTjFTOH1ouIDFUg==
=fX1y
-----END PGP SIGNATURE-----

--bjuZg6miEcdLYP6q--
