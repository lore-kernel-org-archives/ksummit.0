Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 86536995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 15:52:17 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E21F41FD47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 15:52:16 +0000 (UTC)
Date: Fri, 9 May 2014 16:51:53 +0100
From: Mark Brown <broonie@sirena.org.uk>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20140509155153.GQ12304@sirena.org.uk>
References: <20140502173309.GB725@redhat.com>
	<20140502190301.GW3245@sirena.org.uk>
	<3908561D78D1C84285E8C5FCA982C28F327F5D80@ORSMSX114.amr.corp.intel.com>
	<20140502210340.GZ3245@sirena.org.uk>
	<1399466106.2996.102.camel@shinybook.infradead.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="k5HGwrZ1lBXOsdp3"
Content-Disposition: inline
In-Reply-To: <1399466106.2996.102.camel@shinybook.infradead.org>
Cc: Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--k5HGwrZ1lBXOsdp3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 07, 2014 at 01:35:06PM +0100, David Woodhouse wrote:
> On Fri, 2014-05-02 at 14:03 -0700, Mark Brown wrote:

> > That works for specific processes but I don't immediately see a
> > straightforward way to do it system wide (I guess a wrapper that straces
> > init and children might do the trick but it's not particularly nice).
> > Part of the trick for getting the general security win is to lower the
> > barrier to entry.`

> You can do it relatively easily with auditing, surely? Set up an audit
> rule for each syscall you aren't already sure is in use. Disable the
> rule when you see it used, and it shouldn't even have much of an
> overhead over and above what it takes to have auditing enabled in the
> first place (which we tried to keep to a minimum).

I suspect that's got too high a barrier to entry for a lot of users,
especially since AFAICT it requires userspace tools on the target
system.  It should work though.

--k5HGwrZ1lBXOsdp3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTbPmWAAoJELSic+t+oim9LNMP/j1PSwF/tp8d4DelAUUoc9G6
xVRl22fGKScbsYRVH8sgI8DHzU/aFAW0ArATgbiG1oUe2rbfWCT97QEKKMM5Lc/5
hQqsjDqfJ9DS20HG0/OnsNPEDWZSuNMSBwgL+9957A3hbrtzvFvOLT4bXsf7ZiSh
NVwfJM8Ay2/ireqsb/z+t5GFlnUB0rfn8Fpq2yIpxFd3Yi5lmNIpxzQTidfb2OZX
SzVV7D83IAiJ/tjjIIPEEAwK+t3YDRiAIefVvWfBd2yBbnDwL1d8JWFtDFdmPtoN
+OHt18Digff8EtRtxgn8uzrsVyhaKNAPn5kAIwjcEfIPZT/yQndVH4xnvSeDTRcs
amj4w+ROIZZJwF3m1HQ+qLcyqW3RDFTo0LmFo1h/JRPu6W0a54v0+LzZhmJjtfaR
fGYgW0F5l6xgRV+asOMxqZjkS2APO5z0koiIdGG/GrnGSznROXq7YERRCp4q0zYm
KT2XIjJ9CJr1XoqPc89osj95ZIqXiWMTb2FJ8QZGV5hGnPZlH69f5DNmUieqBK6F
J3zuhGSH/f9ZTfj/hF6uFBIEd401eME0q0Pkfdl7BbNB/qRZ1BlaJb0Ivxbl5C6r
s7PYGtTbLn0WF7kT66zoqJ2qUqvjggbVZeWbErTKOYJY0IsGiCEuAaeCYMjmBC9K
VrPlwbMC8t3o9IozdUOg
=LUn7
-----END PGP SIGNATURE-----

--k5HGwrZ1lBXOsdp3--
