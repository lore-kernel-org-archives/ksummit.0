Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 21C4B2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 06:04:09 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [89.238.76.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9AAF6178
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 06:04:08 +0000 (UTC)
Date: Wed, 27 Jul 2016 07:34:36 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Vinod Koul <vinod.koul@intel.com>
Message-ID: <20160727053433.GA1682@katana>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<CAOesGMiq5Q==Rg97VqmO-=HNYXz9ZA6iCDJ7sBa0tGzJVuYs4g@mail.gmail.com>
	<20160727030406.GU9681@localhost>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline
In-Reply-To: <20160727030406.GU9681@localhost>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>,
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


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> Okay one of the gripes I have is that it is a bit hard to compile arm
> drivers. I regularly compile all drivers in subsystem I maintain and arm
> ones are not always straightforward. Figuring our which config to use
> for compile testing involves a bit of time, which I would like to avoid.
...
> So if you have suggestions to improve my flow, I would like to hear
> that, maybe I am doing something not right here...

What I do to here when reviewing i2c patches:

- at rc1 time, decompress all configs to somewhere
- if a driver fails to build with the current config
	- get the filenames from the patch and assume .o are the objs
	- parse Makefiles for those obj files and hope there is
	  a obj-$(CONFIG_xy)=<obj> attached to it
	- grep my decompressed configs for the CONFIG_xy symbol
- use the found config

Doesn't work 100% of course, but good enough for me. Also, the rise of
COMPILE_TEST really helps that some config will do, so I encourage using
it.

Regards,

   Wolfram


--ZPt4rx8FFjLCG7dd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJXmEfpAAoJEBQN5MwUoCm2qCAP/36zpx01RpQ7Dw3Piv35Qq8L
4Ojs3enqtQtnOjGzyyhsLdd+zm6zIWAGrxLGwO3DtGacylrEwkB6EpBkHpspcuYo
eDQJ0UDDPk+2YR6anbgrL0qWYHofTIRkFQhCBSMDJ5UUWOHawlYR48UkD+xL8/sX
HyK2latlVK6RzlfkNpAAyRL+KTTIVMKGomz5SW1AIsycVBqPRBwG7eFyulK0h9PL
MBMH03cdSK9HBebAp8dDBQfs4OXX1rXYgs+1TC07RdFYmLZ1U4gcVD5NEVMkDiRP
ocLXmWQaexZna4/ZnDnqevuOZmTXe9UBeKKl11RCIoCE3k8AXK5VC7ridEVCQY58
oTfsVB+LUxYBeM74ExW8X5kj3staQ8OenP0ZQBC0sARq7JoH8xd5wHe33FYy/mx+
LQIM0eAYMtEmRswlJADpnjQBMGtjfIKLNCDQgkD9SXMYd70JytsthO/QxIXwjXiF
HciqC7sudQcHNlb/tVZhDrJEe4VF//sYnEH5g8NKXGxYpKCPWtpM/JSo3s9sd4Hz
XARUAL5ebUvJpnm9SBG/bciCtyfM1RwY998aBvATrRaMI1ggRuBeWLcmby26O9iW
6iZbSNR4QvFkhlS6jTxgoUcsGwGPIxDCd3BI8TxF/hMKh+P5JQzNKDHnt1ZEe/ZN
hrdqV/cJCqhJj2avjkQe
=Xu0i
-----END PGP SIGNATURE-----

--ZPt4rx8FFjLCG7dd--
