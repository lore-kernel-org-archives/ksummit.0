Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C3DE88A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 09:03:57 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0126018A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 09:03:56 +0000 (UTC)
Date: Wed, 9 May 2018 18:03:46 +0900
From: Mark Brown <broonie@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20180509090346.GY13402@sirena.org.uk>
References: <CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l4GQ7sizse6iPvDe"
Content-Disposition: inline
In-Reply-To: <CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--l4GQ7sizse6iPvDe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 09, 2018 at 10:47:57AM +0200, Daniel Vetter wrote:
> On Wed, May 9, 2018 at 10:44 AM, Mark Brown <broonie@kernel.org> wrote:

> > I think this is an excellent idea, copying in Stephen for his input.
> > I'm currently on holiday but unless someone convinces me it's a terrible
> > idea I'm willing to at least give it a go on a trial basis once I'm back
> > home.

> Since Stephen merges all -fixes branches first, before merging all the
> -next branches, he already generates that as part of linux-next. All
> he'd need to do is push that intermediate state out to some
> linux-fixes branch for consumption by test bots.

True.  It's currently only those -fixes branches that people have asked
him to merge separately which isn't as big a proportion of trees as have
them (perhaps fortunately given people's enthusiasm for fixes branches
that don't merge cleanly with their development branches) so we'd also
need to encourage people to add them separately.

--l4GQ7sizse6iPvDe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlryuW8ACgkQJNaLcl1U
h9AS+wf+IU1baG3wfK10UZNPg1egWmFCdvZUczLHZ4ewRAmJoCploibTdx9Km8b0
31MfKM2QZD3voLWLmN1kSpnY3cQSGp8UkY0UWLPzK/h2/qBFYp4bIUeHy8rt0Kna
3yfn/NAskVaz640YpsYzVYgE3+hbjVVlyf/ylq3CYOBFcQXELTgivQqQ0d+BxJuD
bt2rHHBtMw+vA4WmFhlIWJ7n9E/tlpuQ0ukpVA6Y0jikngEwBKI7btxNsqH2fizd
2jROtsef17gl47NKWMqoXRPhIFgysHYmf5iUhnspq6e/hji+yOW3Gope7OvM3XLM
pT60A0a9UvAPHXHwV3RpZZh6PU3cow==
=nvOF
-----END PGP SIGNATURE-----

--l4GQ7sizse6iPvDe--
