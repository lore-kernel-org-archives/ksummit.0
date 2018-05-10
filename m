Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48D80D0B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 22:01:09 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 927266B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 22:01:08 +0000 (UTC)
Date: Fri, 11 May 2018 08:01:01 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20180511080101.04448571@canb.auug.org.au>
In-Reply-To: <20180510133628.GC949@sirena.org.uk>
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
	<20180510133628.GC949@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/xZ8ZdjYOgrNpiV0K=nvT7jv";
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

--Sig_/xZ8ZdjYOgrNpiV0K=nvT7jv
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Mark,

On Thu, 10 May 2018 22:36:28 +0900 Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, May 10, 2018 at 08:09:09AM +1000, Stephen Rothwell wrote:
> > On Wed, 9 May 2018 23:05:32 +0900 Mark Brown <broonie@kernel.org> wrote=
: =20
>=20
> > > Well, all my trees have a for-linus branch to go with the for-next
> > > branch for a start. =20
>=20
> > The regmap and regulator trees have no for-linus branch (currently).
> > Added sound-asoc-fixes and spi-fixes from today. =20
>=20
> That's not what git claims when I try to push...  no idea what's going
> on there, I just deleted and repushed - hopefully that helps.

I have added regmap-fixes and regulator-fixes now.

--=20
Cheers,
Stephen Rothwell

--Sig_/xZ8ZdjYOgrNpiV0K=nvT7jv
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlr0wR0ACgkQAVBC80lX
0GzcDQf9E02dUZ9IOBaMF80oUfQ8tl1F89Ec010K589Byun+sxHiMElJ1rl4d0hM
IuZzXplBk9kD8GCSGbFtjISEDcRuzjCulXgU5U0JMZe0R3+6R9nIxHxhsSuBchFr
wGBfgoPBmSWmvvmAp0V+eoGUrkLimvqQbT3C4nB0wqvX7eYFMOivPta9uojN0+Zn
jUZ+NctObNZ+FLDvood/KEBZckFwlOXHX3ls2YL75nf8uivzzOdfvA7vGTWwCG4u
qFFfEvebKSywMlUFBnmRPRhH91SjA5JxFhB+LMVDzdNYaJ3kXZAIwSyYXX7yTYXE
2QnFl8KTx1Pin7yJG/ETWV5+dEkQGg==
=GKna
-----END PGP SIGNATURE-----

--Sig_/xZ8ZdjYOgrNpiV0K=nvT7jv--
