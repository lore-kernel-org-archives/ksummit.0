Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA3432B98
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 12 May 2018 04:38:12 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 05210E7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 12 May 2018 04:38:11 +0000 (UTC)
Date: Sat, 12 May 2018 14:38:09 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20180512143809.7c6a06ab@canb.auug.org.au>
In-Reply-To: <20180509204727.7ff38021@canb.auug.org.au>
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
	<20180509204727.7ff38021@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/O5P0jPeC4Hosbv4l.vGTlyZ";
	protocol="application/pgp-signature"
Cc: Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/O5P0jPeC4Hosbv4l.vGTlyZ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Wed, 9 May 2018 20:47:27 +1000 Stephen Rothwell <sfr@canb.auug.org.au> w=
rote:
>
> On Wed, 9 May 2018 18:03:46 +0900 Mark Brown <broonie@kernel.org> wrote:
> >
> > On Wed, May 09, 2018 at 10:47:57AM +0200, Daniel Vetter wrote: =20
> > > On Wed, May 9, 2018 at 10:44 AM, Mark Brown <broonie@kernel.org> wrot=
e:   =20
> >  =20
> > > > I think this is an excellent idea, copying in Stephen for his input.
> > > > I'm currently on holiday but unless someone convinces me it's a ter=
rible
> > > > idea I'm willing to at least give it a go on a trial basis once I'm=
 back
> > > > home.   =20
> >  =20
> > > Since Stephen merges all -fixes branches first, before merging all the
> > > -next branches, he already generates that as part of linux-next. All
> > > he'd need to do is push that intermediate state out to some
> > > linux-fixes branch for consumption by test bots. =20
>=20
> Good idea ... I will see what I can do.

See my announcement of a pending-fixes branch in linux-next (on LKML
and others)

> I currently have 44 such fixes branches.  More welcome!

We are up to 55.

--=20
Cheers,
Stephen Rothwell

--Sig_/O5P0jPeC4Hosbv4l.vGTlyZ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlr2b7EACgkQAVBC80lX
0GwlAAf6AuLkjRWau++c+HEK5ajPABMF71HxJgYkDErFfb0m53fS8dv54ki5M4a+
m7E5owJkRurUQ3T2uXsLhr1sr26EsUv522RicG8S3jpqXwlIMLNYzdBJVB+FpPx+
1d4DokeqwSMpsErTPDu1PGOSBbgolsNsThJX7FTF2mxR7zIwhowAQFGjTzOKnjQ7
Wt7dwRPG5NU+vVH0LgsjwqStiH9zm0L8Mrzat1XQPfxT9h8Xr5vPpBmN11/VeuvW
/8cy1TZh+jdGa6kl63IfjwRScwhAIxWzeO51KdsrH6eJ5TyElRbF9oCPyxzuH/i5
b2lNmH9JwgoN5TbTyVbP+vqZUYMqTg==
=aneN
-----END PGP SIGNATURE-----

--Sig_/O5P0jPeC4Hosbv4l.vGTlyZ--
