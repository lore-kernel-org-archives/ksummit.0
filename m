Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 510BE927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 18:04:27 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0053E20277
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 18:04:26 +0000 (UTC)
Date: Fri, 9 May 2014 19:04:10 +0100
From: Mark Brown <broonie@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20140509180410.GV12304@sirena.org.uk>
References: <20140509170709.GA9747@redhat.com> <20140509171954.GC8289@cloud>
	<1399656674.4136.12.camel@jlt4.sipsolutions.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="HOD+N50ROCogxB9o"
Content-Disposition: inline
In-Reply-To: <1399656674.4136.12.camel@jlt4.sipsolutions.net>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--HOD+N50ROCogxB9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 09, 2014 at 07:31:14PM +0200, Johannes Berg wrote:

> Seconded, I'm also interested in general in whether people still think
> sparse is useful and we should give it attention, or should focus more
> on really getting everything into gcc - we have a number of sparse
> warnings in very low-level header files that get used everywhere, for
> example the one I just fixed in [1] or the one I tried to fix but that
> ended up being buggy ([2]), but there doesn't seem to be much attention
> to these during the patch submission etc.

I certainly do all my builds with sparse and routinely find it
identifies useful issues, though obviously getting the same capabilities
in the compiler directly would be just as useful.

--HOD+N50ROCogxB9o
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTbRiXAAoJELSic+t+oim9sfUP/35suWQgQ+bnz9lGClnUTsvt
wYzs+5OjkfmiGD7UiYEETHww1ifAKZ1h0ZVPVAz4zbIz510Jx9GT5oPIyHiN5uA0
jXb9VKWdOftnwfyPuv7OFCbZ7WTUaq8jdxNaQcRVMIR6rsKihy1uMUGdLNXkIKlV
UUPmc4Y5ofg1dDEyeQPfhABfTARlvfKeSMsum9d7jxrccBNxs0DMZs0Z6waX+Rc4
OSysgiNjrbnxFgBg6/pQwjHhdo+/2MA0BnFPTrmcP8RKxgKTKplIH8gj9RY7tWrt
DT4W5LCSQM86N4TlAPC58MIe2GshNn/IweLogo3G/BADp0wfksdb/XdJ2xQ2365U
u6AFt9VCqqQRtSjABs/SkHDD+U2GnaoA3SDXT8u8BzjAXOSdei6H0LheQ5YemarF
f9Z0kFjCmmYghtFHp+YojmDzOITMojdB4oIcliUfsWL5dSBL3A+a2nI9Nh+KdIug
YaBYfzrPoJ46puKf+F98IpYI8O/rZmxJcYHF4ULhvmgtNLwtxaUs+cLPGFztCqp+
V+5J/Yri/NJ949p8Y3Mg2/ybepSCGdg4k3ONf2ChMpRWcXSRw4EZNJG+F4qKF1xw
v1p6TUiWTBAqOAdYWcvLVNrqH6aZMl5C5FpAkiTyPeEaGnyY4wawNp5UuGuXGCry
qb3u62rg5dwJhBpAWtHu
=V9V9
-----END PGP SIGNATURE-----

--HOD+N50ROCogxB9o--
