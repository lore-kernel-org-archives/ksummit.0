Return-Path: <vinod.koul@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0997E951
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 17:08:32 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id AF4FE274
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 17:08:31 +0000 (UTC)
Date: Wed, 27 Jul 2016 22:45:51 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160727171551.GE9681@localhost>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<CAOesGMiq5Q==Rg97VqmO-=HNYXz9ZA6iCDJ7sBa0tGzJVuYs4g@mail.gmail.com>
	<20160727030406.GU9681@localhost> <17304523.rVA3ueAWN9@wuerfel>
	<20160727125751.GC9681@localhost>
	<20160727142221.GK11806@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="MAH+hnPXVZWQ5cD/"
Content-Disposition: inline
In-Reply-To: <20160727142221.GK11806@sirena.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org, Dave Airlie <airlied@linux.ie>,
	"Nikula, Jani" <jani.nikula@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--MAH+hnPXVZWQ5cD/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 27, 2016 at 03:22:21PM +0100, Mark Brown wrote:
> On Wed, Jul 27, 2016 at 06:27:51PM +0530, Vinod Koul wrote:
> > On Wed, Jul 27, 2016 at 09:53:24AM +0200, Arnd Bergmann wrote:
>=20
> > > We should be at the point where an 'allmodconfig' build on ARM
> > > gets you most of the drivers and builds without warnings (using
> > > gcc-4.9 or higher).
>=20
> > The problem is drivers depend on various ARM sub arch's. That is the
> > sole reason why I have multiple configs now.
>=20
> That shouldn't be the case at least for any new code, things should at
> least build OK with an || COMPILE_TEST normally.  Old code may need
> fixing up for this.

That's right, this is problematic mostly with older code and for ARMv5 and
below. As I said later code & sub-ARCHs seems to be well covered with
current multi-vx-configs...

> > Which brings me to another problem :-) why should individual drivers
> > depend on ARM sub arch's. Depends on ARM, yes. First look at code tells
> > me they shouldn't!, probably sometime back that was true, but I don't
> > think that should be the case now, ofcourse you would know better!
>=20
> The dependencies are there to improve UX when people are configuring
> their kernels - it stops them being asked about hardware they can't
> possibly have in their system.  If there's no build time reason for it
> then it should be (ARCH_FOO || COMPILE_TEST) so people can do build
> tests.

That is a valid point as well. This seems better suggestion to me.

--=20
~Vinod

--MAH+hnPXVZWQ5cD/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJXmOxHAAoJEHwUBw8lI4NHgRIQAI8mSJnd7OUXW736rBrPlOPO
Xo+r5O1QA4rjG3BUIo0MY4rImhpiLVDWjj7JhOzlOyyKjoWcv956+zAx1Coisxed
79LHZ8EJRVb0mWEHmqajgqB0QpML/Wmyxb7s9EuJz/4yxfVjq7dAbFBSk2FvXuYa
n763Jt/Fw0jcmP1BQrGpoCw1tZ4xC60IOVv84eLljYRW1UtOZ+y1GWWH9eqSm+4+
Gbj+bLG/vSahEWili/RTdkbKxWG7kvCle0yfhiWQQYU8BYhI8geBd+f4WNDdfzfo
7L7A5KdWFCZq71Ra6T6EQnP7rD5Vdi8g7hZ5+Q3tBw2WFjZINl3tdAApKYZQSFjP
XzPTxfePSvZpxw6nDISNFedbL4rtV0NyBzIiD/TcaRFNb9ZqltF+FJ4M3RbeGzgH
yspGUnXD8mn+WZ56dcw/ionB+plILXntxHm0XqGhrjGnAjd8NtXHd6exeOj5gU2V
fvMDxSnHsMpP27ycI7PbFVQ7hTL47beR9Kkxug8XSOve5nIHEACwsA+c1tYdDEGY
Gvmiq286L7Hm7FLPNUaJULO6n/9iNUfvCKXfOSKzWOxX712BfXmUddrEclWXUrvW
QE482/fVN4lSIXFe3EJF6Eyij3ai1rTb9JINB9oQOwXOdRYyezpdDlAKkOuEijLE
C6f/Z7Nbaj5Q4bBfv22p
=RD3B
-----END PGP SIGNATURE-----

--MAH+hnPXVZWQ5cD/--
