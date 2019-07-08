Return-Path: <broonie@sirena.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E03B8272C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 14:50:50 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F69C892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 14:50:47 +0000 (UTC)
Date: Mon, 8 Jul 2019 15:50:45 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20190708145045.GC12731@sirena.co.uk>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<20190708123733.GC8576@sirena.org.uk>
	<102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/Uq4LBwYP4y1W6pO"
Content-Disposition: inline
In-Reply-To: <102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--/Uq4LBwYP4y1W6pO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 08, 2019 at 07:05:44AM -0700, Guenter Roeck wrote:
> On 7/8/19 5:37 AM, Mark Brown wrote:

> > I'm not sure how many people will actually report problems they
> > experience upstream rather than just fixing things locally and
> > just moving on.  The more code is the more likely it is that one
> > of the users will report things.

> I for my part will most definitely report any such problems, since each
> regression in stable releases is used as argument against merging
> stable releases (even if the regression rate is negligible), and I am
> very interested in getting that regression rate as close to zero as
> possible. Reporting each and every regression is an essential part
> of that.

Me too - but I'm pretty sure for example most of the product
teams I've worked with at consumer electronics companies would
never even consider it.

--/Uq4LBwYP4y1W6pO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0jWEQACgkQJNaLcl1U
h9D2vAf/TjmD74RUlK02nLSeYCy9cG9kGrvMHZIBi/RZtgqgEKzQTOt55WRx9pUk
KDjgXtW1pRHk7qs9oaPpP/aLuDm/flVngp8vv+lRvICNVIQJuX7YFqaKthcXSO7W
z8G0+NVyUfE1YKR3YquwZ6HGQQmi6FkXbvOmrupRR061LRVKarSni6XkQ6XN6nRg
/z3sDzBGsZEBjYpU+hMgAzYgDf0Ui3tUltoLKSX8I9MoEa+WM3/wnXVqI/IV7pOn
1LZmUtcR8vXEYiBAIiKnX6P3rsVBnyQgN0QMcC9QARw8Km63fvqtlsWvhKH41gle
nWcEreKid5q5UkjuQY+XylGPxDkmbA==
=8IVb
-----END PGP SIGNATURE-----

--/Uq4LBwYP4y1W6pO--
