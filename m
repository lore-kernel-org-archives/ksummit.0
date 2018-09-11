Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8FB9DBA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 11:18:57 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1443A7AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 11:18:57 +0000 (UTC)
Date: Tue, 11 Sep 2018 12:18:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180911111853.GB8018@sirena.org.uk>
References: <20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bCsyhTFzCvuiizWE"
Content-Disposition: inline
In-Reply-To: <20180910212019.GA32269@roeck-us.net>
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


--bCsyhTFzCvuiizWE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 10, 2018 at 02:20:19PM -0700, Guenter Roeck wrote:

> Would that help ? -next has been more or less unusable for a week or so.
> Maybe it is just a bad time (it hasn't been as bad as it is right now
> for quite some time), but

> Build results:
> 	total: 135 pass: 133 fail: 2
> Qemu test results:
> 	total: 315 pass: 112 fail: 203

> on next-20180910 doesn't really make me very confident that useful regres=
sion
> tests on -next are even possible. it seems to me that -next is quite often
> used as dumping ground for sparsely tested changes, and is far from "ready
> for upstream".

I suspect this is something where if someone starts consistently
reporting test results things will get a lot better if someone
consistently reports test results and chases people to fix problems.  I
expect it to go like builds - used to see huge numbers of build and boot
failures in -next, and even in mainline, but ever since people started
actively pushing on them the results have got much better to the point
where it's the exeception rather than the rule.  You can see it
happening if you look at the build error/warning results from releases
over a few years (stable doesn't show it so clearly any more as a lot of
these fixes got backported there).

FWIW kernelci isn't nearly so bad on -next today - only four build
failures from the configurations it tests (someone managed to break
arm64) and the boot tests are clean apart from one board that's been
having what look like intermittent board specific issues. =20

   https://kernelci.org/boot/all/job/next/branch/master/kernel/next-2018091=
1/

No testsuites run there though.

--bCsyhTFzCvuiizWE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluXpJ0ACgkQJNaLcl1U
h9BWqwf7BeJsVVBVsK3ivFdU3LF+xwQlD4TrgfFMRr0/3VZohwSLCvFfIKbTiO0m
7COjpiv/e6MEtM5mJsf5tT7g4Sb40lUCfWUgXdmWyASlX99v2dWs0C5DYiM34SSd
8p+BtHGfgw4veXnB/Jn9fFi2a/IjLVh0vzneiroDgOToLufj56ckycbaPfuVWXQ9
ZYVmDqyUFwohA05GJtZPCFNgDt3S04gAa2dKD4qXi5EgdZc4RKDb1Oh6113b4q+L
AzG7s5KHgBRW7SR5ckCAzcKvm9EEmNouaJC5RkqmFIr3hF8IWdkkyA2L+w4igfTe
ElcEgLtTYV7r9XOhkW9dFAS1pJCn2A==
=r0RB
-----END PGP SIGNATURE-----

--bCsyhTFzCvuiizWE--
