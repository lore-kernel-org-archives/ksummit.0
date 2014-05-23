Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 82BBBAAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 17:34:21 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 20E0A2026E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 17:34:21 +0000 (UTC)
Date: Fri, 23 May 2014 18:33:44 +0100
From: Mark Brown <broonie@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140523173344.GG22111@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1527482.CPBrbWbyLU@vostro.rjw.lan>
	<20140517132423.GX22111@sirena.org.uk>
	<1785175.GYZBbEJPJC@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wQFNOvpuONRGomCw"
Content-Disposition: inline
In-Reply-To: <1785175.GYZBbEJPJC@vostro.rjw.lan>
Cc: dvhart@dvhart.com, ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
 etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--wQFNOvpuONRGomCw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 19, 2014 at 01:56:33AM +0200, Rafael J. Wysocki wrote:
> On Saturday, May 17, 2014 02:24:23 PM Mark Brown wrote:

> > That's much less invasive than making new APIs.

> But for drivers that call of_get_something() directly I don't see any other
> sensible way forward.  Otherwise each of them will need to do something like

> if (dev->of_node)
> 	use of_get_X()
> else if (ACPI_COMPANION(dev))
> 	use acpi_get_X()
> else
> 	use black magic

> possibly in several places.

OK, but that's basically just the property reading cases (unless we're
doing something fancy involving phandles which is a bit more fun and
less clear that it'll Just Work) - it seems a bit of a shame to have to
churn all the APIs to do it.

--wQFNOvpuONRGomCw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTf4Z1AAoJELSic+t+oim9cvkP/2JKWA1Feyeg4r0Hon3DjDZZ
yznYlCR6DH3Z8KiBhJt7JFO++ftdF1vdrXfmNvB6eyzneEaEccc7SIisr6AsoHmp
sQhJLGe9n3gaRsBRhu1BOskO1tmIwjKkfdsUT3VbH8wqWXmlNPTVecV+JDIDBdl/
pWLA6hIHs6ntM4MYSZjfmD8XgLnvFjrT9DTi7EkyCA844kDs4E1vyOSYliBghpr7
4aE89xYPRZ4w846GvAc21WzsP8t6vqYqxbePskoI405513IR8uKoIkvU+SPX35GP
Yjm730nT0b16Th1VArDbdMUKKwp0HcTSP/4yT+T/lT9B+Ersna7sPtCcYuiayUzB
XUPVScn/9phgKHCLAt07otueI7ck4E7PnDsWDAowKwPY+BCiwi/pLLYh4Ow6P89C
i9i3S9iRVj8k/KEpvODzP+We4xdh4FxhY31qGk7clXXIFdIJKzZqS0+H5tQbpNLv
QrxtzdxRZqi8lmfReqLh9hFaJqDO7zxqqSXJqBMektZgnPxBTdSSm4WlkiF+N8Kd
5ZJLJyKpFCiS5lBwL0L/oDirY76kV48oGmce7t3sxuvCbuhNGczZAePVaYhDEUUp
OxlXkz977TpJIKDCnxZDA1eOukl3bdudiX13Qc/A/BqL6RJT5xJrvSZlKeLqY5By
ZACEhVbpfslNoTXVuLax
=y9yo
-----END PGP SIGNATURE-----

--wQFNOvpuONRGomCw--
