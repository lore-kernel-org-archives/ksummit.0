Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F29338E4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 17:52:43 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BBF9AE8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Aug 2015 17:52:42 +0000 (UTC)
Date: Fri, 21 Aug 2015 10:52:31 -0700
From: Mark Brown <broonie@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20150821175231.GM12027@sirena.org.uk>
References: <2111196.TG1k3f53YQ@avalon>
	<CAKdAkRQLGRqMT-CJz6FemPqyo78wFrM6Kc=pR_BKxqLZqEzjQA@mail.gmail.com>
	<alpine.DEB.2.10.1508210805500.2566@hadrien>
	<20150821161409.GA26302@localhost>
	<20150821165852.GH12027@sirena.org.uk>
	<CAKdAkRRrqCNojwBHQ809APetuC-u1XqwViRVp5fBB2tO+naQ_g@mail.gmail.com>
	<20150821174150.GL12027@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GSmKOs+wxh1Tqap7"
Content-Disposition: inline
In-Reply-To: <20150821174150.GL12027@sirena.org.uk>
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--GSmKOs+wxh1Tqap7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 21, 2015 at 10:41:50AM -0700, Mark Brown wrote:
> On Fri, Aug 21, 2015 at 10:30:17AM -0700, Dmitry Torokhov wrote:

> > They are also often wrapped into other objects. For example input
> > device might turn off regulators/clocks in it's close() method, which
> > is called as part of input_unregister_device(). If input device is
> > managed then that state change happens "some time later".

> Right, but my understanding is that the integration with devm with the
> object reference counting was intended to do the right thing.

More specifically: the managed operations are guaranteed to be run in
reverse order so so long as the resources used by the managed input
device are also managed we're supposed to be fine.

--GSmKOs+wxh1Tqap7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJV12VeAAoJECTWi3JdVIfQWvsH/17iDtdSNAKURWT3gSBfEUjS
g33MAugRCsRODGFR9KU1eyuawLXp0RUtS4RLssQQnbpQGJe4zE74iXyBD2beyKMf
a6iYIy+GMBWyCHrfSJE0xO5aL7nBGNDiV2idXzXfm9YlqfMJ2M8KQbL5y5HoUxxZ
N1ZEUWjAt1E04AfeQcTpYokq9kuBKf0RaiTXbjwkByVnc2i3Xx2QH0QgvcNAmUBF
aLcRhzMx57gioyCRynfNxn1sKXUw0OrYR56fwY91z+HDnAMhQS/eNIxRyGOtBCal
Q8Mkoo0bGpmR/RVpJByVQ/se0JatvZJuGWu1449DdDqxxUmPeIRDVx1o6sKadFI=
=4L8Z
-----END PGP SIGNATURE-----

--GSmKOs+wxh1Tqap7--
