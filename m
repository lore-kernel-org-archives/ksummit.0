Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1C90649B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 10:47:47 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3F103671
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 10:47:46 +0000 (UTC)
Date: Wed, 9 May 2018 20:47:27 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20180509204727.7ff38021@canb.auug.org.au>
In-Reply-To: <20180509090346.GY13402@sirena.org.uk>
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
	<20180509090346.GY13402@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/XWBOwuj8mEn/E4JegrtF2g/";
	protocol="application/pgp-signature"
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

--Sig_/XWBOwuj8mEn/E4JegrtF2g/
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 9 May 2018 18:03:46 +0900 Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, May 09, 2018 at 10:47:57AM +0200, Daniel Vetter wrote:
> > On Wed, May 9, 2018 at 10:44 AM, Mark Brown <broonie@kernel.org> wrote:=
 =20
>=20
> > > I think this is an excellent idea, copying in Stephen for his input.
> > > I'm currently on holiday but unless someone convinces me it's a terri=
ble
> > > idea I'm willing to at least give it a go on a trial basis once I'm b=
ack
> > > home. =20
>=20
> > Since Stephen merges all -fixes branches first, before merging all the
> > -next branches, he already generates that as part of linux-next. All
> > he'd need to do is push that intermediate state out to some
> > linux-fixes branch for consumption by test bots.

Good idea ... I will see what I can do.
 =20
> True.  It's currently only those -fixes branches that people have asked
> him to merge separately which isn't as big a proportion of trees as have
> them (perhaps fortunately given people's enthusiasm for fixes branches
> that don't merge cleanly with their development branches) so we'd also
> need to encourage people to add them separately.

I currently have 44 such fixes branches.  More welcome!

--=20
Cheers,
Stephen Rothwell

--Sig_/XWBOwuj8mEn/E4JegrtF2g/
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlry0b8ACgkQAVBC80lX
0Gxj3gf/Xh5IYGStQouGu5wCw5mu9D5sM6AiSYuqSkX04xtZABc2xe+vqWZYMojQ
N05mKW36wjEjFVTmHNW7yavgK1pGVj93Tih44+AauPCSXFHbmsArsxmAcYTaeumG
yD2CztQVEm2bdAbahuWJyWlDGptXO+mUfdx0eI8g5oqZhSpxP7VsD8tOtYcRxZwJ
dH4Hns+mlLglEhpdo1bxye1bjtiZEdTKveEcERkjTsqY0wbeomkOPG3YoaZrNjbU
DY1EwewZn2QsLbEF3dLj8H/NJMDZtRjJEfNrauQAlYJ9tZQMUIhwyKTnm1vd5DBi
3U3VxxOBcqA10OobFCMQ0/K8UcPEhw==
=CG4/
-----END PGP SIGNATURE-----

--Sig_/XWBOwuj8mEn/E4JegrtF2g/--
