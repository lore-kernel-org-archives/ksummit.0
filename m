Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AF4AB486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 13:22:17 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2A4EE142
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 13:22:17 +0000 (UTC)
Date: Tue, 20 Oct 2015 14:22:09 +0100
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <liam.r.girdwood@linux.intel.com>
Message-ID: <20151020132209.GZ32054@sirena.org.uk>
References: <20151012190137.GA1992@thunk.org>
	<20151019103304.27e596a5@recife.lan>
	<20151019135348.GH14956@sirena.org.uk>
	<1445272076.2481.37.camel@loki>
	<20151019173419.042d5e8b@recife.lan>
	<CAKocOOMHUQT7u0T-Cq1k1YYdZ1g78t5Trx-dyXyB9RSQETOfDg@mail.gmail.com>
	<1445342137.7033.41.camel@loki>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tyjMFqNw14br+l4O"
Content-Disposition: inline
In-Reply-To: <1445342137.7033.41.camel@loki>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Lars-Peter Clausen <lars@metafoo.de>, Mark Brown <broonie@kernel.og>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--tyjMFqNw14br+l4O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 20, 2015 at 12:55:37PM +0100, Liam Girdwood wrote:
> On Mon, 2015-10-19 at 14:46 -0600, Shuah Khan wrote:

> > You can find the media graph that includes ALSA Mixer Function and
> > Control Interface (Device: /dev/snd/controlC2), PCM Audio Capture
> > Function and PCM Audio Capture interface (Device: /dev/snd/pcmC2D0c)
> > at:

> > https://drive.google.com/open?id=0B0NIL0BQg-AlbjZkcElJb2RtVk0

> Looks nice. Fwiw, the graph will probably get a lot bigger when we show
> the audio DSP and codec paths (as DSPs and codecs have multiple muxes
> and mixers). It may be good to have a cmd line option to stop at certain
> nodes on the graph to avoid over populated/complex graphs ?

Having the ability to describe which physical device things are part of
would probably help a lot with the rendering here - I'm guessing that a
lot of filtering is likely to be things like collapsing down devices not
being looked at right now into a single block in the graph and it'd
probably help with user comprehesibilty provide a mapping back to things
they can see in the physical world.

This doesn't entirely correspond with struct device due to MFD and
multi-function USB stuff but it'd be a good start I expect.

--tyjMFqNw14br+l4O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWJkAAAAoJECTWi3JdVIfQFsEH/1EzLC1NwRsmZgH1nmlezqGp
V2v29Q4NXO3+jysLPJ4MBsf/e6IPY+as1QNBIPVqub7iHhOBJyQgEwFfMJKdEt7K
4yfXjw1JucoFmvOEk7M4BpAx++HzN5FDeWq0U378L76TaddOLqjPvtcGUGxA50GZ
Spp7ANiPGu4jFLVG5YUW+IeUsyKSTUrluOlmxqUV59nIcXj/Q6GiC7NXx4n23u3M
D1wNyk06eCrpIh9+QP2VuDTF38biNzupdpWJdPhAy9aKPXNbnfzkMG3llzS/k9IE
EwiUCuK8Qwhb2NWa9A0HuTuvZ8rWs6nVE6PLCOzNyiRrtoB0uQ9mllWQw/dXyWo=
=/jEB
-----END PGP SIGNATURE-----

--tyjMFqNw14br+l4O--
