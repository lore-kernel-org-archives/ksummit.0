Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 40B4D996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 12:17:43 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 59A2E13D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 12:17:41 +0000 (UTC)
Date: Fri, 15 Jul 2016 13:17:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Rik van Riel <riel@redhat.com>
Message-ID: <20160715121717.GG30372@sirena.org.uk>
References: <20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
	<20160715014103.GA5791@kroah.com> <578850EB.3090109@roeck-us.net>
	<20160715042938.GA5527@kroah.com>
	<874m7rcus8.fsf@notabene.neil.brown.name>
	<1468563557.30053.30.camel@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0qt3EE9wi45a2ZFX"
Content-Disposition: inline
In-Reply-To: <1468563557.30053.30.camel@redhat.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--0qt3EE9wi45a2ZFX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 15, 2016 at 02:19:17AM -0400, Rik van Riel wrote:

> RHEL is also developed on a git tree nowadays, because there is
> no need to extract patches from RHEL, since the code came from
> upstream to begin with.

> It sounds like the embedded people are causing themselves a lot
> of pain. Pain the distro people got all too familiar with a decade
> ago, and decided to leave behind.

No, at least not in the terms you're thinking of here.  The constraints
that go into supporting servers in distros are very different to the
constraints that apply when building systems based around trying to
exploit the new capabilities of silicon that was taped out rather more
close to product launch than might be comfortable.  Some of it is just
bad practice and technical debt but far from all of it, these aren't
solved problems.

This isn't just something that goes on in embedded either - look at the
experience people have buying laptops with brand new Intel chipsets,
even running bleeding edge upstream versions of things it takes a good
few months after the systems start hitting the market for things to
become stable and reasonably functional. =20

We do need to bring these worlds closer together, things like LTSI and
LSK which backport generic functionality from upstream are part of that
story in that they help avoid people reinventing the wheel in their
product kernels and make it much easier for them to move towards
mainline.

--0qt3EE9wi45a2ZFX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXiNRMAAoJECTWi3JdVIfQoywH+wQ+RoE9VdKyYQv6YieFMdG4
2k9yhYHJXiYhUtKK8HGOW75ppGeN0eH9IIjjmGnwOtoMqas2mG4Y4+qgVyhXyE/R
Qsm0jRrLX1EpuGeFQGFHdYgpuJ6nvBZxB6GSrRyKDlouSJfk1C4AKEWLtAMJkCR4
Ge125etOFHSG2Of3uRq3A7Kl/S2DOs3Hzdec2WXfMN+GZrV5/zsZzKUdImFFiQME
qXogdKiHuSgKu58UDyjgG+86w2hpgN3WC6TmQpAaUbEQc4EEOITk0Z+RTkJOr+Rg
t73z+Kyg7qd9Bs0nnR+5V8OHDpZ6xirhVHTLAQTtibItKjb5rleNgw0qKhlCaFQ=
=7uyn
-----END PGP SIGNATURE-----

--0qt3EE9wi45a2ZFX--
