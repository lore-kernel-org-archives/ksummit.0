Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 97C76951
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 14:22:35 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E5842218
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 14:22:34 +0000 (UTC)
Date: Wed, 27 Jul 2016 15:22:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Vinod Koul <vinod.koul@intel.com>
Message-ID: <20160727142221.GK11806@sirena.org.uk>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<CAOesGMiq5Q==Rg97VqmO-=HNYXz9ZA6iCDJ7sBa0tGzJVuYs4g@mail.gmail.com>
	<20160727030406.GU9681@localhost> <17304523.rVA3ueAWN9@wuerfel>
	<20160727125751.GC9681@localhost>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/8E7gjuj425jZz9t"
Content-Disposition: inline
In-Reply-To: <20160727125751.GC9681@localhost>
Cc: ksummit-discuss@lists.linuxfoundation.org, Dave Airlie <airlied@linux.ie>,
	"Nikula, Jani" <jani.nikula@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--/8E7gjuj425jZz9t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 27, 2016 at 06:27:51PM +0530, Vinod Koul wrote:
> On Wed, Jul 27, 2016 at 09:53:24AM +0200, Arnd Bergmann wrote:

> > We should be at the point where an 'allmodconfig' build on ARM
> > gets you most of the drivers and builds without warnings (using
> > gcc-4.9 or higher).

> The problem is drivers depend on various ARM sub arch's. That is the
> sole reason why I have multiple configs now.

That shouldn't be the case at least for any new code, things should at
least build OK with an || COMPILE_TEST normally.  Old code may need
fixing up for this.

> Which brings me to another problem :-) why should individual drivers
> depend on ARM sub arch's. Depends on ARM, yes. First look at code tells
> me they shouldn't!, probably sometime back that was true, but I don't
> think that should be the case now, ofcourse you would know better!

The dependencies are there to improve UX when people are configuring
their kernels - it stops them being asked about hardware they can't
possibly have in their system.  If there's no build time reason for it
then it should be (ARCH_FOO || COMPILE_TEST) so people can do build
tests.

--/8E7gjuj425jZz9t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXmMOcAAoJECTWi3JdVIfQCHUH/1RFU00/KcJ80qVcZGeu5DrB
7cWKkVSeM7NEvwmL77Q25dSpqsgUdbF3f/vPxjFxAnFcomLfJB6FlBkphDynSlu0
GEMlRMjgmFofaQfyQX7rm+Wb33VE0pmFxj3WTNhpM7SJuwMa1u3AG6iC1lfELF5f
27lVO/aMZCu0F+0wXLmSfGHhncOPhxq7b6zRVc415yjWsQWwRU1LIdYd3j1OCCnP
va8zHnzT24rcEIA4nBuCI7KMDctgc1QPmZgleRPVq2NrpAbktQWU41KkuTzs3Eic
4NFu6/BQQlsPF+aVdssMLhhV/xr8j1zfFXM2NPhxoJHn6nIz4qXB6leI+xOidnM=
=kwPz
-----END PGP SIGNATURE-----

--/8E7gjuj425jZz9t--
