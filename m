Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AC58A98C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:13:04 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 44610263
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:13:04 +0000 (UTC)
Date: Fri, 29 Jul 2016 16:12:47 +0100
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20160729151247.GG10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<367437209.fSUZRCC4cu@avalon>
	<20160728201010.6d1ef149@gandalf.local.home>
	<26257864.77FIuI985E@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jt0yj30bxbg11sci"
Content-Disposition: inline
In-Reply-To: <26257864.77FIuI985E@avalon>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--jt0yj30bxbg11sci
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 29, 2016 at 11:59:47AM +0300, Laurent Pinchart wrote:
> On Thursday 28 Jul 2016 20:10:10 Steven Rostedt wrote:

> > Does tools/testing/selftests/ not satisfy this?

> It does, but lacks features to support driver-related test cases. For ins=
tance=20
> it doesn't (for quite obvious reasons) provide machine-readable informati=
on=20
> about the hardware requirements for a particular test.

Plus in general the hardware related tests can end up requiring some
specific environment beyond that which is machine enumerable.

> I'm not sure whether kselftest could/should be extended for that purpose.=
 Due=20
> to its integration in the kernel, there is little need to standardize the=
 test=20
> case interface beyond providing a Makefile to declare the list of test=20
> programs and compile them. Something slightly more formal is in my opinio=
n=20
> needed if we want to scale to device driver tests with out-of-tree test c=
ases.

There's also the risk that we make it harder for a random user to pick
up the tests and predict what the expected results should be - one of
the things that can really hurt a testsuite is if users don't find it
consistent and stable.

> Another limitation of kselftest is the lack of standardization for loggin=
g and=20
> status reporting. This would be needed to interpret the test output in a=
=20
> consistent way and generate reports. Regardless of whether we extend ksel=
ftest=20
> to cover device drivers this would in my opinion be worth fixing.

I thought that was supposed to be logging via stdout/stderr and the
return code for the result.

--jt0yj30bxbg11sci
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXm3JuAAoJECTWi3JdVIfQMnsH/1JZ30nK9PHznVeLNS9t2wC1
aYX8++MdN+hwX0EfmsLh6T9l9Z9CQL6RGZP21LsEwmAWYudGBGpa5YlBWJBXaoVC
0WKy4OuPKxFXkCnRjdKiMCGpZ425lkEuEhMTqq5C1uF5Hm9z97o7QyR9iawxC8N6
6DGS4CXzMFDbp2i50ZlPKMIr254MaQeJB8R9KqwXXWHDmcjQ9Y+hDhhbgE0WORSy
egq0qi/8H0P8uEasBk/miXlUupVdhrE99fTDHG+qa0NcOW7sPt861h0aMKYtG8Zy
JVYcSLd44mquf4/zuor3SlJJFIGuRBEPtxEdIfLyYnOnDY58Veh2visAqF17/OI=
=E3l2
-----END PGP SIGNATURE-----

--jt0yj30bxbg11sci--
