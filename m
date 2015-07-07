Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B612E9FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 09:57:50 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2D1E6E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 09:57:50 +0000 (UTC)
Date: Tue, 7 Jul 2015 10:24:34 +0100
From: Mark Brown <broonie@kernel.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20150707092434.GE11162@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="y77xulteysKOarq0"
Content-Disposition: inline
Cc: Shuah Khan <shuah.kh@samsung.com>, Kevin Hilman <khilman@linaro.org>,
	Tyler Baker <tyler.baker@linaro.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: [Ksummit-discuss] [CORE TOPIC] Testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--y77xulteysKOarq0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

One thing we typically cover at Kernel Summit is some of the activity
that's going on around testing upstream.  I think it'd be useful to have
some more of those discussions, both in terms of making people aware of
what's available and in terms of helping the people doing testing figure
out what would be useful.  A lot of this is probably well suited to a
workshop session between the interested people but I do think some
element in the core day beyond just a readout will be useful.

The main things I'm aware of that are happening at the minute are
kselftest development, the 0day tester, plus kernelci.org and the other
build and boot/test bots that are running against various trees.

In terms of discussion topics some of the issues I'm seeing are:

 - Can we pool resources to share the workload of running things and
   interpreting results, ideally also providing some central way for
   people to discover what results are out there for them to look at
   for a given kernel in the different systems?

 - Should we start carrying config fragments upstream designed to
   support testing, things like the distro config fragments that keep
   getting discussed are one example here but there's other things like
   collections of debug options we could be looking at.  Should we be
   more generally slimming defconfigs and moving things into fragments?

and there's always the the perennial ones about what people would like
to see testing for.

--y77xulteysKOarq0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVm5rSAAoJECTWi3JdVIfQrL8H/1iy2gFBXXfHZ2ZZVCGEF7cT
kDVeR/OB0pxR4HRoecl5FBBZn4msP2Q9krDiCPYD548n/ULlrHaeWJki0Z53BNtw
Jj4rsvUqWT2+xriCqThkBn2kIIZQ+SaYTc7QhsgYY8Jh382MDkxMBf53ihMUucbq
l71SWFuuqHYa7PaiRfx+S8fgDyFpW3D7dwgPP6F4g/9ITiqvI9qE1yNvgPhNsMYw
Izg45cqIPN5vWl5HKagA2LjHbiRRsxxQfvbodmTwRkQPf5QzNSy1fhYV9ZyRQKo1
+fufBJxYi4844xb7+OBaQnsLTcR6O6fwo4tC/SRXnNX4JHMP6JKTyLQHGEoly5w=
=o9FY
-----END PGP SIGNATURE-----

--y77xulteysKOarq0--
