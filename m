Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0ADF4C05
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 20:49:36 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9C1E912F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 20:49:34 +0000 (UTC)
Date: Mon, 26 Jun 2017 22:49:32 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Message-ID: <20170626204932.GA19396@amd>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626064947.GF23064@atomide.com> <20170626111207.GA11688@amd>
	<20170626114931.GG23064@atomide.com> <20170626131401.GA11980@amd>
	<20170626134904.GH23064@atomide.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline
In-Reply-To: <20170626134904.GH23064@atomide.com>
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


--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > > > > On Sun, Jun 25 2017, Pavel Machek wrote:
> > > > > > > Situation around mobile phones is only improving very slowly.=
 We now
> > > > > > > have hardware that is supported in the mainline kernel in use=
ful way
> > > > > > > (Mitac Mio A701, Nokia N900, N9, N950). Graphics acceleration=
 is still
> > > > > > > missing.
> > > > >=20
> > > > > Also droid 4 should be getting there eventually too with 3G data =
working
> > > > > and audio driver in progress.
> > > >=20
> > > > Yes, good luck with Droid 4 getting there.=20
> > >=20
> > > Well actually it's sort of already there for some use cases as it's b=
een
> > > usable for me for about a month as a low-power laptop/ssh terminal wi=
th
> > > Linux next and lapdock or hdmi dock :) Typing away with kernel
> > > 4.12.0-rc6-next-20170622 right now.
> >=20
> > Do you have X running in useful configuration?
>=20
> Yeah for most part I'm using X with HDMI, LCD works but there are six
> out of tree omapdrm patches that need more work similar to n950. Also
> the LCD backlight patch is also still pending.

HDMI is nice; that's a feature I'd like. And I guess you also have
real and working USB host?

Anyway I was interested... do you have useful X running on localhost?
I mean... finger is too big to control X applications, and you have
capacitive touchsreen, right?

> > > Personally I just stick to standard mainline kernel and standard
> > > distros so problem solved for me by limiting my use cases..
> >=20
> > Well, I'm currently doing the same. On N900, I have X running (miss
> > right button on the touchscreen, and 800x480 is a bit small),
> > gprs/edge/umts data working, so I have usable ssh and web
> > browser. (But bufferbloat is ugly and reconnections are not handled
> > well). SMSes work. WIFI works (with exception of networkmanager). GPS
> > is usable. Camera is useful, including autofocus, but limited to
> > 1.2MPix. It lasts for a "day" which is good enough.
>=20
> OK to get to that point droid 4 still needs audio calls, camera,
> and GPS at least. And PM needs more work. For reference, Sebastian
> Reichel has pretty good mainline driver status matrix for both n900
> and droid 4 on his website.

Well, camera is something I'm playing with, not a requirement. Can
live without GPS, but would prefer not to. But audio, audio is
mandatory :-).

Ah, thanks for the pointer. Built-in battery is very bad for
debugging, and very bad when PM is not quite finished. But I remember
droid4 was something that disqualified it for European use. Aha, LTE @
700MHz, which is not available here. Hmm, but GSM/UMTS works in v4.12
according to the table, so that's not too bad.

Does ofonod support the modems in an useful way?

Is GSM connected directly to the audio, or does it need real-time
task, similar to N900?

It looks like nice machine. OTOH N950 looks like a nice machine, too,
and N900 is actually nicer because of the resistive touch, battery,
and friendly bootloader...

> > Biggest problem I have now is poor quality of audio calls... Fixing
> > that would enable me to make it my primary phone...
>=20
> That's with HSI modems, right?

Yes.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllRc1wACgkQMOfwapXb+vIiPQCgqKE+Sl0O44dIlYLaUSmqQZ3H
ae8An0uVTXcMt025V8xbHXYvhy8I9NCs
=VvS/
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--
