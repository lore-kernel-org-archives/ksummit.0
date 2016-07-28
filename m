Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A113C8D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 15:24:07 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 235B68E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 15:24:07 +0000 (UTC)
Date: Thu, 28 Jul 2016 16:16:13 +0100
From: Mark Brown <broonie@kernel.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <20160728151613.GF11806@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<4826466.kMrAaT2rsn@avalon>
	<cf4ea315-fcbc-a7f5-758a-298cfac321e8@xs4all.nl>
	<2071960.gyaMIhrJi3@avalon> <20160728114624.GE4094@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IQ2ZtBPOZQVGoXc0"
Content-Disposition: inline
In-Reply-To: <20160728114624.GE4094@quack2.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--IQ2ZtBPOZQVGoXc0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 28, 2016 at 01:46:24PM +0200, Jan Kara wrote:

> So I'm complete outsider to media drivers so maybe my question is stupid
> but I cannot resist: So how is the device bringup supposed to work for
> devices where you have these cycles in the dependency graph? Do you just
> bring up the controller and then the sensor and it works because the
> controller doesn't need the clock from the sensor for startup?

For audio you don't tend to actually bring the device up and start fully
using it until it's needed to perform some task and when you do that
there usually is some definite procedure that works at a more granualar
level than the full devices.  In order to enumerate everything for the
Linux device model you want to know about all the dependencies and
ideally verify that they'll be there when you need them but you don't
actually need to use them at that point.

--IQ2ZtBPOZQVGoXc0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXmiG8AAoJECTWi3JdVIfQZPsH+gLGD4bHf1BUOWTNa57efGx9
ATmVJGxjIngUIojpVhkd+fbpIIK4kPPpNCcElgF4ROHtm2zpuBfY4xfHpXtL59Rt
MeeJFRoGsVSSjWEwLBHpqGit3bfmqI5u6475thaOgvI3QsNGKCDEUXGRnBvOtho6
6XpuK4+3r/whOq860W7zRw3JpXSL4FHAHUO+wmyZgdybHOTrC7bQJC8uVE1HWnKd
SFbwFGSeWYiRjPxkK94WNvzAbgI/1C8OnOndESLizDqRHD/ORl8nVblIvt/1dG6z
e65jH+IUjlhpZnPPrIlxpu+S3+8rfUuCtAzYWwe0aQ+/Ssy4wbtp4aVGsGYtcng=
=j6sa
-----END PGP SIGNATURE-----

--IQ2ZtBPOZQVGoXc0--
