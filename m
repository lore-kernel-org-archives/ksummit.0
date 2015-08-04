Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 72BED8F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 15:36:06 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 14CD7EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 15:36:06 +0000 (UTC)
Date: Tue, 4 Aug 2015 16:35:59 +0100
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20150804153559.GO20873@sirena.org.uk>
References: <20150801164142.653012af@lwn.net>
	<1893963.CjFnBCekyb@vostro.rjw.lan>
	<20150803083311.5abd23f6@lwn.net> <6756795.jjv2YY7pQg@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5tiY7shzwSGI9p6W"
Content-Disposition: inline
In-Reply-To: <6756795.jjv2YY7pQg@avalon>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--5tiY7shzwSGI9p6W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 04, 2015 at 03:50:33PM +0300, Laurent Pinchart wrote:
> On Monday 03 August 2015 08:33:11 Jonathan Corbet wrote:

> > The nice thing about formats like Markdown or ReST is that they *are*
> > plain text for all practical purposes.  Much better than DocBook in that
> > regard.

> My problem with inline documentation is that it makes easier for develope=
rs to=20
> write crappy doc and believe they've done their duty. It's not a technica=
l=20
> issue, and I believe inline documentation has merits, especially for API=
=20
> documentation, but I've seen too many kerneldoc comments written as

That's not really anything to do with the fact that the documentation is
inline, it's more to do with documentation that people are forced to
write without any obvious interest being shown in the results.  Anything
else that's done as a pure checkbox effort will have similar effects.

> That's just useless. Worse, it can give the impression to reviewers that =
the=20
> function has been documented while it clearly hasn't. Maybe we just need =
to=20
> tighten the review process and push harder for documentation, at the risk=
 of=20
> rejecting useful contributions. That's not a new problem though.

I'm not sure that more requirements for documentation will help that
much, there's a definite skill in writing and review documentation which
isn't all that common.  Insisting on people writing more without doing
something to address that may just result in more bad documentation, but
of course it's a really hard problem to address :(

> If we don't start treating documentation as equally valuable as code we w=
ill=20
> never fix the problem. I'd even argue that documentation should be treate=
d as=20
> having more value than code.

The documentation I tend to read is commit logs, those we do tend to
value much more and it shows.

--5tiY7shzwSGI9p6W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVwNveAAoJECTWi3JdVIfQWTIH/0nqibfArxiflmgw88dtcUAg
RS2e+Y2YEqW/7Xssy3xL06VzCAHb8i9smNGR98V7kI3asS2pA+TxwBwQnOLdOL50
4waEqj8IHyXok90a/yHjgxM3GcW54EA/3UEvJezNxLFUDUdFkBHKtxflpvTxbizU
yTxVojcYsJxtr+IsT6NHbrn6XIMvYj8bUmBp4fy0yQdT/EFmINXRsPkQT7yXQKse
cV94BOvudgws3Du9WlxsbDtXo1nfD+o25+/+DAwdL+EknsyCzCJk2adRZTPOh5iZ
7Wc2XN8x0BNRHiniT4oOEOKklZyEXAwqbBG26NkwcLr53FgvFEfjdzOxLZEPH/8=
=PQy2
-----END PGP SIGNATURE-----

--5tiY7shzwSGI9p6W--
