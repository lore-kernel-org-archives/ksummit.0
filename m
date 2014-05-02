Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A722A21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:03:54 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 54A611FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:03:54 +0000 (UTC)
Date: Fri, 2 May 2014 14:03:40 -0700
From: Mark Brown <broonie@kernel.org>
To: "Luck, Tony" <tony.luck@intel.com>
Message-ID: <20140502210340.GZ3245@sirena.org.uk>
References: <20140502173309.GB725@redhat.com>
	<20140502190301.GW3245@sirena.org.uk>
	<3908561D78D1C84285E8C5FCA982C28F327F5D80@ORSMSX114.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="l1Ga9FRlYJwFJxwF"
Content-Disposition: inline
In-Reply-To: <3908561D78D1C84285E8C5FCA982C28F327F5D80@ORSMSX114.amr.corp.intel.com>
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


--l1Ga9FRlYJwFJxwF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 02, 2014 at 07:45:44PM +0000, Luck, Tony wrote:

> > It would be useful for the smaller build case to have a way of auditing
> > which syscalls are actually in use on a system so you can then go
> > through and construct a minimal config.

> "strace -c" ?

That works for specific processes but I don't immediately see a
straightforward way to do it system wide (I guess a wrapper that straces
init and children might do the trick but it's not particularly nice).
Part of the trick for getting the general security win is to lower the
barrier to entry.`

--l1Ga9FRlYJwFJxwF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTZAgpAAoJELSic+t+oim9ntMP/i48+9QwJ4I4uF1pNlb89K6o
Mecoolqrg863iL3HltE0qhpCkYWahfu/f8WIrL5kSTj7CDwqAvLQw73wWenULr5l
yoVeeDfb2XC7u/yQfqgMGNZnZgU0sFVw6YsR+1KGthZ+Xo55YvNbj1qt9if5TPxc
Nqs7Tdd8hu037oLVyzduTb6W98KROsS++9Ovf/ko/owtgVRa4BDCAL+GT+3ehg7K
MbFBhS1KqWTvYny7vHtJQvOiQQXtHkKAIUgDLCI9I0lun7gO4uU0hqLvGQTVv+6l
tKYPgc16agbIMGmeXQ3HCYCksQx+O63MQBxDu0qFaolBCdZjXQ+FFYoIsjdWgdRs
R0vM7xCA4zFLtnfkbQTOO4bK5ZbjhWV/sUKI3r4KwHtW4nckwBur44/7dYk16XBC
hY1WTgU7CrAA9xTDhgrbMA6hJWR7vcIdrrL+B+1tKA3c54OGceAPIMS2xc98Lqn9
b7JNIW9OdMepq3c9QWIemkCjARL68usCc9K0Y503+pJfb4kAMKzj4shJiJUlsEX5
T0P+vHVMRLyUdsOpvrywQ7AQk0QajlZAY9g7bGGTLqcWhyy9pxoM1Ofsn/Ib/W5h
QXgecXHMpAMp78mTwO56vKe5A0h6Nhzmd9X79DtdnKgcnuyOLrepcEHyB4ki21cw
dYyI81wlPYhxYGbCZDKp
=VQ8f
-----END PGP SIGNATURE-----

--l1Ga9FRlYJwFJxwF--
