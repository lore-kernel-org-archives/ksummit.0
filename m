Return-Path: <maxime.ripard@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 45B31CB1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 12:08:24 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id EDFFA784
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 12:08:22 +0000 (UTC)
Date: Thu, 13 Sep 2018 14:08:11 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20180913120811.oilaweiun3z4l5wo@flea>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
	<CACRpkdZeR=0-_tN03jFLGc-j1pW4hfOtqB6icjhpF190A8Z0=A@mail.gmail.com>
	<20180912182343.GI2760@piout.net>
	<alpine.DEB.2.21.1809122037450.1473@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f3fcgw4dkxvonnep"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1809122037450.1473@nanos.tec.linutronix.de>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--f3fcgw4dkxvonnep
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 12, 2018 at 08:44:52PM +0200, Thomas Gleixner wrote:
> On Wed, 12 Sep 2018, Alexandre Belloni wrote:
> > On 12/09/2018 11:14:14+0200, Linus Walleij wrote:
> > I'm not saying there aren't any issues and that the level of reviews is
> > sufficient but I really don't think problematic maintainers are as
> > widespread as Daniel claims. It is really getting tiring to see him
> > show random statistics and draw wrong conclusions from them.
>=20
> Agreed. Lies, damned lies and statistics...
>=20
> The really interesting metric would be bugs/nr_commits. That gives you
> valuable information how good your subsystem works and interacts with the
> rest of the kernel.

That's one angle to look at it, and I agree it would be a pretty good
overview of how good a maintainer is at reviewing patches, in general.

However, there's different angles where the metric used by Daniel
makes sense. If there's a very significant part of the work that is
done by the maintainer of a given subsystem, and that there is a
single maintainer for that subsystem, what will happen when that
maintainer decides to stop contributing for some reason?

All the knowledge they built, experience they got (including at
reviewing) is gone, possibly forever, and there's no one to pick up
the subsystem, and the code is left to rot.

Maintainers burn-out are also a thing, that is only reinforced by
being the sole one caring for that subsystem.

And then, you also have the issue that nothing prevents that
maintainer to enforce particuliar rules and thus prevent contributors,
reinforcing the fact that they would be the sole maintainer for that
subsystem.

As a community, we should care about those issues as well. Basically,
the whole Linus discussion should apply at all the levels of the
hierarchy, for pretty much the same reasons.

Having multiple maintainers and / or a more even spread of the
contributions mitigate all these. So Daniel's metric is a pretty good
one, and it doesn't mean that a particular maintainer is bad at their
job, or is not making any effort, or shouldn't be praised. It really
is a different metric, for a different issue.

It's like running a datacenter off a single machine, with a single
power supply, a single internet connection and a single hard disk. No
one would want that.

"But the bandwidth is good".

Maxime

--=20
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--f3fcgw4dkxvonnep
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE0VqZU19dR2zEVaqr0rTAlCFNr3QFAluaUyAACgkQ0rTAlCFN
r3SmNw/8DSZTgL7AXoKSCEbtFTrAgJzqRmRi8ufQTe+Ak4UgWZDvup91ylPzoRme
vaVFN6FS0SL6Rns7kRuzP218WO/505pUyXhT+n+GLtk9MLS67o2CNWDUF8MOztLL
sxXV0c6cjasj8G0rPirJtP4kfm+Mpa9EjBRXF34AqPYgaQuwqLqQWC3WWjLX9+Lv
/kDUpE3vDbC3wIuF8kwZs3aWgLnBWW95WAd9blthocD5KGECKHLRDa4iwu+eY9+B
JoZfcKfOlFMgebFeLG2Zad5JIzxwC9m0gD/deInLHgNNTJTZIc2C1bUgNOAyKIWU
KmQJJxePNx8zFAty1/AyBG7iGe2WKhanLlCpXZAu8hee0nMktUaXoxIW12dUovFR
MJbgQAwzBnjnDpax5yhK2rguN7mSsnU+KFiqtwmHiocCdW7J2mZ4awabwribzbA2
YiSKc3AOVGfVDbAjwmrtyLxxSN61F/b2incC1SxqA5PvuAvrFeaOA5rSzyZ+a6i7
ALJ0KKzOu71hGjCiy880aZDyTGbkcvAXW5DTrBR5K6eSNocfd+uqjohbbAb7xolq
dpEA+X4ljraHC0QNXMxnBsaUA4v/flYfqbFk7XLH/J1s4lADY1tr6Bf9IKNth1UG
3CoQZkqhk7qF7HybkHVVoIu75to9MFoTcexvJTlCEO4V70BzHA8=
=tN8L
-----END PGP SIGNATURE-----

--f3fcgw4dkxvonnep--
