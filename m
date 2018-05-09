Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5DAB4D20
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 22:09:13 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9A84F680
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 22:09:12 +0000 (UTC)
Date: Thu, 10 May 2018 08:09:09 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20180510080909.47c3068b@canb.auug.org.au>
In-Reply-To: <20180509140532.GA949@sirena.org.uk>
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
	<20180509140532.GA949@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/ldJO_07QX328KjF_NOT_tX0";
	protocol="application/pgp-signature"
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

--Sig_/ldJO_07QX328KjF_NOT_tX0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Mark,

On Wed, 9 May 2018 23:05:32 +0900 Mark Brown <broonie@kernel.org> wrote:
>
> Well, all my trees have a for-linus branch to go with the for-next
> branch for a start.

The regmap and regulator trees have no for-linus branch (currently).
Added sound-asoc-fixes and spi-fixes from today.

Thanks for adding your subsystem tree as a participant of linux-next.  As
you may know, this is not a judgement of your code.  The purpose of
linux-next is for integration testing and to lower the impact of
conflicts between subsystems in the next merge window.=20

You will need to ensure that the patches/commits in your tree/series have
been:
     * submitted under GPL v2 (or later) and include the Contributor's
        Signed-off-by,
     * posted to the relevant mailing list,
     * reviewed by you (or another maintainer of your subsystem tree),
     * successfully unit tested, and=20
     * destined for the current or next Linux merge window.

Basically, this should be just what you would send to Linus (or ask him
to fetch).  It is allowed to be rebased if you deem it necessary.

--=20
Cheers,
Stephen Rothwell=20
sfr@canb.auug.org.au

--Sig_/ldJO_07QX328KjF_NOT_tX0
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlrzcYUACgkQAVBC80lX
0GzZqQgApHxkyJiWf1G5HUnwNinxKQshxLRflaxKOCsPNEqEC7shFhnemvJPss/i
8JNyotvxeWjaykN+fGTcyYQ2227WeET+UkO/5WLT98V9DU0EcMVdoDWD+dskZtuS
Uk7X96hIJdOqYTACrzZossF2tlhKFXku2PmrzOP94CpNEttOCbFVzR4TKnQ/PLlY
m4SFIXrNrJNlDcJ/UUNFdSV19P6noRKkNjFHR2++A0UOEmAE+Y1xidcLY04tfWjt
vBUj/YRJtfNe/q+4HGo9u+UVd5fQp4BM2ZjO9TCNdV+EBgbbHRu6dzIHtXMSkbDh
XcFHxLdbWHC80LODYVlDFEV4nGIpVA==
=d/bF
-----END PGP SIGNATURE-----

--Sig_/ldJO_07QX328KjF_NOT_tX0--
