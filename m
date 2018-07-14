Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D042C49B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jul 2018 19:47:19 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 00AA4F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jul 2018 19:47:18 +0000 (UTC)
Date: Sat, 14 Jul 2018 21:47:17 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180714194716.GA27381@amd>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501220228.GD7397@sasha-vm> <20180502043017.GA11938@1wt.eu>
	<20180502194139.GA18390@sasha-vm> <20180502200229.GA12729@1wt.eu>
	<20180714173812.xhfwtcijlxebmn2k@devuan>
	<e1198cd9-9113-d231-d15a-31ac5224b3b1@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline
In-Reply-To: <e1198cd9-9113-d231-d15a-31ac5224b3b1@roeck-us.net>
Cc: Greg KH <gregkh@linuxfoundation.org>, Willy Tarreau <w@1wt.eu>,
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


--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> >>>The way I see it, if a commit can get one or two tested-by, it's a good
> >>>alternative to a week in -next.
> >>
> >>Agreed. Even their own actually. And I'm not kidding. Those who run lar=
ge
> >>amounts of tests on certain patches could really mention is in tested-b=
y,
> >>as opposed to the most common cases where the code was just regularly
> >>tested.
> >
> >Actually, it would be cool to get "Tested: no" and "Tested: compile"
> >tags in the commit mesages. Sometimes it is clear from the context
> >that patch was not tested (treewide update of time to 64bit), but
> >sometime it is not.
> >
> >This is especially problem for -stable, as it seems that lately
> >patches are backported from new version without any testing.
>=20
>=20
> When I started my own testing some five years ago, most architectures
> did not even build in stable releases. At that time, the only tests being
> done on stable release candidates were a number of build tests, and most
> of the results were ignored.
>=20
> Today, we have 0day, kernelci, kerneltests, Linaro's LKFT, and more, plus
> several merge and boot tests done by individuals. Stable release candidat=
es
> are build tested on all supported architectures, with hundreds of
=2E..
> Sure, testing is still far from perfect and needs to be improved. However,
> requiring that every patch applied to stable releases be tested individua=
lly
> (where ? on all affected architectures ?) would be the wrong
>direction.

Well, 0day, kernelci etc... is nice... until the change is in the
driver. Most of the kernel are drivers, remember?

I don't know. I'd say that if patch is important enough for -stable,
there should be someone testing it. For core kernel changes, that can
be 0day bot, but for drivers...

And problem exists on mainline, too.

Hmm. Patch for obscure driver. Wow, nice, is WellKnownName actually
using that driver? Aha, no, he is not; he is doing global
search&replace, and did not test the patch...

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--xHFwDpU9dbj6ez1V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAltKU0QACgkQMOfwapXb+vKyRACcDkIDk//KX5XRu/ZqhSvh3P7W
bOcAn2aYayhT2Pg9QPbqg9HRLWGcTkhU
=PPeV
-----END PGP SIGNATURE-----

--xHFwDpU9dbj6ez1V--
