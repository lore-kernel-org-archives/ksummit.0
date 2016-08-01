Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5DDE794D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 14:25:10 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C72832CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 14:25:09 +0000 (UTC)
Date: Mon, 1 Aug 2016 15:24:51 +0100
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20160801142451.GT10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<26257864.77FIuI985E@avalon> <20160729151247.GG10376@sirena.org.uk>
	<4149460.WgBp652FMs@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dXvu6+ixFx2ZffE8"
Content-Disposition: inline
In-Reply-To: <4149460.WgBp652FMs@avalon>
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


--dXvu6+ixFx2ZffE8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 01, 2016 at 04:35:58PM +0300, Laurent Pinchart wrote:
> On Friday 29 Jul 2016 16:12:47 Mark Brown wrote:
> > On Fri, Jul 29, 2016 at 11:59:47AM +0300, Laurent Pinchart wrote:

> > > Another limitation of kselftest is the lack of standardization for lo=
gging
> > > and status reporting. This would be needed to interpret the test outp=
ut
> > > in a consistent way and generate reports. Regardless of whether we ex=
tend
> > > kselftest to cover device drivers this would in my opinion be worth
> > > fixing.

> > I thought that was supposed to be logging via stdout/stderr and the
> > return code for the result.

> Yes, but that's a bit limited. For instance we have no way to differentia=
te a=20
> test that failed from a test that can't be run due to a missing dependenc=
y as=20
> the value of the error code isn't standardized.

I actually went and looked to see where we're at now - there are
standard exit codes for this in kselftest.h following a discussion a few
years ago which are getting some use (via helper functions also in
there).  We've got pass/fail, expected pass/fail and skip.

> Standardizing format for the success or failure messages could also impro=
ve=20
> consistency. I'm not advocating (at least for now) for any specific forma=
t,=20
> but outputting messages in a standardized format that can easily be consu=
med=20
> by test runners (e.g. TAP [0], but that's just an example) could be=20
> beneficial.

There's some stuff for summary lines in there but yes, this could use
some work.

--dXvu6+ixFx2ZffE8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXn1ugAAoJECTWi3JdVIfQM6gH/ie00x/eKz4wNE9UDgM5PiZr
HCu0dPTxev4zExuyFxp8ml5zhIzp1SnRWjvbd8dbT36ynHdJMRO8ZevMax3tPfA3
+kqoVntYWw5TqeuShXYkDDzfIIsTaLaNO786DLX4oSnrWeYDkBwWDuHlJEeV1g6I
Kuha5+mF58HOa1pyGdsExM/d5wzWpU4V6g5WFSNIUikC0RtsExdAFUei7lFaLLec
vgcYcytIoBbVRsGWjpaEpaPGrAJkW3xKT1gxBvb189erF7VOrSod4uAVpYXesXtX
nKIz492Peqb0atutzjuS63aYY/b3XKyPH6O+VlFLhm1/dUT8vIAxT1bSBbH8DCc=
=SUh/
-----END PGP SIGNATURE-----

--dXvu6+ixFx2ZffE8--
