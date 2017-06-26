Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B46FA84
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 11:49:53 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2EC23D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 11:49:53 +0000 (UTC)
Date: Mon, 26 Jun 2017 12:49:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170626114946.bw35etwxa2nungsi@sirena.org.uk>
References: <20170625104850.GA24717@amd>
	<20170626105451.tv4k7ib2g2kiknah@sirena.org.uk>
	<20170626111422.GB11688@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fe3aioi6edggigai"
Content-Disposition: inline
In-Reply-To: <20170626111422.GB11688@amd>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--fe3aioi6edggigai
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 26, 2017 at 01:14:22PM +0200, Pavel Machek wrote:

> > Do you have some more specific concern?  This already works basically
> > fine upstream, we happily support off-SoC audio paths.  The digital
> > configuration could do with being more flexible but it works and people
> > ship it.  It would be awfully nice to have some control/visibility of
> > the modem side but that's just a missing driver problem.

> Well, I was told gsm audio is different, because it is packetized, has
> additional timing info, and does not transmit silence.

Those things are true, however this is all handled inside the modem so
nothing else in the system sees anything there.  Even if we were to see
things this is pretty much just VoIP over a funny carrier (some of the
4G standards are just SIP AIUI) which isn't too hard.

> So we have /dev/cmtspeech instead of second sound card.

That's just whatever random thing you're working on.  It really
shouldn't be a second sound card on a well designed system, the phone
audio generally doesn't go anywhere near the CPU for latency reasons so
the whole system is one sound card.

> Is there any GSM audio driver that actually uses sound framework
> properly?

The modems tend to just be stub drivers to Linux as the audio port
doesn't vary configuration at runtime but I'd be a bit surprised if a
modern phone wasn't broadly aiming towards the right thing, this stuff
started appearing in flagship devices in about 2012.  The speyside
system in mainline isn't actually a phone but models what's going on.

--fe3aioi6edggigai
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllQ9NkACgkQJNaLcl1U
h9A5Igf+PAcJVQOlJGf/uHHNDCzGy6ROd0qdmwTwWLDFF3OZ1ogLVxqUZhYsFgIo
d8zhmWmExTSLu3cLPttGBvINwg9JHz6YT4RwhDohqQ6Ji8m3X98qk/0sog6CizQ6
zoKZF+IUGPkzgG90NMzJKNbYXpllruK22GQHPRRYcT/S90tPOMN+IwteLvo8qI1y
YSwhfRNsajjDpHnO2SF+/5GIM91HEqH7IiazujZo0HagTSGaCphGhOfGbdotvXGX
8MHQpBL5+Nd0yR5rySwKkYzIPfamO42olEiruH7EpY4/63DHqMjRVXh4nE5s2wJZ
nZv4A7ovWwlxLaXIAjI4Oq019Rz95A==
=X6Xj
-----END PGP SIGNATURE-----

--fe3aioi6edggigai--
