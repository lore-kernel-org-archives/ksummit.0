Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6919A94D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Sep 2016 19:23:26 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F3AF9139
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Sep 2016 19:23:25 +0000 (UTC)
Date: Thu, 15 Sep 2016 20:23:11 +0100
From: Mark Brown <broonie@kernel.org>
To: Rik van Riel <riel@redhat.com>
Message-ID: <20160915192311.GS27974@sirena.org.uk>
References: <20160906185143.GF2356@ZenIV.linux.org.uk>
	<20160906152243.766f3845@gandalf.local.home>
	<20160906213644.GA16732@p183.telecom.by>
	<20160906175343.2f0d9135@gandalf.local.home>
	<20160906224100.GA17212@p183.telecom.by>
	<20160907051039.GG2356@ZenIV.linux.org.uk>
	<CALCETrVRFVkpk5bbH1jYxhh3nWYoJtXMFaMo2yR25sntGOrnDw@mail.gmail.com>
	<CAKocOOM7XJeW79dtFNx2Agi7cyrQxmMROmQrisdTG8oZMSi_qQ@mail.gmail.com>
	<1473264649.10218.56.camel@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7L9kolmstoDTZ4pm"
Content-Disposition: inline
In-Reply-To: <1473264649.10218.56.camel@redhat.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [topic proposal] tracepoints and ABI
 stability warranties
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--7L9kolmstoDTZ4pm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 07, 2016 at 12:10:49PM -0400, Rik van Riel wrote:

> From an enterprise distro (and user) point of view,
> it is important to be able to debug a kernel that
> is running on a production system (and developed
> some problem after a month of running), without
> having to reboot into a special "debug kernel".
>=20
> Being able to just fire up a tracer debugging
> script that can identify intermittent problems
> is an invaluable tool in making the kernel better
> for our users.
>=20
> Hamstringing our ability to make the kernel better,
> in order to keep the debugging ABI stable, is
> shooting ourselves (and our users) in the foot.

This also applies very much to embedded systems development.  The
flight recorder aspect and the ability to turn on trace without
requiring a custom build be distributed and flashed are massively
helpful, I've seen people get really excited when they see tracepoints
for the first time.

--7L9kolmstoDTZ4pm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX2vUeAAoJECTWi3JdVIfQyeYH/iNmLDyc4qEWH8/CtLbSDDx5
Ebi5iZTtol5PvsARRGlVrN87GvIhWgRVa0YIO5H75D5R3JAwXUFo3f3SGKWQclVF
MQC9mJDDGDlMAPf8vS0hl8vjHKKfcMw+Pfy0o4eHarmgxfA4PyF4qKZxbOCkyYFf
yMifSQ9HXhZ9u4Ib5DyPDoIwwuK5J6UcX37CrNAkeT/NllEKK4vMMcA5h9XL2lkY
fwvKSwBhjXVKNm9R2huLJ1AaJjSyP398X3f5VGPegQ2x9cWU0GnWq84zHck9hdnE
IbL1jOUstsPPx5FBNDqCnkd3sDPzW++TmzipZYMXMfBhL7QMWVO0erOYHHR33x0=
=ARQ1
-----END PGP SIGNATURE-----

--7L9kolmstoDTZ4pm--
