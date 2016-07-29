Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9D1E298B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:50:31 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3A7A12AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 15:50:31 +0000 (UTC)
Date: Fri, 29 Jul 2016 16:50:13 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160729155013.GI10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<367437209.fSUZRCC4cu@avalon>
	<20160728201010.6d1ef149@gandalf.local.home>
	<26257864.77FIuI985E@avalon> <20160729151247.GG10376@sirena.org.uk>
	<20160729112019.3c71f697@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q5r20fdKX+PFtYHw"
Content-Disposition: inline
In-Reply-To: <20160729112019.3c71f697@gandalf.local.home>
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


--q5r20fdKX+PFtYHw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 29, 2016 at 11:20:19AM -0400, Steven Rostedt wrote:
> Mark Brown <broonie@kernel.org> wrote:

> > There's also the risk that we make it harder for a random user to pick
> > up the tests and predict what the expected results should be - one of
> > the things that can really hurt a testsuite is if users don't find it
> > consistent and stable.

> I believe the ideal solution would be that a test would check if the
> hardware it wants to test is available or not. If it is not, it simple
> returns "Unsupported", and not success or failure.

> The kselftests should be run by anyone. If the user doesn't have a
> kernel with the right configs, or the right hardware for the test, the
> test should exit politely, saying that it could not run due to not
> having the proper environment. But if the configs and HW are available,
> do you envision having any other type of inconsistent result?

Right, that's one good strategy - but that's still unpredictable for the
user and there's a reasonable class of bugs that don't get flagged up
when breakage causes something to fail to instantiate so catching
regressions is that bit harder.  It does also mean we're restricted to
things which don't require any test environment beyond the simple
existence of the hardware which can be a bit restrictive for some
classes of hardware.

--q5r20fdKX+PFtYHw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXm3szAAoJECTWi3JdVIfQEjEH/jL9ADWBxmPD/OhOaYhbw4N3
5dM5yzDisda6TSWlBobPkcuOmI0WgjtltowDU/op8fInd5GLAyrov/fn8cG/HR0/
ume6C0LG6NbJA/DrmlI+5RAUL1xblt8AkRQzrka1Z5uCGbz1BTZRHm3+l9RzK9cN
YRat3HPaPtr64VnfrAGkCrot453LuaQMz9XHhBiycVjKzvF7NZkumf4tAZZMvYJx
ZbCOx2TdAQRoSJVjKbq7hLpkPlWqHAtG+JZOgk3hHkiQcyMrzlDmSgJRdOfXO5kO
TAXO7vee2nS1BvtG+OOIlzPUZyzi7OIrZ9/D/HnuiihLWnY7AZHRs1LJAtuZt1k=
=9dCh
-----END PGP SIGNATURE-----

--q5r20fdKX+PFtYHw--
