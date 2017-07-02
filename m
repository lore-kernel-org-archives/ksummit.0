Return-Path: <sre@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 67F0D2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Jul 2017 11:28:31 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4A05F1CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Jul 2017 11:28:30 +0000 (UTC)
Date: Sun, 2 Jul 2017 13:28:26 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170702112826.zirafz7lbo5lnabd@earth>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626083407.GA9621@amd> <20170627123947.krne6a2saolcndih@earth>
	<20170627215755.GC5250@amd> <20170628164502.itggbf4xuhsv3oyf@earth>
	<20170628211008.GA19571@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="633s4xxfpc7dagkk"
Content-Disposition: inline
In-Reply-To: <20170628211008.GA19571@amd>
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


--633s4xxfpc7dagkk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 28, 2017 at 11:10:08PM +0200, Pavel Machek wrote:
> > > So to be exact... u-boot does not know about battery charging. And
> > > NoLo can only do very, very slow charging.
> >=20
> > Yes. The idea is, that normally NoLo only charges far enough, that
> > Linux can be booted.
> >=20
> > > Yes, unfortunately that does not work quite well here. Voltage goes
> > > too low before Linux can boot, so it resets, but it is still high
> > > enough for the bootloader, so it attempts to boot Linux one more time,
> > > but battery is empty and voltage goes too low before Linux can boot, =
=2E..
> >=20
> > I guess your battery is not the fittest anymore?
>=20
> I guess that's one issue. (One of my batteries is actually so bad that
> GSM modem fails with it.)
>=20
> Well, I guess Debian boots a little longer than Maemo. Plus, I believe
> we should charge the battery from kernel by default; it will enable
> running fsck etc, and it will mean slow userspace boot will not
> break...

That sounds like really bad battery :)

> > > > On N950 there is an unsupported gps connected via i2c iirc (with
> > > > unknown protocol that needs to be RE'd) and TI's WiLink provides
> > > > GPS on a shared UART link with bluetooth-style header using yet
> > > > another protocol. I agree, that we should have a GPS subsystem.
> > >=20
> > > Two GPSes in one box, interesting design. Are both of them connected
> > > to useful antenna?
> >=20
> > Actually there are probably 3 GPS implementations in Droid 4:
> >=20
> >  * WL1285
> >  * MDM6600 modem
> >  * LTE modem
> >=20
> > As far as I understand it modems are required to have GPS access in
> > US. I'm not yet sure which of the implementations is used by Droid 4's
> > stock system, but Motorola explicitly added a driver for the WL1285 GPS
> > making it a likely candidate (The userspace part is a closed source
> > shared object used by Android).
>=20
> Interesting :-). I guess you could do really fair comparison of the
> chipsets.
>=20
> (Binary driver -- bad Motorola :-( )

Yeah :( Note, that Nokia also has binary driver for the N900 (which
had been reverse engineered) and a different on on N950 (which has
not been reverse engineered so far).

> > > +static int generic_protect(struct power_supply *psy)
> > > +{
> > > +	union power_supply_propval val;
> > > +	int res;
> > > +	int mV, mA, mOhm =3D 430, mVadj =3D 0;
> >=20
> > 430 mOhm?
>=20
> Yes, 0.43 Ohm.

What's the source of this value?

-- Sebastian

--633s4xxfpc7dagkk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAllY2NQACgkQ2O7X88g7
+pobFQ/+Itw+Mw+B3TmRMzgr0BzwsjyrVR5miFQ/TZns24mmRwpy2TXaecAeU8iG
mmBXnnJxig1GfkYuKjjqed4cWgWD4fbKr3h5sxFO3rm/qAluVePdrnDe7EaMKULQ
dWsJppr0oJRnxoPW7YIpwA5zhsZlnHQ9z1glJ9OJwFFKfXddYswwOaGdk+0EusWC
CR3Rfuv4uNm0DNcV3KYDZs2LutHGvY81urWinUJyWFWtUtG569rz5iDvIOIKCeOq
wGSyFgQGzC9Y4f0EO7RleTGBE9rbzxQ/uKHoNR+Y3Ydw9CTVEGQNWM2Xo2R6hqbp
yDIvlC6XPd3QJUR6ySx5bLMNo0IqIWhsw+nRaFtMQ0iHPXl+bdJV+ubjKB697C3w
G9VF1CFZljfCtZnClInirZg3QgE3jyu8bR5Ta7oCAWVh7Ok4Yifz+KTTSo/IfThZ
/TcHDlcJjsdgagCLC+dM28W/JRBiDoa/LC0f5h83SjhgCAEAavPnn2AUy9KHE/nh
cWLBL3eTVDQyitnJ477l8MzGSKnNVhNqrW03WNhSGOnwwANDTJnBL7YzOtrQDCnB
Rmpjftr4WiXKC9eOHBPkiWBOFUJsYcJfzo8wP/v3FxyfYUEwfpLFDwblVmQxv1qM
jArxRzg4rAtUKpp69K4d+PGtoU9Afr4ituUU4NxqOZzTsWkg5jE=
=Ts1z
-----END PGP SIGNATURE-----

--633s4xxfpc7dagkk--
