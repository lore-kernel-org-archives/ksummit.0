Return-Path: <sre@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7EAC4AB8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 16:45:06 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CC8E4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 16:45:05 +0000 (UTC)
Date: Wed, 28 Jun 2017 18:45:02 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170628164502.itggbf4xuhsv3oyf@earth>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626083407.GA9621@amd> <20170627123947.krne6a2saolcndih@earth>
	<20170627215755.GC5250@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5woe65cu7pzh3jsc"
Content-Disposition: inline
In-Reply-To: <20170627215755.GC5250@amd>
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


--5woe65cu7pzh3jsc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 27, 2017 at 11:57:55PM +0200, Pavel Machek wrote:
> Hi!
>=20
> > > Boot your notebook with init=3D/bin/bash, and launch fsck on low
> > > battery. It will blink, it may beep, but in the end it will power off
> > > abruptly at maybe 3.6V per cell, before battery is damaged. Now try
> > > the same on N900. It will not blink, and it will run battery down to
> > > less then 3.0V; various components will fail, you'll get screen
> > > flicker, and presumably your MMC will be _really_ unhappy. Eventually,
> > > CPU fails, machine reboots, and machine will attempt to do _the same
> > > again_.
> > >=20
> > > Basically we are missing one layer of protection here, compared to the
> > > PC case.
> >=20
> > It should be fine to add something like Tony's orderly_poweroff to
> > the rx51 battery driver.
>=20
> Yep, I actually have a patch for that. Needs some cleanups, but if it
> is basically acceptable, there's no problem doing them. Aha, and
> probably breaks boot or something, that's why I disable it. But you
> should get the idea...
>=20
> > > Problem is that bootloader does not even know about battery charging,
> > > and is far from having required drivers. That's why I'd try to get
> > > buy-in ;-).
> >=20
> > Actually Nokia Loader does know about battery charging and does so
> > for really empty batteries. Once the battery is full enough it tries
> > to boot operating system with better monitoring capabilities,
> > though.
>=20
> So to be exact... u-boot does not know about battery charging. And
> NoLo can only do very, very slow charging.

Yes. The idea is, that normally NoLo only charges far enough, that
Linux can be booted.

> Yes, unfortunately that does not work quite well here. Voltage goes
> too low before Linux can boot, so it resets, but it is still high
> enough for the bootloader, so it attempts to boot Linux one more time,
> but battery is empty and voltage goes too low before Linux can boot, ...

I guess your battery is not the fittest anymore?

