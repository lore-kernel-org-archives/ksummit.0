Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 03F6C98A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 21:10:11 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8343D3CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 21:10:10 +0000 (UTC)
Date: Wed, 28 Jun 2017 23:10:08 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Sebastian Reichel <sre@kernel.org>
Message-ID: <20170628211008.GA19571@amd>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626083407.GA9621@amd> <20170627123947.krne6a2saolcndih@earth>
	<20170627215755.GC5250@amd> <20170628164502.itggbf4xuhsv3oyf@earth>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="AqsLC8rIMeq19msA"
Content-Disposition: inline
In-Reply-To: <20170628164502.itggbf4xuhsv3oyf@earth>
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


--AqsLC8rIMeq19msA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > So to be exact... u-boot does not know about battery charging. And
> > NoLo can only do very, very slow charging.
>=20
> Yes. The idea is, that normally NoLo only charges far enough, that
> Linux can be booted.
>=20
> > Yes, unfortunately that does not work quite well here. Voltage goes
> > too low before Linux can boot, so it resets, but it is still high
> > enough for the bootloader, so it attempts to boot Linux one more time,
> > but battery is empty and voltage goes too low before Linux can boot, ...
>=20
> I guess your battery is not the fittest anymore?

I guess that's one issue. (One of my batteries is actually so bad that
GSM modem fails with it.)

Well, I guess Debian boots a little longer than Maemo. Plus, I believe
we should charge the battery from kernel by default; it will enable
running fsck etc, and it will mean slow userspace boot will not
break...

> > > On N950 there is an unsupported gps connected via i2c iirc (with
> > > unknown protocol that needs to be RE'd) and TI's WiLink provides
> > > GPS on a shared UART link with bluetooth-style header using yet
> > > another protocol. I agree, that we should have a GPS subsystem.
> >=20
> > Two GPSes in one box, interesting design. Are both of them connected
> > to useful antenna?
>=20
> Actually there are probably 3 GPS implementations in Droid 4:
>=20
>  * WL1285
>  * MDM6600 modem
>  * LTE modem
>=20
> As far as I understand it modems are required to have GPS access in
> US. I'm not yet sure which of the implementations is used by Droid 4's
> stock system, but Motorola explicitly added a driver for the WL1285 GPS
> making it a likely candidate (The userspace part is a closed source
> shared object used by Android).

Interesting :-). I guess you could do really fair comparison of the
chipsets.

(Binary driver -- bad Motorola :-( )

> > +static int generic_protect(struct power_supply *psy)
> > +{
> > +	union power_supply_propval val;
> > +	int res;
> > +	int mV, mA, mOhm =3D 430, mVadj =3D 0;
>=20
> 430 mOhm?

Yes, 0.43 Ohm.

> > +	if (mVadj < 3150)
> > +		shutdown("Battery internal voltage below 3.15V.");
> > +=09
> > +	printk(KERN_INFO "Main battery %d mV, internal voltage %d mV\n",
> > +	       mV, mVadj);
>=20
> s/internal voltage/open circuit voltage/g?

Will do.

Best regards,
									Pavel


--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--AqsLC8rIMeq19msA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllUGzAACgkQMOfwapXb+vIhfgCgqQpC3Qp9MuBWfPWw/fXS+z39
W4UAmwRv6HwLTpEpvbqCDyTszMlwH9Ma
=CgcZ
-----END PGP SIGNATURE-----

--AqsLC8rIMeq19msA--
