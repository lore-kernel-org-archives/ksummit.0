Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0F23B9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 13:14:05 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 252D5180
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 13:14:04 +0000 (UTC)
Date: Mon, 26 Jun 2017 15:14:01 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Message-ID: <20170626131401.GA11980@amd>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626064947.GF23064@atomide.com> <20170626111207.GA11688@amd>
	<20170626114931.GG23064@atomide.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="UlVJffcvxoiEqYs2"
Content-Disposition: inline
In-Reply-To: <20170626114931.GG23064@atomide.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.co.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--UlVJffcvxoiEqYs2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > > On Sun, Jun 25 2017, Pavel Machek wrote:
> > > > > Situation around mobile phones is only improving very slowly. We =
now
> > > > > have hardware that is supported in the mainline kernel in useful =
way
> > > > > (Mitac Mio A701, Nokia N900, N9, N950). Graphics acceleration is =
still
> > > > > missing.
> > >=20
> > > Also droid 4 should be getting there eventually too with 3G data work=
ing
> > > and audio driver in progress.
> >=20
> > Yes, good luck with Droid 4 getting there.=20
>=20
> Well actually it's sort of already there for some use cases as it's been
> usable for me for about a month as a low-power laptop/ssh terminal with
> Linux next and lapdock or hdmi dock :) Typing away with kernel
> 4.12.0-rc6-next-20170622 right now.

Do you have X running in useful configuration?

> > > Maybe setting up the battery as a regulator for the drivers would
> > > be the simplest solution to allow drivers to do something when the
> > > battery voltage is low enough?
> >=20
> > Well, I agree that kernel should handle this somehow, but I don't
> > believe drivers should monitor the voltage themselves. We are talking
> > about battery voltages below 3.6V, right? At that point, we are
> > already damaging the battery, and the battery is "soft" meaning
> > voltage will vary with load a lot. Just because voltage was 3.31V few
> > miliseconds before does not mean it is not be 3.1V now.
>=20
> Sure and yes below 3.6V in the MMC case.

Well, battery at 3.6V has < 1% of its capacity remaining. So even
aside from battery damage, your system will not run much longer if you
keep it running.

> > Well, the problem seems to be two fold:
> >=20
> > 1) very few phones have usable kernel support
> >=20
> > (and it is not even clear how the ideal kernel support should look,
> > because kernel/user interfaces are missing or inadequate)
> >
> > 2) normal distributions do not have support for phones
> >=20
> > (-> testing is hard because you have to develop both kernel and
> > userland tests, and motivation is low).
>=20
> Yeah, there are use cases that are not handled that way
> at all currently.
>=20
> Personally I just stick to standard mainline kernel and standard
> distros so problem solved for me by limiting my use cases..

Well, I'm currently doing the same. On N900, I have X running (miss
right button on the touchscreen, and 800x480 is a bit small),
gprs/edge/umts data working, so I have usable ssh and web
browser. (But bufferbloat is ugly and reconnections are not handled
well). SMSes work. WIFI works (with exception of networkmanager). GPS
is usable. Camera is useful, including autofocus, but limited to
1.2MPix. It lasts for a "day" which is good enough.

Biggest problem I have now is poor quality of audio calls... Fixing
that would enable me to make it my primary phone...

Best regards,

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--UlVJffcvxoiEqYs2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllRCJkACgkQMOfwapXb+vKYZQCdFWc/j3eiJoBJeVWlyjjdvBUP
yzkAnR2kJ6wVHGkJRJZNhi/QyKt4NScb
=tAfx
-----END PGP SIGNATURE-----

--UlVJffcvxoiEqYs2--