> > > It is not perfect, indeed.
> > >=20
> > > So we currently have GPSes on serial, producing NMEA. Gpsd there may
> > > be good enough. But then we have different hardware, not producing
> > > NMEA (GPS on N900 is exposed as network packet over PHONET
> > > interface, there's drivers/usb/serial/garmin_gps.c with who-knows-what
> > > interface)... and it would be nice to have good, "native" GPS
> > > interface which would work in this case. (We'd like timestamps for
> > > incoming data and lat/long/alt + speed in lat/long/alt + error in
> > > lat/long/alt sampled at the same time, at the very least).
> > >=20
> > > Its similar to mice, really. We used to have gpm, now we have real
> > > drivers.
> > >=20
> > > Plus there's still issue of AGPS data upload.
> >=20
> > On N950 there is an unsupported gps connected via i2c iirc (with
> > unknown protocol that needs to be RE'd) and TI's WiLink provides
> > GPS on a shared UART link with bluetooth-style header using yet
> > another protocol. I agree, that we should have a GPS subsystem.
>=20
> Two GPSes in one box, interesting design. Are both of them connected
> to useful antenna?

Actually there are probably 3 GPS implementations in Droid 4:

 * WL1285
 * MDM6600 modem
 * LTE modem

As far as I understand it modems are required to have GPS access in
US. I'm not yet sure which of the implementations is used by Droid 4's
stock system, but Motorola explicitly added a driver for the WL1285 GPS
making it a likely candidate (The userspace part is a closed source
shared object used by Android).

>=20
> Best regards,
> 								Pavel
>=20
>=20
> diff --git a/drivers/power/supply/bq27xxx_battery.c b/drivers/power/suppl=
y/bq27xxx_battery.c
> index 398801a..db9c69e 100644
> --- a/drivers/power/supply/bq27xxx_battery.c
> +++ b/drivers/power/supply/bq27xxx_battery.c
> @@ -52,6 +52,7 @@
>  #include <linux/delay.h>
>  #include <linux/platform_device.h>
>  #include <linux/power_supply.h>
> +#include <linux/reboot.h>
>  #include <linux/slab.h>
>  #include <linux/of.h>
> =20
> @@ -808,11 +809,9 @@ static inline int bq27xxx_read(struct bq27xxx_device=
_info *di, int reg_index,
>  static int bq27xxx_battery_read_soc(struct bq27xxx_device_info *di)
>  {
>  	int soc;
> +	bool single =3D di->chip =3D=3D BQ27000 || di->chip =3D=3D BQ27010;
> =20
> -	if (di->chip =3D=3D BQ27000 || di->chip =3D=3D BQ27010)
> -		soc =3D bq27xxx_read(di, BQ27XXX_REG_SOC, true);
> -	else
> -		soc =3D bq27xxx_read(di, BQ27XXX_REG_SOC, false);
> +	soc =3D bq27xxx_read(di, BQ27XXX_REG_SOC, single);
> =20
>  	if (soc < 0)
>  		dev_dbg(di->dev, "error reading State-of-Charge\n");
> @@ -876,11 +875,9 @@ static inline int bq27xxx_battery_read_fcc(struct bq=
27xxx_device_info *di)
>  static int bq27xxx_battery_read_dcap(struct bq27xxx_device_info *di)
>  {
>  	int dcap;
> +	bool single =3D di->chip =3D=3D BQ27000 || di->chip =3D=3D BQ27010;
> =20
> -	if (di->chip =3D=3D BQ27000 || di->chip =3D=3D BQ27010)
> -		dcap =3D bq27xxx_read(di, BQ27XXX_REG_DCAP, true);
> -	else
> -		dcap =3D bq27xxx_read(di, BQ27XXX_REG_DCAP, false);
> +	dcap =3D bq27xxx_read(di, BQ27XXX_REG_DCAP, single);
> =20
>  	if (dcap < 0) {
>  		dev_dbg(di->dev, "error reading initial last measured discharge\n");
> @@ -1061,10 +1058,10 @@ static int bq27xxx_battery_read_health(struct bq2=
7xxx_device_info *di)
>  	/* Unlikely but important to return first */
>  	if (unlikely(bq27xxx_battery_overtemp(di, flags)))
>  		return POWER_SUPPLY_HEALTH_OVERHEAT;
> -	if (unlikely(bq27xxx_battery_undertemp(di, flags)))
> -		return POWER_SUPPLY_HEALTH_COLD;
>  	if (unlikely(bq27xxx_battery_dead(di, flags)))
>  		return POWER_SUPPLY_HEALTH_DEAD;
> +	if (unlikely(bq27xxx_battery_undertemp(di, flags)))
> +		return POWER_SUPPLY_HEALTH_COLD;
> =20
>  	return POWER_SUPPLY_HEALTH_GOOD;
>  }
> @@ -1122,6 +1119,49 @@ void bq27xxx_battery_update(struct bq27xxx_device_=
info *di)
>  }
>  EXPORT_SYMBOL_GPL(bq27xxx_battery_update);
> =20
> +static void shutdown(char *reason)
> +{
> +	pr_alert("%s Forcing shutdown\n", reason);
> +	orderly_poweroff(true);
> +}
> +
> +static int generic_protect(struct power_supply *psy)
> +{
> +	union power_supply_propval val;
> +	int res;
> +	int mV, mA, mOhm =3D 430, mVadj =3D 0;

430 mOhm?

> +	res =3D psy->desc->get_property(psy, POWER_SUPPLY_PROP_HEALTH, &val);
> +	if (res)
> +		return res;
> +
> +	if (val.intval =3D=3D POWER_SUPPLY_HEALTH_OVERHEAT)
> +		shutdown("Battery overheat.");
> +	if (val.intval =3D=3D POWER_SUPPLY_HEALTH_DEAD)
> +		shutdown("Battery dead.");
> +
> +	res =3D psy->desc->get_property(psy, POWER_SUPPLY_PROP_VOLTAGE_NOW, &va=
l);
> +	if (res)
> +		return res;
> +	mV =3D val.intval / 1000;
> +
> +	if (mV < 2950)
> +		shutdown("Battery below 2.95V.");
> +
> +	res =3D psy->desc->get_property(psy, POWER_SUPPLY_PROP_CURRENT_NOW, &va=
l);
> +	if (res)
> +		return res;
> +	mA =3D val.intval / 1000;
> +	mVadj =3D mV + (mA * mOhm) / 1000;
> +
> +	if (mVadj < 3150)
> +		shutdown("Battery internal voltage below 3.15V.");
> +=09
> +	printk(KERN_INFO "Main battery %d mV, internal voltage %d mV\n",
> +	       mV, mVadj);

s/internal voltage/open circuit voltage/g?

> +	return 0;
> +}
> +
>  static void bq27xxx_battery_poll(struct work_struct *work)
>  {
>  	struct bq27xxx_device_info *di =3D
> @@ -1129,6 +1169,7 @@ static void bq27xxx_battery_poll(struct work_struct=
 *work)
>  				     work.work);
> =20
>  	bq27xxx_battery_update(di);
> +	//generic_protect(di->bat);
> =20
>  	if (poll_interval > 0)
>  		schedule_delayed_work(&di->work, poll_interval * HZ);
> @@ -1226,8 +1267,8 @@ static int bq27xxx_battery_capacity_level(struct bq=
27xxx_device_info *di,
>  }
> =20
>  /*
> - * Return the battery Voltage in millivolts
> - * Or < 0 if something fails.
> + * Set val->intval to the battery Voltage in millivolts.
> + * Return < 0 if something fails.
>   */
>  static int bq27xxx_battery_voltage(struct bq27xxx_device_info *di,
>  				   union power_supply_propval *val)
>=20

-- Sebastian

--5woe65cu7pzh3jsc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAllT3QgACgkQ2O7X88g7
+pqHRw//TWSQkxwuadAg1ErpYLBawuWyS/Eu48zf6JSULvZTeVBpZNNQJ3UZn9Rm
texyJ490EbzjSn+/ndcSIU7vjMsOw2xgfIePD25qaKhNfjlQ55JFY0dD8Yv0uoKj
1izCSWQZzCEcBS3SLsiWP+Xvowu/zaRtZC1189Hnhwxccp8zqC1mCFEwZZ2xlI0P
vpCFXeIPV13XruyIcGgt/yuo6sj7Y6FqYC91HjGJ8yCqiqBYqS2gXMlDqI1Ayzkx
eZG/bAMKz5a/DXS4qVIwMW/ms+0ZIY/ZNcRbCOLBKofHt9L8liqfBS1C84xmAYwC
c0gBucm9KX7Hoa8M//Dow9wepsoZ70OudrocMVGcHBoct7d8sDG02RsyuvT8YwX9
hdQYd47TqPZN1advDBQe25RCKmqRwASCQx+mdeWPyayQzpM4PAnb7ik0siU1wsse
xwW0NZqsw3bJ4QRTWTFfI5bNOMXaEGerro9lIAvQFBSF+DeF8YxhdOtgwZBNQUQK
49ZL1o+kkUxxQTE+Mi21QdBX2c/3PHy1GfMbFYtC50/QtWgInVKjuPBxcOjSgHPA
Uq50Hk1thNfcO2prmxhq6Yv7t3DvniMuXvKsI9HM8enA///xT+fSzaVQU6j1HaFm
ARGHz0GJV/Nkr6RNqBCsgOm0K9NhV3pt1GmszYZO8W47U+DPUPg=
=UWoN
-----END PGP SIGNATURE-----

--5woe65cu7pzh3jsc--
