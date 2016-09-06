Return-Path: <broonie@sirena.org.uk>
Date: Tue, 6 Sep 2016 23:39:52 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160906223952.GV3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
	<20160906162502.GA15434@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Io5+l5/qWLIGd1Gn"
Content-Disposition: inline
In-Reply-To: <20160906162502.GA15434@roeck-us.net>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Io5+l5/qWLIGd1Gn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 06, 2016 at 09:25:02AM -0700, Guenter Roeck wrote:
> On Tue, Sep 06, 2016 at 02:34:30PM +0100, Catalin Marinas wrote:

> > Things could be different if fewer entities control the software that
> > gets installed/updated on such hardware. E.g. Google controlling the OTA
> > updates of the Chromebook kernels, they will at some point take a
> > similar hard stance to Red Hat on upstream first, single kernel Image.

> Seems to me that Redhat and Google are in different boats. Chromebooks,
> unlike "standard" PCs, have lots of "custom" hardware, where "custom" means
> hardware for which upstream support is not available. chromeos-4.4 currently

Right, there's a chicken and egg problem - it'd be a lot easier to
insist on this if it were possible to produce a viable product that
way...

> as we can, but it will take a while. Given time constraints, I don't think
> "upstream first" will ever work. Products have to ship and simply can not
> wait for upstream patches to be accepted.

...and you'd be looking at pretty major changes in the market, at least
for the devices shipping bleeding edge silicon.

> Ted was making an excellent point about the complexity of backporting features.
> Out of personal experience, I fully agree. Instead of reducing risk by avoiding
> a newer kernel version, backporting actually adds risk. Maybe it would help to
> educate people about the risks of backporting, and do a better job explaining
> why a new kernel may be a better choice.

People are aware of the risks here - this is where a lot of the pressure
to pull forward onto the newer LTSs comes from.

--Io5+l5/qWLIGd1Gn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXz0W1AAoJECTWi3JdVIfQSjEH/AnMEfP7Q+Dxd29KGTO84dLw
wOzeYfUeiuYkByHZZ9+PWf+miG0N4rDaHJv96O/UcClpjLxrhSfmVPy7rTCPSkNZ
gpsebDRV+uLQh4u4xefR5oAm0g088F3KzK86IDAErQa9ZbAjcU1tGFBgL8OA8kfm
1yyEH1sCbwzhMu6Yr8a9LOeh3QdY485ps0dHtaK5Wdvk0/+8pFgGJpsvvlPwJ2I9
qZnx659iXzA9b2f84zs/Gup5dcyFhPvvoJK1dQmUyG0fqk3NZHB+hGyqIPFIT3l/
2v/BPTR/cPNAiUtCIgyw7SL6UJi7YoltKZwmS4gr48RG9Dql6PsLocNvBSlaxYw=
=wHS9
-----END PGP SIGNATURE-----

--Io5+l5/qWLIGd1Gn--
