Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 49E4AAEF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 13:36:46 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B4375682
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 13:36:45 +0000 (UTC)
Date: Thu, 10 May 2018 22:36:28 +0900
From: Mark Brown <broonie@kernel.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20180510133628.GC949@sirena.org.uk>
References: <0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<20180509090346.GY13402@sirena.org.uk>
	<20180509204727.7ff38021@canb.auug.org.au>
	<20180509140532.GA949@sirena.org.uk>
	<20180510080909.47c3068b@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3siQDZowHQqNOShm"
Content-Disposition: inline
In-Reply-To: <20180510080909.47c3068b@canb.auug.org.au>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
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


--3siQDZowHQqNOShm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 10, 2018 at 08:09:09AM +1000, Stephen Rothwell wrote:
> On Wed, 9 May 2018 23:05:32 +0900 Mark Brown <broonie@kernel.org> wrote:

> > Well, all my trees have a for-linus branch to go with the for-next
> > branch for a start.

> The regmap and regulator trees have no for-linus branch (currently).
> Added sound-asoc-fixes and spi-fixes from today.

That's not what git claims when I try to push...  no idea what's going
on there, I just deleted and repushed - hopefully that helps.

--3siQDZowHQqNOShm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlr0StsACgkQJNaLcl1U
h9Dj6Af6A7R2O0TcCWtDoFPSCYveXPFG4Akuszbhtrx28lTaMIF7BxQcPxnCDD37
pwYt3AIwXkLYwRsmYRnsV9GdF3iY6AGPsmfPJl4P8eRMlKvKGNgE7Lnb0zyqbXil
srPIv6hQ3LO1lKcaIyM65pPexYDb8UBR+gyNd8LrgVP7DQjSg88zE8+R4NkVykv0
KLloURnFuKjBTVPbLWjU1LAraoEVkIuSs8q0j4uNcfGiATjQkLVTvHb0KC2jKMel
YL8Y3ZxE5dBhg/iqcDKLDOcHC9sZRAcrI7TTcLXL1QKDQf6BbitGQfh3uRMxSUSc
vupY7VFThTJyuCCkXq6eWELul7a/AQ==
=sZvA
-----END PGP SIGNATURE-----

--3siQDZowHQqNOShm--
