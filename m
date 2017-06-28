Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EF26D8CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 16:25:05 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E7046198
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 16:25:04 +0000 (UTC)
Date: Wed, 28 Jun 2017 18:25:03 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20170628162502.GA23902@amd>
References: <20170625104850.GA24717@amd>
	<CACRpkdYA6Tai+dAJ8Q2w_xEJonuDtHdUnTeJze_8JyX43KntPQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
In-Reply-To: <CACRpkdYA6Tai+dAJ8Q2w_xEJonuDtHdUnTeJze_8JyX43KntPQ@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--wac7ysb48OaltWcw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> just annoying you all with my thoughts on $SUBJECT.

:-).

>=20
> On Sun, Jun 25, 2017 at 12:48 PM, Pavel Machek <pavel@ucw.cz> wrote:
>=20
> > Situation around mobile phones is only improving very slowly. We now
> > have hardware that is supported in the mainline kernel in useful way
> > (Mitac Mio A701, Nokia N900, N9, N950).
>=20
> I have been trying to get the Qualcomm original DragonBoard working
> with the mainline kernel. It is nice in this sense, because it has a
> mobile phone(-ish) form-factor.
> https://dflund.se/~triad/krad/dragonboard/
>=20
> The problem I have in general, is that I got this development board
> at DesignWest in 2012, and already the Qualcomm people are sort of
> indicating to me that they consider the product so ancient that it
> is

The problem is called "Qualcomm". Other vendors actually care about
mainline and support their boards longer. (TI).

And yes, that means I'm running hardware from 2009. And yes, TI
probably regrets me getting that hardware :-).

> the case for Android devices. Having upstream drivers and using the
> kernel ABI as the hardware abstraction is the key to achieving that,
> and it's weird this is so hard for some to see. Google definitely have
> a role to play here.

Well, Android already has ABI abstraction layer, even projects like
Jolla and Ubuntu phone use it, IIRC, basically running Android in
chroot.

I agree that's not the way to go... but I don't think Google is going
to help us here. Community will have to do it "itself", and then maybe
Google + hw vendors will join.

> > Plus of course, there's a lot of work to be done to get different
> > phones supported.
>=20
> I'd be happy if I could "just" compile and boot the latest kernel with
> the latest AOSP (Android Open Source Project) on the Nokia n900 or
> n950 and use it as a smartphone. I would even accept an out-of-tree
> GPU driver since everything and its dog requires 3D acceleration these
> days. Maybe it would nit even drain the battery in 5 minutes and that
> would be GREAT.
>=20
> As far as I know we not even close to anything like that. Or are there
> people actually booting Android on these? Or any other phone form-factor
> device running a mainline Linux+Android?

Well, people are running N900 + old Android. And there are maintained
patches to keep original Maemo running on recent kernels (Pali Rohar
has them). I will _not_ touch Android, not with 10 foot pole, but
latest AOSP on N900 should be doable for someone with Android
experience and some free time..

> (Insert compulsory do-not-assume-Android, this other $MOBILE_OS
> with 0.001% market share is so much more interesting-rant here.
> I am talking about what mobile users realistically expects to be able
> to run.)

How does Debian sound? Because that's what I run on N900. And most of
the stuff works, with voice calls being too poor quality...

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--wac7ysb48OaltWcw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllT2F4ACgkQMOfwapXb+vI/KQCfcco33CeYJ0FafsNN5TNYd8Y/
OrwAn1iQb4nZsREBDvIslO5Rw+XjdOjw
=kx4d
-----END PGP SIGNATURE-----

--wac7ysb48OaltWcw--
