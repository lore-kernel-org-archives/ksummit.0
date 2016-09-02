Return-Path: <broonie@sirena.org.uk>
Date: Sat, 3 Sep 2016 00:35:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20160902233542.GM3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<CAOesGMibzGC3Nz+DmERJUea4jbJQ28hDGDGMuHkr+o=Wb3iUdA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fjEAjMKpll6GDq3U"
Content-Disposition: inline
In-Reply-To: <CAOesGMibzGC3Nz+DmERJUea4jbJQ28hDGDGMuHkr+o=Wb3iUdA@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--fjEAjMKpll6GDq3U
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 02, 2016 at 11:21:38AM -0700, Olof Johansson wrote:
> On Fri, Sep 2, 2016 at 7:42 AM, James Bottomley

> > It's crazy because it encourages precisely the wrong behaviour: vendors
> > target this tree not upstream.

> The one case where it is warranted is for features that went in since
> the last LTS release.

> Pushing vendors all the way to target a non-LTS release is a bit more
> aggressive that needed, in my opinion.

Which is basically what people are doing for the most part - the older
kernels are either the latest Android baseline (which is effectively the
latest LTS to people in that part of the game) or products already quite
far down the development cycle and just getting a bit of polish.

--fjEAjMKpll6GDq3U
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXygzKAAoJECTWi3JdVIfQsg8H/0D4NJ8un8p5dT28MuJjapLb
KqClJLFRMRPuW+SJgBL6t9eLVOR0HoGqxVAaXzyg//r5K39xLon+fuhr8dO/ieC9
fIOwkHVxvenNh3wlytTqyOkVpDNB6uIUja+8lre/gP/zDokEWH25EvDMsEGljmxC
XsmsIxourxTPUWNrXorM6UfiNUpRvDJiym3u8iM7eSEjPJWTNW6byJDuMbOKL3N7
4VL0Fo2L7BtvliQvFaHp5jd5WTHmlQZKJfRe3m+sR/M1aHZz4z+VUZCUuS1pq9sT
V8X8DlPgTBuQxC1V4eYwDhqtLmeJYqnb9sGAKw8v12Ld6b1IQBWxLGYXuhyM5K4=
=GnDS
-----END PGP SIGNATURE-----

--fjEAjMKpll6GDq3U--
