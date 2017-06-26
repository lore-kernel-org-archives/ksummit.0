Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D1BED499
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 05:37:49 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 63022180
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 05:37:49 +0000 (UTC)
Date: Mon, 26 Jun 2017 08:37:43 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Hannes Reinecke <hare@suse.com>
Message-ID: <20170626053743.GY1248@mtr-leonro.local>
References: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m8yuz6kcWj4yJ5vq"
Content-Disposition: inline
In-Reply-To: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] (PCI) driver rebinding
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--m8yuz6kcWj4yJ5vq
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 25, 2017 at 05:39:34PM +0200, Hannes Reinecke wrote:
> Hi all,
>
> here's a thing which came up recently on the SCSI ml:
>
> How should we handle devices with _several_ possible drivers?
>
> Case in point are some HBAs, for which the plan is to have distinct
> drivers for either target or initiator mode.
>
> There are several options how this could be handled:
> - Have a default driver, and manually rebind the 'real' driver once the
> configuration could be read and acted upon.
> That would have the drawback that we do an initialisation in the 'wrong'
> mode, and later have to switch configuration. Which at best will 'just'
> induce some pointless initialisation, at worst confuse attached devices
> to no end. Not to mention introducing lots of interesting races with
> udev and systemd
> - Inhibit default binding, and load the correct drivers after the
> configuration has been read.
> Would be a deviation from the original scenario (where the driver are
> bound/loaded as soon as the device becomes available). Has the drawback
> that one would need to inhibit automatic bindings on the _bus_ level (ie
> PCI), which will be even more interesting.
> - Add some bus-specific (or even general?) device configuration syntax,
> which would allow to pass in the required configuration from the
> command-line (or reasonably early, anyway). For which we need a syntax
> first, anyway. And need to figure out if we can have an abstract syntax
> or would need to have a bus- (or even driver-) specific configuration.

It sounds very similar to devlink, despite that tool was originally introdu=
ced
to net and intended for switches, it works on PCI level with BUS_NAME/BUS_A=
DDRESS
as an handle.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3Dbfcd3a46617209454cfc0947ab093e37fd1e84ef

>
> So no easy way out here, and it might be worth having input from other
> parties. And some might have similar problems (just thinking of
> usb-modeswitch ...), so there might be some synergies to be had.
>
> Cheers,
>
> Hannes
> --
> Dr. Hannes Reinecke		   Teamlead Storage & Networking
> hare@suse.com			               +49 911 74053 688
> SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=FCrnberg
> GF: F. Imend=F6rffer, J. Smithard, J. Guild, D. Upmanyu, G. Norton
> HRB 21284 (AG N=FCrnberg)
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--m8yuz6kcWj4yJ5vq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAllQnacACgkQ5GN7iDZy
WKfe6g/9H/J2vCDNMddLkAdUFMM/y+W75FIDdSWF39F1pu/ZxK5oIHfib26JnqPO
rJt2Tzvk/PzX8ntX+/zXxtp+VyEJjW7oGSLw462QXzFj3vySPXwidEJP/csAZHgy
G9XKw5ApDyeVU8VF1WKpO+tDEpSN8DQnYWI4H5bnZryGn9dfe/0hHPq2nneQr7An
EFhK5rEv+6DQ2ZtPumXPuyMbIFtk1gQWWh+bSMk4Mmp0v/9CfzhF4dsGvCpBv10J
GKAWsQ6JU0iar5vgSyNKd5l/QILs8qinxvoUZ/6X+IL/ATOY02Y+ju6yzUqt9qb/
PRoiEdsvZgAIXGYCCXR0uVgcTAZ+eU7fokGwx/hzzp3WaaF85+0FfKE/F0FOjZDH
pIr0jpyMRXPg3hrdhvCQV/36BsgKRCdjbqEUlLLxMu6U6dxhMHHuIcYGsbDaxe+z
LNlYXL0dvlwm8JzmIQaijeoKpgJ8RhjZklHv+TVeB4afYFlbbTvlwOufW1f9LdBT
7CpwJB2u9brflKO3lOdM+kpd3VZUjvcwOhrCiSkQpmqvbqLDWaxv/7o2VMV+IP5b
+gawhyBIO+P1VhxKJeTHQwJ0EQVsAWJzKkcAAbwosIXuK99SqEauV8luWCbYlJqy
Zu4rR4Yjhr4gMX0XTnr3HYoOTzmxbRcztcsdm3LEumVDb2c0lC4=
=UN3C
-----END PGP SIGNATURE-----

--m8yuz6kcWj4yJ5vq--
