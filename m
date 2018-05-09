Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B21F59D1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 14:05:47 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2BC84671
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 14:05:46 +0000 (UTC)
Date: Wed, 9 May 2018 23:05:32 +0900
From: Mark Brown <broonie@kernel.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20180509140532.GA949@sirena.org.uk>
References: <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<20180509090346.GY13402@sirena.org.uk>
	<20180509204727.7ff38021@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline
In-Reply-To: <20180509204727.7ff38021@canb.auug.org.au>
Cc: "w@1wt.eu" <w@1wt.eu>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 09, 2018 at 08:47:27PM +1000, Stephen Rothwell wrote:
> On Wed, 9 May 2018 18:03:46 +0900 Mark Brown <broonie@kernel.org> wrote:
> > On Wed, May 09, 2018 at 10:47:57AM +0200, Daniel Vetter wrote:
> > > On Wed, May 9, 2018 at 10:44 AM, Mark Brown <broonie@kernel.org> wrot=
e: =20

> > True.  It's currently only those -fixes branches that people have asked
> > him to merge separately which isn't as big a proportion of trees as have
> > them (perhaps fortunately given people's enthusiasm for fixes branches
> > that don't merge cleanly with their development branches) so we'd also
> > need to encourage people to add them separately.

> I currently have 44 such fixes branches.  More welcome!

Well, all my trees have a for-linus branch to go with the for-next
branch for a start.

--qMm9M+Fa2AknHoGS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlrzACsACgkQJNaLcl1U
h9AM4wf9HbaLz7zmjo8UU2Cxru60+sQAhl40X7n283AXOvOUB+4pWhjY80f+BYtU
L0RMovyujHyA75df9rlVPDAeIz2aGRVGJMED77szUhHm3N5XB5SdAkrH4e2CyO4n
gO3+8Y0lXiMnZqPupnQrFx6vrgNWeeAu9+c+znKIo9GKfsrXrOmC6EexzAT4dg7y
7qzgdF1DdNt/9GSSoWEcrVoTrGdZCGlN0PAU01NQOZUgm0VCiGJey+vCYETGUeVt
Ka6yW/BWCXb2XYWtiG/a996hoXqlslBesZRkcMVuXq2KA5gLG0wZIQuZSMvqJDNR
5mkBGlF+kj82fUXeu2PAKjctGaz5kA==
=Wsaq
-----END PGP SIGNATURE-----

--qMm9M+Fa2AknHoGS--
