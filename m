Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4DAF7BEE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 10:18:17 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DBE144CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 10:18:16 +0000 (UTC)
Date: Wed, 25 Oct 2017 13:18:13 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Bart Van Assche <Bart.VanAssche@wdc.com>, "greg@kroah.com" <greg@kroah.com>
Message-ID: <20171025101813.GP16127@mtr-leonro.local>
References: <1508924843.4165.6.camel@wdc.com>
	<20171025095403.GA19080@kroah.com>
	<1508926018.4165.12.camel@wdc.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Sk71+Upln2BLuDmg"
Content-Disposition: inline
In-Reply-To: <1508926018.4165.12.camel@wdc.com>
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


--Sk71+Upln2BLuDmg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 25, 2017 at 10:06:59AM +0000, Bart Van Assche wrote:
> On Wed, 2017-10-25 at 11:54 +0200, Greg KH wrote:
> > On Wed, Oct 25, 2017 at 09:47:25AM +0000, Bart Van Assche wrote:
> > > Hello Ted,
> > >
> > > As you most likely know endianness annotations like __be32 can be verified
> > > by the static source code analyzer called sparse. These annotations are a
> > > big help to verify whether endianness conversions in drivers are correct
> > > (e.g. be32_to_cpu()). However, many driver authors either are not familiar
> > > with sparse or do not use it to verify their work. I think we need a way
> > > to encourage driver authors to pay attention to endianness annotations,
> > > e.g. by letting the zero-day kernel test infrastructure verify endianness
> > > annotations. Please consider to add this topic to the kernel summit agenda.
> >
> > Driver subsystem maintainers should know this, and sparse reports should
> > be simple to run and notice these issues.  If you know of a subsystem
> > that is not paying attention to this, please let those maintainers know
> > and send patches to resolve the issues :)
>
> Hi Greg,
>
> A significant challenge is that for several drivers (e.g. drivers/scsi/qla2xxx
> and drivers/infiniband/hw/nes) fixing the endianness annotations is so hard
> that only the driver authors can make these drivers endianness clean. Three
> challenges that have been encountered while trying to make drivers endianness
> clean are:
> - Some driver authors use a single variable to store both cpu-endian and big
>   endian data.
> - Endianness bugs - using a big endian integer where a cpu endian number
>   should have been used or vice versa.
> - The definitive resource for the endianness format is the firmware
>   documentation. For many kernel drivers the firmware documentation is either
>   not available or only available under NDA.

It is e very appealing to fix the driver endianness issues without involving
driver authors, but it is not feasible without their cooperation and it is not
always possible especially for not-active drivers.

Thanks

>
> Bart.
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--Sk71+Upln2BLuDmg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkhr/r4Op1/04yqaB5GN7iDZyWKcFAlnwZOUACgkQ5GN7iDZy
WKcSfw/9FSPXgLLIKkOIr4mn7hJAxMi7LaZlAyoLs8w226rLtETbnqSjNSL4/Shd
wngPnbDvNsca+xPIK75hScs/8h+BS/BQ0sHwuwPd8mSCMS3i60PzeVFo0vwacoyQ
h5LoGN4+RLCK/3GGJ8FQexEfin5tiot+X3efNs5xhmLuGJeNJeV6zyuyu+ablu5C
4+CEVMaelp9sBwi6NjW0cX8qsylXERoGwwRslq18jCn/WbAakhj88TkpGBpw8CGl
R34f89EtUdBLOxKkRCOG+c+XNblUHB+zSujMetVn1ylaECu4688B1vqiaNJ10dji
neGxjmCeSwH2uLL4KnKQuR2TdIs/f/AmNda5kMTtLXTjv/GaeaDXGFTSRNS+rzYA
Ln1Y9PPHc7TgKP0VewCW7DEHhoEiwPXllGdqL60TuVrSahd3vCZjOL2x98M0js34
w2msrTL0nEPZBAfwOGIJCSu/LVJbKg6Zi6xXBeT5WW2jYUsiVTqxBqKKc+B8QavU
BGmGz2DJ0M+Lq8T/GLIeO6kjYN1rQitvwVsRVNeUyFS27A09u5/Cc0dP53/N8DRX
31OAriD6d22YLuFHeRGIGSs03yt7IQKzCIQlSroE7SsyY+oYlIhKVoQ2R++jTPSK
brjlwoUE4HjNI8oI/bsylKwnhXAwzYh3UjXIyE8heRtiJehuCyA=
=BjOT
-----END PGP SIGNATURE-----

--Sk71+Upln2BLuDmg--
