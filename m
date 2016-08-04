Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A9380932
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 10:21:09 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 45EC9137
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 10:21:09 +0000 (UTC)
Date: Thu, 4 Aug 2016 11:20:58 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20160804102058.GT10376@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727192040.GL5537@wotan.suse.de>
	<10281749.h0nm8HgLR9@vostro.rjw.lan> <4826466.kMrAaT2rsn@avalon>
	<87d1lpose8.fsf@intel.com> <20160804095049.GA30029@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XLbFcQSK8m6qgUdZ"
Content-Disposition: inline
In-Reply-To: <20160804095049.GA30029@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
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


--XLbFcQSK8m6qgUdZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 04, 2016 at 11:50:49AM +0200, Greg KH wrote:

> Nope, it doesn't work that way, sorry.

> Nice try, just unwind your initialization properly :)

Deferred probe is probably the best thing that ever happened for the
quality of kernel error handling :)

--XLbFcQSK8m6qgUdZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXoxcIAAoJECTWi3JdVIfQbLUH/3IUEeUzw5anq9zjO43VFeNs
JCCddkO+4InDOyKHVfuSbgm0viDZu0Wbp5e5/jLfFTLP4WfZPnTVcY0/TwDsf+Fj
tPRQnWN1/pzQC8vtaRirM9Hb7v9LvHmqYUDEt9Hyw2nmdYAoYvYeamj6nE53Fcua
8l/RMvacIt16Fyp1XJ1yEpc6CHZLWqTvgZfPBXKq9shhw8iuGAuYpWsj8n/GTPJh
3Yz0GOOBBGOseXk3kHqe3z32taPdEw7tcIbyj8QUlo/ODZn5c/7f/96krLhphjPB
6BQbZ+9qXoI5haa8+CLQccVVYtS6OcNo9JvigB1+1UENOA+l+32z9ezxnCwmyIs=
=IpK/
-----END PGP SIGNATURE-----

--XLbFcQSK8m6qgUdZ--
