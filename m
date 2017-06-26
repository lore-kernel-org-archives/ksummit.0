Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BB42492B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 08:34:11 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 930FAD3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 08:34:10 +0000 (UTC)
Date: Mon, 26 Jun 2017 10:34:07 +0200
From: Pavel Machek <pavel@ucw.cz>
To: NeilBrown <neilb@suse.com>
Message-ID: <20170626083407.GA9621@amd>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="CE+1k2dSO48ffgeK"
Content-Disposition: inline
In-Reply-To: <87shinzkp9.fsf@notabene.neil.brown.name>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--CE+1k2dSO48ffgeK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > Situation around mobile phones is only improving very slowly. We now
> > have hardware that is supported in the mainline kernel in useful way
> > (Mitac Mio A701, Nokia N900, N9, N950). Graphics acceleration is still
> > missing.
> >
> > But there are major pieces missing: first is userspace. That's not for
> > us to solve. Then there's some kind of hardware abstraction layer;
> > kernel currently does NOT provide enough information for userland to
> > autoconfigure everything.
> >
> > There are big questions about kernel / user interface. We have whole
> > subsystems missing. They include:
> >
> > 1) Who is responsible for shutting machine down on low battery, and
> > not bringing it up unless safe?
>=20
> My laptop hibernates when the battery level gets too low. Why should a
> phone be any different?  User-space monitoring and policy seems a
> suitable answer.

Phone is different... and I'm not talking orderly_shutdown here.

Boot your notebook with init=3D/bin/bash, and launch fsck on low
battery. It will blink, it may beep, but in the end it will power off
abruptly at maybe 3.6V per cell, before battery is damaged. Now try
the same on N900. It will not blink, and it will run battery down to
less then 3.0V; various components will fail, you'll get screen
flicker, and presumably your MMC will be _really_ unhappy. Eventually,
CPU fails, machine reboots, and machine will attempt to do _the same
again_.

Basically we are missing one layer of protection here, compared to the
PC case.

> I think the "not bring up unless safe" decision needs to be made in
> the boot-loader.  Once Linux boots, it tends to turn everything on,
> then the unneeded things back off.  That is no good if all you want to
> do is start the battery charging.  Changing this approach would need
> a lot of work and buy-in from lots of people.  I doubt it will
> happen.

Problem is that bootloader does not even know about battery charging,
and is far from having required drivers. That's why I'd try to get
buy-in ;-).

> > 2) How to handle GSM audio?
>=20
> What is the issue here?  Isn't GSM audio just another audio source/sink
> which user-space can send where-ever it likes?

It is somehow packetized, and has timestamps and gaps in it, I was
told. That's why we use /dev/cmt_speech, not ALSA. Probably ALSA
should be improved.

> > 3) How to handle differences between GSM modems and between GPS
> > receivers? Is AT commands/NMEA good enough? What about AGPS upload?
>=20
> My limited exposure to the different varieties of GSM and GPS protocols
> that are supported suggests that this needs to be done in user-space.
> There isn't any suitable abstract protocol that we could implement in a
> kernel interface.
> gpsd handles multiple GPS protocols and meets a lot of needs.  If it
> isn't perfect, it can probably be improved.

It is not perfect, indeed.

So we currently have GPSes on serial, producing NMEA. Gpsd there may
be good enough. But then we have different hardware, not producing
NMEA (GPS on N900 is exposed as network packet over PHONET
interface, there's drivers/usb/serial/garmin_gps.c with who-knows-what
interface)... and it would be nice to have good, "native" GPS
interface which would work in this case. (We'd like timestamps for
incoming data and lat/long/alt + speed in lat/long/alt + error in
lat/long/alt sampled at the same time, at the very least).

Its similar to mice, really. We used to have gpm, now we have real
drivers.

Plus there's still issue of AGPS data upload.

> An equivalent "gsmd" with pluggable back-ends seems like the right
> approach.  I think there are several contenders already.

ofono is actually quite usable. But we are putting driver in
userspace; bye-bye hardware abstraction, bye-bye using old distro on
new phone.

> > 4) How to handle accelerated RGB LEDs?
>=20
> This does sound like a kernel issue.   The hardware has limited
> programmability so that different patterns and colors are possible.
> Maybe we want to enhance the LED trigger mechanism to apply to
> colour LEDs.
> I guess that we need a concrete proposal so that it can be assessed.

Plus there's an issue of color; all three channels on max will not
produce white color.

> > 5) Do we need suspend-to-RAM to handle power management? If so, how
> > can we handle automatic sleep an still be compatible with Unix?
>=20
> My feeling is that until someone proves otherwise, suspend-to-RAM should
> be assumed necessary.  It should be possible to get the same power
> saving with runtime suspend, but that requires all of user-space to
> co-operated, which is like "herding wild cats".

Well, N900 proves otherwise.

> I don't really know what "compatible with Unix" means in this context.
>=20
> There are really two options:
> 1/ applications which specific cpu-availability needs explicitly
>    after for the CPU to be kept available - i.e. "wake locks"
> 2/ applications that don't have specific cpu-availabilty needs
>    don't use the cpu at all when they don't need it.
>=20
> The first means we suspend-to-RAM, but have "wake lock" calls
> in code.
> The second means that all code is very careful not to be wasteful, and
> we rely on runtime PM.
> Neither are very "Unixy".
>=20
> Is this a kernel issue at all?  User-space can take either approach, and
> struggle with the difficulties.

Well, I believe 2/ is the way to go. But if we decide 1/ is ok, would
not it be nice to have some reasonable interface? After all, your fsck
will need to use it... as will for example trivial program for
computing prime numbers. And what do we do when program exits with
wakelock held? What if it is OOM killed?

Yes, Android has some answers here, I just don't think they are any
good. (As in ... not very Unixy).

In desktop case, we do hardware abstraction right; you can keep old
distro as your hardware is supported by kernel. Would not it be nice
to do the same for phones?

Best regards,

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--CE+1k2dSO48ffgeK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllQxv8ACgkQMOfwapXb+vIm3ACePg6N7n2kklQ1sOPvgCs2yglM
OOoAn26wxoLDh5afMBI0ukSZEAAytf5s
=q5Td
-----END PGP SIGNATURE-----

--CE+1k2dSO48ffgeK--
