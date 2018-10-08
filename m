Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 97D34680B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 10:14:59 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D83754DA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 10:14:58 +0000 (UTC)
Date: Mon, 8 Oct 2018 11:14:55 +0100
From: Mark Brown <broonie@kernel.org>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <20181008101455.GC5684@sirena.org.uk>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861799.4088.6.camel@HansenPartnership.com>
	<CAPM=9tz3Z=vD6qWUL2boZGEAgMeC_o9euBXFu2V58RHOn6gR9g@mail.gmail.com>
	<20181007225613.GZ32577@ZenIV.linux.org.uk>
	<CAPM=9tzU_wy77j=sx9u9gFsJp-M4ktH7hLQE5=_wKbow9p+iuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="da4uJneut+ArUgXk"
Content-Disposition: inline
In-Reply-To: <CAPM=9tzU_wy77j=sx9u9gFsJp-M4ktH7hLQE5=_wKbow9p+iuQ@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH 1/2] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--da4uJneut+ArUgXk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 08, 2018 at 09:37:59AM +1000, Dave Airlie wrote:
> On Mon, 8 Oct 2018 at 08:56, Al Viro <viro@zeniv.linux.org.uk> wrote:

> > We can surround it with "explanations" until we get something that more or
> > less fits, but then we'd need to reanalyse them every time an upstream
> > change gets merged.  And the lack of textual conflicts is not a good thing
> > in such situations, obviously.

> We do this already for the GPL (hence the GPLv2 only, and syscall exceptions).

That works reasonably well for licenses because people reading licenses
tend to do so in a rather detail oriented fashion so it's not that big
an obstacle to have something that's a bit harder to follow.  It's not
clear to me that the same thing is going to apply to people reading
codes of conduct, especially those looking for reassurance from them.
It might be OK but it's probably worth thinking about.

--da4uJneut+ArUgXk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlu7Lh4ACgkQJNaLcl1U
h9BlGgf+Jd5yIlAzK7IXrz8w956FmPTkmDOrFMDyp5IKt/nNOYYYI8LgnvSRysUW
UF6MJN+yr3cCaKjPAhfdV/IuBojliG5E/ooSqijwKFVB8eGdLQ+4i319T1tpNNcM
jCb2yfTaVuexPS8fNVEVURre8XF11Z8TvmELROVZN5Eih2EL5BecdZ2gUGtBCM19
CWwmhrKWOxYcZ4sPuYqWLUo39PSDSEs1EL2QSww6q+E1LT5hkhir+j7X5ehLGqYL
aHyNJ8haLbPFNn0guJHeGPbZ5D89jb+018UNPcR/xIegxWSHhrylghaV0LiRBtle
07A7WB0QUzP3ojoGnitbPwPeHJoqeA==
=hXVf
-----END PGP SIGNATURE-----

--da4uJneut+ArUgXk--
