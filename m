Return-Path: <sebastian.reichel@collabora.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E2EF48E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 12:15:00 +0000 (UTC)
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4EF13125
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 12:15:00 +0000 (UTC)
Date: Tue, 27 Jun 2017 14:14:55 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.co.uk>
To: Tony Lindgren <tony@atomide.com>
Message-ID: <20170627121455.tljtekx6bmzlezxa@earth>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626064947.GF23064@atomide.com> <20170626111207.GA11688@amd>
	<20170626114931.GG23064@atomide.com> <20170626131401.GA11980@amd>
	<20170626134904.GH23064@atomide.com> <20170626204932.GA19396@amd>
	<20170627071835.GJ23064@atomide.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jruozkgwahg3n4nz"
Content-Disposition: inline
In-Reply-To: <20170627071835.GJ23064@atomide.com>
Cc: ksummit-discuss@lists.linuxfoundation.org, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--jruozkgwahg3n4nz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jun 27, 2017 at 12:18:36AM -0700, Tony Lindgren wrote:
> > Does ofonod support the modems in an useful way?
>=20
> No idea, I've only used qmicli so far.

There is a qmi plugin for ofono, but I also just used qmi utils [0]
so far.

[0] https://packages.debian.org/sid/libqmi-utils

> > Is GSM connected directly to the audio, or does it need real-time
> > task, similar to N900?
>=20
> The audio mixer is on CPCAP PMIC, and I think mdm6600 modem audio needs
> help from the Linux kernel on the applications processor as it probably
> goes to it first then to CPCAP PMIC. I guess it's possible that mdm6600
> audio goes directly to CPCAP PMIC too.
>=20
> I believe LTE modem is connected to the second SPI interface on the
> CPCAP PMIC and can use it directly for audio depending on how Linux
> kernel configures the PMIC secondary interface device access. What
> seems to be a similar PMIC for the CPCAP internal devices is documented
> in MC13783UG.pdf on NXP site so that might be worth looking at for
> the audio overview.

GSM audio is connected to the audio codec using digital audio
interface. The audio data normally does not flow through the CPU
(but as far as I can see it could be routed that way, if desired).
So no need for any low latency stuff on CPU side. Actually no need
to do anything except for proper setup of modem & audio codec :)

> > It looks like nice machine. OTOH N950 looks like a nice machine, too,
> > and N900 is actually nicer because of the resistive touch, battery,
> > and friendly bootloader...
>=20
> Sure, my n950 just got so worn down I was afraid I don't have any
> replacement. And we need some kind of potential community upgrade for
> n900/n9/n950 anyways while waiting for better devices :)

I think Droid4 and N950 are almost on par regarding to mainline
support. N900 is has better hardware support in mainline - actually
once your camera bits land it reached basically 100% with just the
GPU missing. OTOH it's quite slow and has only 256MB of memory.

-- Sebastian

--jruozkgwahg3n4nz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAllSTDwACgkQ2O7X88g7
+poB8Q/+NNcTX9Kkn443F969RnWRNpujuKgSRJOx1Du7F5dJTe4Lt9T7QwAm4F4/
NTBg5T0cfnm0PaQVVadvVApz6Tk2KyM1nIXQRi/PSGaln3kjeX34IgsjmH0qx0AR
o4fJmrMLY0spRR26oI1Ie+ESGaTHToFDsIKjfrbuNSzOAWP4R38YgADRuDJ6m9sF
ZF7S23KrMUOgfFPcqbmpDgGVGimJ2IYS0Z6V/pujNMxk7Gw6/r0Iar1eLlXoD3jI
IlxyJEgj7TfW7gP2VOtDeumSUM2WPAFIhLXbndI1i1+3gKd87DQ8NMOFq3whquhJ
S4wbuTkNtp5FpvV9iW6TcKj9BlZP2gTvbG9Td46Kv3l1EHA1hKbJTAKSsmhV3JPv
oi/hI5b452bMpW89gcpCxAuwU0VgWHkxw2DxTPvOeDWiIm2dTiviWYYziRWYb25X
zxNaDSzrNU7blDWm/ni/13Eq3F5ZCdoe+f+1HHoO5/qTs9ylJ6umy9mOnPCn9hun
mL+Zv+S7QUJCHAD1HP+lahH2ZdEyB3WK+cZWiXEP5KcDlx7mb6L8SIy1rXl6IdeC
3MyEBzc0D/SiGaCmmqz3UMWCpNdGZQFSBAFUZN4TK+Vh/hFpE+J4I6EzeaCgIAaC
ZWXaf0UvEWPD+Sb2bt0lJ0NiGMGk5SOWDYEU5nUfYJF7mE1+Uc8=
=FO/1
-----END PGP SIGNATURE-----

--jruozkgwahg3n4nz--
