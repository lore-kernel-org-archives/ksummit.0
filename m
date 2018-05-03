Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 89E06255
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 22:42:29 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 11A5718A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 22:42:28 +0000 (UTC)
Date: Fri, 4 May 2018 07:42:17 +0900
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180503224217.GR2714@sirena.org.uk>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="soWJpSPh+l8Y6Fy7"
Content-Disposition: inline
In-Reply-To: <0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--soWJpSPh+l8Y6Fy7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 02, 2018 at 08:52:29PM -0700, Guenter Roeck wrote:

> As for -next, me and others stopped reporting bugs in it, because when we do
> we tend to get flamed for the "noise". Is anyone aware (or cares) that mips
> and nds32 images don't build ? Soaking clothes in an empty bathtub won't make
> them wet, and bugs in code which no one builds, much less tests or uses, won't
> be found.

You've been flamed for testing -next?  That's not been my experience and
frankly it's pretty horrifying that it's happening.  Testing is pretty
much the whole point of -next existing in the first place so you have to
wonder why people are putting their trees there if they don't want
testing.  I have seen a few issues with people reporting bugs on old
versions of -next but otherwise...

--soWJpSPh+l8Y6Fy7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlrrkEYACgkQJNaLcl1U
h9D6aAf/aWjbgLYQ25BOZg7Np2lo4EMzezJlcssRLQiCtkGkfdF8gyl/ZOJ2FokB
RPhuUzekpRnqp8uCZi1GjTPPEU5efGBlYbdxISDDU6Rc5zCRqz0w48lq0XJMLiEH
+Vo5MkdxKjTovaZ1/pz7VOk4dgv/cKdgRuKxzsMTX+rRsdzaBxACSIjWL7XCPxy7
17UaZSWkcjmO8AEkJe6oRoXOx7hrvT6SViX/+TQ7wrXzSrkL29n9/CG7MNR0TTUi
EnIB4P/PcZvHDqPMskzgD8Taf0zNGmQGyfGxd4vgC9V3u7RCzayUUQ9OI3jrpASo
tgKZVC1MOdMTB2GpgMekBFkGLEYHNw==
=uYX5
-----END PGP SIGNATURE-----

--soWJpSPh+l8Y6Fy7--
