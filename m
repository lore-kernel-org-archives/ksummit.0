Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D30C16B71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 12:02:42 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5498B6C5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 12:02:42 +0000 (UTC)
Date: Mon, 8 Oct 2018 13:02:36 +0100
From: Mark Brown <broonie@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20181008120236.GD5684@sirena.org.uk>
References: <20181007085102.17795-1-geert@linux-m68k.org>
	<20181007113514.GA21217@localhost>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9dgjiU4MmWPVapMU"
Content-Disposition: inline
In-Reply-To: <20181007113514.GA21217@localhost>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH] code-of-conduct: Remove explicit list
 of discrimination factors
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--9dgjiU4MmWPVapMU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Oct 07, 2018 at 04:35:14AM -0700, Josh Triplett wrote:
> On Sun, Oct 07, 2018 at 10:51:02AM +0200, Geert Uytterhoeven wrote:
> > Providing an explicit list of discrimination factors may give the false
> > impression that discrimination based on other unlisted factors would be
> > allowed.

> > Avoid any ambiguity by removing the list, to ensure "a harassment-free
> > experience for everyone", period.

> I would suggest reading the commit message that added this in the first
> place. "Explicit guidelines have demonstrated success in other projects
> and other areas of the kernel." See also various comparisons of codes of
> conduct, which make the same point. The point of this list is precisely
> to serve as one such explicit guideline; removing it would rather defeat
> the purpose.

The Debian code of conduct also omits the explicit list of factors.  In
their case it was a deliberate decision due to a real fear that people
involved in and adjacent to the project would try to rules lawyer an
explict list and wanting to make the code of conduct robust against
that.  The communities seem similar enough that it's worth thinking
about for the kernel as well, Debian has had to deal with some serious
problems in the past so there's some experience behind the decisions
there.

> In any case, this is not the appropriate place for such patches, any
> more than it's the place for patches to the GPL.

We do need some way to talk about what we're trying to do here.

--9dgjiU4MmWPVapMU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlu7R1sACgkQJNaLcl1U
h9DSlgf/TrAjyhsy9c4hZmukCHV26ymNY8mSxDTh5O7+Nuu+GljrpWBax57/Iuye
TJvuTKYrKvVyHSUxeoiNlBNCzGJumO8zOwQ4T0PcjvbSr3Bb49TcFpU2dVUsrmy6
wtFG+xd8UujJunnp/2Ij2vLIznOCdijqhiJjZUTG+hm3yUrWNr6r9f+JkZYy7cM8
+JH+vME2UTErPAQ9iOaSmdTgEClD6ILMzBVLQkZ43CZsz+ppAs0HKL+zBowvULtD
EG9+0gH84qhM41+7TEufY/H2no1uwsMPalM4DfELJ6K7OqwcO0+uQPjBquriJRAS
YBZf0ImvUPzNbK1NL0QXdz16lMUmFw==
=lPR7
-----END PGP SIGNATURE-----

--9dgjiU4MmWPVapMU--
