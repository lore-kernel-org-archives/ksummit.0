Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8C7E8410
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 13:13:53 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4FAA6151
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 13:13:42 +0000 (UTC)
Date: Tue, 20 Oct 2015 14:13:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Message-ID: <20151020131330.GY32054@sirena.org.uk>
References: <20151012190137.GA1992@thunk.org>
	<20151019103304.27e596a5@recife.lan>
	<20151019135348.GH14956@sirena.org.uk>
	<1445272076.2481.37.camel@loki>
	<20151019173419.042d5e8b@recife.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qwWC3uIwaXcGNtT+"
Content-Disposition: inline
In-Reply-To: <20151019173419.042d5e8b@recife.lan>
Cc: Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Lars-Peter Clausen <lars@metafoo.de>, Mark Brown <broonie@kernel.og>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--qwWC3uIwaXcGNtT+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 19, 2015 at 05:34:19PM -0200, Mauro Carvalho Chehab wrote:
> Liam Girdwood <liam.r.girdwood@linux.intel.com> escreveu:

> > Having a simple mechanism for dumping topology data is important as we
> > will need to be able to easily dump this data on Android and Chrome
> > alongside regular Linux for development and debug purposes. i.e.
> > cat /sys/some/dump/file > audio_topology

> Well, it is not hard to get the topology using the media controller.
> I wrote a testing program using it at:
> 	http://git.linuxtv.org/cgit.cgi/mchehab/experimental-v4l-utils.git/tree/contrib/test/mc_nextgen_test.c

> The only library optional dependency is libudev, used to get the
> device node names. The code falls back to use /sys/dev/char/ and
> /dev to find the device names when compiled without libudev.

> So, it should be easy to provide a cat-like program that would be
> dumping the audio topology on some file.

It's still a program that has to be built for and installed on the
device under test which is the big bar for a lot of users (consider the
case where an audio expert is doing system tuning on a device using a
firmware image supplied from elsewhere, it may be difficult for them to
build new programs for the image or request that they be included in the
image).

> > What I'd like to propose is that we support both mechanisms for dumping
> > the audio topology data. :-

> > 1) Simple file dump using same format that topology is loaded. Used by
> > kernel/firmware developers only when media controller userspace not
> > available. Enabled by kernel Kconfig debug option.

> Yeah, it sounds reasonable to have a mechanism like that just for
> debug purposes.

> > 2) Media controller API used by everyone else.

> Makes sense to me.

My main concern here is ending up with two different machine parsable
formats for exporting the topology information to userspace - it's
potentially a bit confusing for people to know which one to pick and
might end up needing multiple tools and libraries to parse depending on
the situation.  It would be much nicer if we could get a consistent
format between the two.

--qwWC3uIwaXcGNtT+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWJj35AAoJECTWi3JdVIfQyjkH/2dEAAATgmzjNOfD2eRuGFhk
MDUBMsdqsK71ofzhtdKuIWgs2o2DUvZeelilzNV35ABjQklvvg59rbwOFhuJCD4j
0LPQTlQ/8FybZYmRSxjFu9LEz3yMnBwQhy8bmwrqlCuBwVWFHGai9EuglDLzK9+V
vzGnFRKm/y6uN3Vhk9VjSawOQx0sidsrrOsxEP5gvx2T0pSKtPnYl+OgPbpo55ct
cGFcx7MZZebBobYsx5Lc6PmKcgaqmAKqRBPbu1dgm1G8S3g2XAlhF11RywQOtF5V
WgunQMCY7FhsBAdi5q5UbXb+K9X0Pk6HbqJHCNqoDGxqoUd52uZbx+MbwSu2BT8=
=baWN
-----END PGP SIGNATURE-----

--qwWC3uIwaXcGNtT+--
