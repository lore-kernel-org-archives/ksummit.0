Return-Path: <leonro@mellanox.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4B7FFBDB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 10:24:32 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-ve1eur01on0083.outbound.protection.outlook.com [104.47.1.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2F7C7203
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 10:24:31 +0000 (UTC)
Date: Wed, 25 Oct 2017 13:24:23 +0300
From: Leon Romanovsky <leonro@mellanox.com>
To: "greg@kroah.com" <greg@kroah.com>
Message-ID: <20171025102423.GQ16127@mtr-leonro.local>
References: <1508924843.4165.6.camel@wdc.com>
	<20171025095403.GA19080@kroah.com>
	<1508926018.4165.12.camel@wdc.com>
	<20171025101355.GA22977@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tuFXEhzhBeitrIAu"
Content-Disposition: inline
In-Reply-To: <20171025101355.GA22977@kroah.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] How to encourage driver authors
 to annotate integer endianness properly
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--tuFXEhzhBeitrIAu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 25, 2017 at 12:13:55PM +0200, greg@kroah.com wrote:
> On Wed, Oct 25, 2017 at 10:06:59AM +0000, Bart Van Assche wrote:
> > On Wed, 2017-10-25 at 11:54 +0200, Greg KH wrote:
> > > On Wed, Oct 25, 2017 at 09:47:25AM +0000, Bart Van Assche wrote:
> > > > Hello Ted,
> > > >
> > > > As you most likely know endianness annotations like __be32 can be verified
> > > > by the static source code analyzer called sparse. These annotations are a
> > > > big help to verify whether endianness conversions in drivers are correct
> > > > (e.g. be32_to_cpu()). However, many driver authors either are not familiar
> > > > with sparse or do not use it to verify their work. I think we need a way
> > > > to encourage driver authors to pay attention to endianness annotations,
> > > > e.g. by letting the zero-day kernel test infrastructure verify endianness
> > > > annotations. Please consider to add this topic to the kernel summit agenda.
> > >
> > > Driver subsystem maintainers should know this, and sparse reports should
> > > be simple to run and notice these issues.  If you know of a subsystem
> > > that is not paying attention to this, please let those maintainers know
> > > and send patches to resolve the issues :)
> >
> > Hi Greg,
> >
> > A significant challenge is that for several drivers (e.g. drivers/scsi/qla2xxx
> > and drivers/infiniband/hw/nes) fixing the endianness annotations is so hard
> > that only the driver authors can make these drivers endianness clean.
>
> Then ask them to do so, and if they will not, then mark the drivers in
> Kconfig so they do not get built for big endian platforms.
>
> > Three challenges that have been encountered while trying to make
> > drivers endianness clean are:
> > - Some driver authors use a single variable to store both cpu-endian and big
> >   endian data.
> > - Endianness bugs - using a big endian integer where a cpu endian number
> >   should have been used or vice versa.
> > - The definitive resource for the endianness format is the firmware
> >   documentation. For many kernel drivers the firmware documentation is either
> >   not available or only available under NDA.
>
> These problems are not "new" at all, it's been this way for 20+ years now :)

The major difference between past and current is in the tools, they evolved.

>
> Oh, and the maintainers summit is already half over, and the schedule is
> full from what I can tell...

There is one open TBD slot.

>
> thanks,
>
> greg k-h
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--tuFXEhzhBeitrIAu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAlnwZlcACgkQ5GN7iDZy
WKcXDRAAvp76ZmrFlJ6ZDqzGJ0NPjG4BweRDIB9Bctkr2r71vpvMjtczRaxdcaGs
3n/04TuB+GidKyiA2r+dlcGPSBQ9VNUUQbg4DqS4dr8ulZKAd5+Ur7wJET8TzX5r
0X7Kaifeiunhh6iQbGWtQIR7kWdbnm5+e1G/TjLunFJNZy6lUVfpB0474c1+Wr4d
Dfu5nw+NwHSDq9cOtlwtSPPnO4Uwk7SlpH3QMnkuFvUZF3+nq8TWt6HHwXMCUgo+
SkF0GfTjvTdbrpPEzAoUvDfzN5J7HCc2s4SRJGOJp6Q89s4YlOqrchdXXimX3bMA
AIA6ABLWgFR30DCT61gllIn+FWlWhf5voKLL9ZCO7Go61DDQxf8AgaYchzMHKSqd
LNP5j/1ir4cGaxxunZaKJyF94SYUJSr5ycH+0o2yDITYqwrOb7yS4ztb5nXMEJed
yhZxzwrCmsRkpNTte0ghhJ+gb9HxASjQOnRbh40auQGKa4WKZA83Mqmux/aB2s2b
xvCRhuFA/hpOsaqbYz/dBWOeW/tZiCrKcjPMe6GSv84fmKML+jBQx1LZHBp1aYW8
9WI4f5tswXNZnlqSv7FXn9IT5XAwDoAKklFOXCw7OFacyMe7yxrHL8AiVOidyO7j
DCEby6JDnuKGcZCXcvCFKZgBq8VdnhznurI/ESDXc5OvRByiNjY=
=L/jY
-----END PGP SIGNATURE-----

--tuFXEhzhBeitrIAu--
