Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BBDC01283
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:00:52 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 62FB03F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:00:52 +0000 (UTC)
Message-ID: <1536688832.3511.10.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mark Brown <broonie@kernel.org>
Date: Tue, 11 Sep 2018 11:00:32 -0700
In-Reply-To: <20180911175634.GF10123@sirena.org.uk>
References: <20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
	<20180911170212.GC8284@roeck-us.net>
	<1536686530.3511.1.camel@HansenPartnership.com>
	<20180911175634.GF10123@sirena.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-3Z5qJGgAE4yjmlDTP5uO"
Mime-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-3Z5qJGgAE4yjmlDTP5uO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2018-09-11 at 18:56 +0100, Mark Brown wrote:
> On Tue, Sep 11, 2018 at 10:22:10AM -0700, James Bottomley wrote:
>=20
> > Not to excuse rudeness, we always try to be polite on lists when
> > this happens, but -next builds on Australian time, so when we find
> > and fix an issue there can be up to 24h before it propagates.=C2=A0=C2=
=A0In
> > that time, particularly if it's a stupid bug, it gets picked up and
> > flagged by a number of self contained 0day type projects and
> > possibly a couple of coccinelle type ones as well.=C2=A0=C2=A0It does g=
et a
> > bit repetitive for maintainers to receive and have to respond to 4
> > or 5 bug reports for something they just fixed ...
>=20
> I'd have thought most maintainers would be pretty used to sending
> repetitive e-mail by now :)
>=20
> > Perhaps the -next tracking projects could have some sort of co-
> > ordination list to prevent the five bug reports for the same issue
> > problem?
>=20
> We're not *that* overburdened with people running testing, and
> especially not with people actively reporting the results, at the
> minute.

We are if a maintainer snapping at someone causes tests not to be run
or results not to be reported.

James

--=-3Z5qJGgAE4yjmlDTP5uO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABMIAB0WIQTnYEDbdso9F2cI+arnQslM7pishQUCW5gCwAAKCRDnQslM7pis
hRD3AQDZv0pbjWKOTvhIHzARwiV/Nv7mHLpkMeV3/juKYsvdEAD/dc7aZ0ifwFt2
aN2HoRlu3eR3aKlo+ippUbJ9mWQGuPY=
=8Ra1
-----END PGP SIGNATURE-----

--=-3Z5qJGgAE4yjmlDTP5uO--
