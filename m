Return-Path: <sre@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C22CAA74
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 16:01:17 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 41F71198
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 16:01:17 +0000 (UTC)
Date: Wed, 28 Jun 2017 18:01:12 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170628160112.ip2ambkzlkkoz2ww@earth>
References: <87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626064947.GF23064@atomide.com> <20170626111207.GA11688@amd>
	<20170626114931.GG23064@atomide.com> <20170626131401.GA11980@amd>
	<20170626134904.GH23064@atomide.com> <20170626204932.GA19396@amd>
	<20170627071835.GJ23064@atomide.com>
	<20170627121455.tljtekx6bmzlezxa@earth> <20170627215727.GA5250@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hxipc662vosk35q2"
Content-Disposition: inline
In-Reply-To: <20170627215727.GA5250@amd>
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


--hxipc662vosk35q2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jun 27, 2017 at 11:57:27PM +0200, Pavel Machek wrote:
> Hi!
>=20
> > > > Is GSM connected directly to the audio, or does it need real-time
> > > > task, similar to N900?
> > >=20
> > > The audio mixer is on CPCAP PMIC, and I think mdm6600 modem audio nee=
ds
> > > help from the Linux kernel on the applications processor as it probab=
ly
> > > goes to it first then to CPCAP PMIC. I guess it's possible that mdm66=
00
> > > audio goes directly to CPCAP PMIC too.
> > >=20
> > > I believe LTE modem is connected to the second SPI interface on the
> > > CPCAP PMIC and can use it directly for audio depending on how Linux
> > > kernel configures the PMIC secondary interface device access. What
> > > seems to be a similar PMIC for the CPCAP internal devices is document=
ed
> > > in MC13783UG.pdf on NXP site so that might be worth looking at for
> > > the audio overview.
> >=20
> > GSM audio is connected to the audio codec using digital audio
> > interface. The audio data normally does not flow through the CPU
> > (but as far as I can see it could be routed that way, if desired).
> > So no need for any low latency stuff on CPU side. Actually no need
> > to do anything except for proper setup of modem & audio codec :)
>=20
> Thanks. Droid 4 just got more desirable ;-).
>
> > > > It looks like nice machine. OTOH N950 looks like a nice machine, to=
o,
> > > > and N900 is actually nicer because of the resistive touch, battery,
> > > > and friendly bootloader...
> > >=20
> > > Sure, my n950 just got so worn down I was afraid I don't have any
> > > replacement. And we need some kind of potential community upgrade for
> > > n900/n9/n950 anyways while waiting for better devices :)
> >=20
> > I think Droid4 and N950 are almost on par regarding to mainline
> > support. N900 is has better hardware support in mainline - actually
> > once your camera bits land it reached basically 100% with just the
> > GPU missing. OTOH it's quite slow and has only 256MB of memory.
>=20
> Well, the camera pieces only work with 1.2Mpix resolution... and still
> need a ton of userland code to be useful. But yes, major pieces are
> there, with exception of ... useful audio for voice calls (and tons of
> little omissions and flakiness and bugs).
>=20
> Oh, another major piece is DSP coprocessor that is there. Unlike
> graphics, we don't even know how support for it should like.

https://www.kernel.org/doc/Documentation/remoteproc.txt

config OMAP_REMOTEPROC
	tristate "OMAP remoteproc support"
	[...]
	help
	  Say y here to support OMAP's remote processors (dual M3
	  and DSP on OMAP4) via the remote processor framework.

	  Currently only supported on OMAP4.

	  Usually you want to say Y here, in order to enable multimedia
	  use-cases to run on your platform (multimedia codecs are
	  offloaded to remote DSP processors using this framework).

	  It's safe to say N here if you're not interested in multimedia
	  offloading or just want a bare minimum kernel.

I have been told by some Nokia people (I do not remember who it
was, possibly Sakari), that the DSP is not that powerful and any
calculation should also be possible on CPU (wasting a bit of energy).

> And actually, N950 has working Bluetooth, which gives some
> interesting possibilities, too.

Patches for bluetooth on Droid4 are in -next :)

-- Sebastian

--hxipc662vosk35q2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAllT0sUACgkQ2O7X88g7
+pov2A/+OlVDnrpfGnZ4jaNXGFrwbyCA3TZ+bXT8aU7I4D1ixfdP2rEz9BSORJ0w
a6pHmMxeFEbpswmxa+CmjhyQdtutJyoBdlRUf/7mKU3bsySf8PZ0xKIe9e9rUgbp
Ah7OUOu8WZzDGykqw+M47NWCz4w9eLRt5ltZ13ZMDNXcGdWAJiTLTdEjXlFSozFc
TWKaGE0bzVrUduiGoiLPSNwx7U3W9zHO8PUfh/RuY2BX4Ncu2G3et4RGZvB+8Rt+
dsTZhmpFFmsBPW3BeFdLTjHgABwKoHeFObZXBdf857Ok5a6HfAvkpTHGE5/WwXMG
6Y5DK3SMLFdKh7uMlWg9KDW7bwmB/QxvvHt4XLiHDoNucMifIOPTcoLAT40xKR0F
ANba9Kn0cp5uPOxxROXthA7hVtZaK4UiOEPmOIjX5m2tt4c1Pzv4RcT7CmoK8xw5
v4kGZ4ecZPSsA86uDgmIsyFdMiMPlpK6OBsJl5fp9sn0a8ilPKuu/1Q2e1jurQc3
YhJYJ71NVdJiThA9cWYAJYBNImBk0hZnsA6ai+4v95pakUqmvGBsvpg+R0fmhib3
twfC81OaRbaiO5XR87FO0cFw0qiSDjxirc8qP6C2a5eIGiVsNmszLA/8CpL9XjIf
JKblb/YTDJPdpz+Fex/W4fsEyJaiOxaz3pYbaVnG1teKyrZTqfk=
=B8Rd
-----END PGP SIGNATURE-----

--hxipc662vosk35q2--
