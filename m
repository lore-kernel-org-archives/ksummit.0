Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 00A84970
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 11:12:11 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E9B6626A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 11:12:09 +0000 (UTC)
Date: Mon, 26 Jun 2017 13:12:07 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Message-ID: <20170626111207.GA11688@amd>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626064947.GF23064@atomide.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline
In-Reply-To: <20170626064947.GF23064@atomide.com>
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


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Sun 2017-06-25 23:49:47, Tony Lindgren wrote:
> * NeilBrown <neilb@suse.com> [170625 16:56]:
> > On Sun, Jun 25 2017, Pavel Machek wrote:
> > > Situation around mobile phones is only improving very slowly. We now
> > > have hardware that is supported in the mainline kernel in useful way
> > > (Mitac Mio A701, Nokia N900, N9, N950). Graphics acceleration is still
> > > missing.
>=20
> Also droid 4 should be getting there eventually too with 3G data working
> and audio driver in progress.

Yes, good luck with Droid 4 getting there.=20

> > > But there are major pieces missing: first is userspace. That's not for
> > > us to solve. Then there's some kind of hardware abstraction layer;
> > > kernel currently does NOT provide enough information for userland to
> > > autoconfigure everything.
> > >
> > > There are big questions about kernel / user interface. We have whole
> > > subsystems missing. They include:
> > >
> > > 1) Who is responsible for shutting machine down on low battery, and
> > > not bringing it up unless safe?
> >=20
> > My laptop hibernates when the battery level gets too low. Why should a
> > phone be any different?  User-space monitoring and policy seems a
> > suitable answer.
>=20
> Some of the battery monitors actually have a low battery and almost
> empty battery interrupts that can be used to do orderly_reboot().
>=20
> If no interrupts exist, we should probably have kernel based
> low voltage monitoring and batteryd/libbattery as documented in
> Documentation/power/power_supply_class.txt.
>=20
> The reason why I think we need kernel based voltage monitoring for is
> that some devices may need a higher voltage for the MMC file system
> for example while the rest of the system could still keep running with
> a lower voltage and file system corruption can happen.
>=20
> Maybe setting up the battery as a regulator for the drivers would
> be the simplest solution to allow drivers to do something when the
> battery voltage is low enough?

Well, I agree that kernel should handle this somehow, but I don't
believe drivers should monitor the voltage themselves. We are talking
about battery voltages below 3.6V, right? At that point, we are
already damaging the battery, and the battery is "soft" meaning
voltage will vary with load a lot. Just because voltage was 3.31V few
miliseconds before does not mean it is not be 3.1V now.

We are already damaging the battery, and I believe right solution is
to either shut down or put the machine into deep sleep, and wait for
power to be reapplied.=20

> > > Plus of course, there's a lot of work to be done to get different
> > > phones supported.
>=20
> Yeah it's the typical Linux kernel popularity contest where the devices
> that people use get (and should get) more support. We've already seen
> who little the vendors care about upstreaming support for their
> devices, probably no easy way around that.

Well, the problem seems to be two fold:

1) very few phones have usable kernel support

(and it is not even clear how the ideal kernel support should look,
because kernel/user interfaces are missing or inadequate)

2) normal distributions do not have support for phones

(-> testing is hard because you have to develop both kernel and
userland tests, and motivation is low).

Best regards,
								Pavel

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--qDbXVdCdHGoSgWSk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllQ7AcACgkQMOfwapXb+vJNLgCfQkShSmg14aUF5dTaIB5zT9bv
/+gAoMIWN6gbWB9TP1U7Ve3RLJmcoe71
=GzRS
-----END PGP SIGNATURE-----

--qDbXVdCdHGoSgWSk--
