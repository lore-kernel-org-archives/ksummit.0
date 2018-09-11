Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48B201056
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:31:53 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CB6147C7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:31:52 +0000 (UTC)
Date: Tue, 11 Sep 2018 18:31:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20180911173143.GE10123@sirena.org.uk>
References: <20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
	<20180911170212.GC8284@roeck-us.net> <87k1nsdkl6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KuLpqunXa7jZSBt+"
Content-Disposition: inline
In-Reply-To: <87k1nsdkl6.fsf@intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--KuLpqunXa7jZSBt+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 11, 2018 at 08:12:37PM +0300, Jani Nikula wrote:
> On Tue, 11 Sep 2018, Guenter Roeck <linux@roeck-us.net> wrote:

> > FWIW, for the most part I stopped reporting issues with -next after some people
> > yelled at me for the 'noise' I was creating. Along the line of "This has been
> > fixed in branch xxx; why don't you do your homework and check there", with
> > branch xxx not even being in -next.

> What would be the reason for *not* having all the branches, including
> fixes, of a subsystem/driver in linux-next? Baffled.

Some people only put things into -next after they've passed QA (like
Steven's thing about 0day) so you'll see branches that are undergoing QA
in git before they get merged into the -next branch.

--KuLpqunXa7jZSBt+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluX+/4ACgkQJNaLcl1U
h9BpBAf5AeoXo31VUh6RPLrhfS5isDX0r3g6e86RqZcwWA6fJtGPPlCEbXp+oA8b
ICM9/ktAAmyCv/MyYk+LIEeTEAMFyegzoDSWNrm6m6DSMpjK2YTb6QeBsh6fqzOG
wngSRc325JtjFdDPfcPAXirhQpH4S7jlC+1j+fsDSP3IJCGkWB1bCm3wuojX42CH
76w2RPIsbU5MnvDayxmQbJ+HBLVG2VByFGzLYyj5A5wnlOn9L4tXTsvw/FBfbwlk
g9ryE0/BMhfIR3Qj7YCgjk7ChHJr4hMc5lG94fde3B/bjkBqbYsP4dfd1U0bMxtv
HiM62F8jnDyvcekVqKUkuRheBCC8LA==
=DdWm
-----END PGP SIGNATURE-----

--KuLpqunXa7jZSBt+--
