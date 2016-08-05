Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB30A7AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 11:58:26 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F314279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 11:58:25 +0000 (UTC)
Date: Fri, 5 Aug 2016 12:58:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <20160805115812.GT10383@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160804102058.GT10376@sirena.org.uk>
	<CAL_JsqLFPdO5jfzA=eCnxMXa=oDb4ak=B3KkZ-T5_aV7cM653g@mail.gmail.com>
	<2402711.Aor2uS9Chj@wuerfel> <20160805105420.GB1057@kroah.com>
	<57A47906.8060607@samsung.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BuGwuXnZwGGQ9GEc"
Content-Disposition: inline
In-Reply-To: <57A47906.8060607@samsung.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--BuGwuXnZwGGQ9GEc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 05, 2016 at 01:31:18PM +0200, Andrzej Hajda wrote:
> On 08/05/2016 12:54 PM, Greg KH wrote:
> > On Fri, Aug 05, 2016 at 11:01:43AM +0200, Arnd Bergmann wrote:

> >> Hmm, instead of calling just 'probe', we might first call probe,
> >> then remove, then probe again as a compile-time option.

> >> What could possibly go wrong? ;-)

> > Ooooh, that would be fun to see what blows up, anyone want to try it?

> There are already unbind/bind sysfs attributes which do the trick.

Being able to manually trigger it isn't the same as having a test mode
that just does the bind/unbind/bind - it's much more cumbersome to use,
especially when dependencies come into play.

--BuGwuXnZwGGQ9GEc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXpH9TAAoJECTWi3JdVIfQVwQH/R7NVWB4krU1uQJbMdrps562
qKxsfbUbqWnMYanrwAt/ks7EU50Nr245RQqxcHokshqwQgz0uqAeA+ony5JdeX0O
X9p1lGC6b3V8/H64fiNZLSrR5EFSD5abyR3CBdZ0upDpwLKxEsSbbwYHRjomMzLL
6ZjJAQo2WJTM2YqKuq1hx2bYJlKgrzlyLjCbHGZMM/SyaZ6Z9QyG3DrI8VG9VM8b
6jg8u6Ziwr7fm3/TD7wffSkPNWHYRk/Z4EwzMxurz0VAjRmJ+tVTCfdBnAeVbUyd
F/HSKL9fc8v1eMKT1OH94kE04FLihyZ7GkpECSeD3tAOUgS/uqtiDPJBg9UN0X8=
=fbyM
-----END PGP SIGNATURE-----

--BuGwuXnZwGGQ9GEc--
