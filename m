Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 11901711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 10:41:07 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8A1861F93F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 10:41:06 +0000 (UTC)
Date: Wed, 13 Aug 2014 11:40:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Grant Likely <grant.likely@secretlab.ca>
Message-ID: <20140813104053.GK17528@sirena.org.uk>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<53EA3DA0.2070407@roeck-us.net>
	<CACxGe6vYNjEAZT6YhB5WNyh40urSEVRbmVaWjEt6nQNUbgMbPw@mail.gmail.com>
	<20140812164922.GS17528@sirena.org.uk>
	<CACxGe6vu6P=KsP7O09afqzgdx2Xh11N9t_C0VKJ9T+yY-_3m6A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="JM+c6BuOs1G2EaOj"
Content-Disposition: inline
In-Reply-To: <CACxGe6vu6P=KsP7O09afqzgdx2Xh11N9t_C0VKJ9T+yY-_3m6A@mail.gmail.com>
Cc: shuah.kh@samsung.com, ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--JM+c6BuOs1G2EaOj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 13, 2014 at 07:26:28AM +0100, Grant Likely wrote:
> On Tue, Aug 12, 2014 at 5:49 PM, Mark Brown <broonie@kernel.org> wrote:

> > While we're working on things like this it's probably worth getting the
> > scripts Kevin, Olof and I use for build and boot test reporting (I only
> > run them, I've not contributed anything) or something like them into
> > scripts/ - they're pretty good and having a common format makes things
> > easier when looking at multiple reports.

> Where is the current copy of those scripts?

Kevin's copy is here:

   git://git.linaro.org/people/khilman/build-scripts.git

--JM+c6BuOs1G2EaOj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJT60CyAAoJELSic+t+oim93FwP/iyhivdIwu4flHV0W69pec/S
E9l/wJcM+GvyUbzSOmNl1Fgm7lq5j2vRwmo7eiTIQhJ+Hvx6SdFE/eXYHKKrfyU9
SoapSJz2ka9ksmafyooGw2aO3Qv+RqJdpxuAajW7tAhpqs6O+zWEjv7C9fAdbnIl
zgWQBIIiQh9tyg0B4daPz/DRnAj/INZtFMcb5T0Y7yDGDlglFC7GdoMsXDV3MQt0
4JK0e72JsQx4UZEX62I3H06v7peRW+IdAsvVqLWYD5EveCdvuYHknmzgkzRfZL4V
zZtD1LpaG0fhCD3CuegKNvw/4IRoLvBLpy7QzSFpqckTIQJz5SCvJjK9AUz1ncoM
YwEsgamdrk5PBLvQFiFlYciob68lUAOwYe7bzoKUbQn3Dawar05srATxAA0WHZAC
4RIOPD/2SLXlNmnRJc0U3U3fi2fNnRqNTV8lrXbEC7SZwg2xfnhNTfgs2sK01Vx9
uoQAggAGurCwpK0uaUK4BxVe6h6LpHjZqeOm/RatHDDNfayFMW/VYwjykWPg2Dl+
mHKuu5CzEpisSvr5UbKm9c+vU+wDuaTbyAMcDJTOcRq5oODAfM4YAuzCH+CqFfDk
NFkSdoKiiV/5IDG/Mbv1wbOC7HCJ04AS24ThkHFpGA2BNltqXWlyv3dXHGwy00mG
OH1+bzkJfqzsbyOErz7k
=1Phm
-----END PGP SIGNATURE-----

--JM+c6BuOs1G2EaOj--
