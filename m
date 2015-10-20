Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 14B7A410
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 15:35:01 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 66BF21B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 15:34:48 +0000 (UTC)
Date: Tue, 20 Oct 2015 13:34:43 -0200
From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20151020133443.4140d53f@recife.lan>
In-Reply-To: <20151020132209.GZ32054@sirena.org.uk>
References: <20151012190137.GA1992@thunk.org>
	<20151019103304.27e596a5@recife.lan>
	<20151019135348.GH14956@sirena.org.uk>
	<1445272076.2481.37.camel@loki>
	<20151019173419.042d5e8b@recife.lan>
	<CAKocOOMHUQT7u0T-Cq1k1YYdZ1g78t5Trx-dyXyB9RSQETOfDg@mail.gmail.com>
	<1445342137.7033.41.camel@loki>
	<20151020132209.GZ32054@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/85QEHftu1iQbUJv4BgkM3V9";
	protocol="application/pgp-signature"
Cc: Lars-Peter Clausen <lars@metafoo.de>, Mark Brown <broonie@kernel.og>,
	ksummit-discuss@lists.linuxfoundation.org,
	Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/85QEHftu1iQbUJv4BgkM3V9
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Em Tue, 20 Oct 2015 14:22:09 +0100
Mark Brown <broonie@kernel.org> escreveu:

> On Tue, Oct 20, 2015 at 12:55:37PM +0100, Liam Girdwood wrote:
> > On Mon, 2015-10-19 at 14:46 -0600, Shuah Khan wrote:
>=20
> > > You can find the media graph that includes ALSA Mixer Function and
> > > Control Interface (Device: /dev/snd/controlC2), PCM Audio Capture
> > > Function and PCM Audio Capture interface (Device: /dev/snd/pcmC2D0c)
> > > at:
>=20
> > > https://drive.google.com/open?id=3D0B0NIL0BQg-AlbjZkcElJb2RtVk0
>=20
> > Looks nice. Fwiw, the graph will probably get a lot bigger when we show
> > the audio DSP and codec paths (as DSPs and codecs have multiple muxes
> > and mixers). It may be good to have a cmd line option to stop at certain
> > nodes on the graph to avoid over populated/complex graphs ?
>=20
> Having the ability to describe which physical device things are part of
> would probably help a lot with the rendering here - I'm guessing that a
> lot of filtering is likely to be things like collapsing down devices not
> being looked at right now into a single block in the graph and it'd
> probably help with user comprehesibilty provide a mapping back to things
> they can see in the physical world.
>=20
> This doesn't entirely correspond with struct device due to MFD and
> multi-function USB stuff but it'd be a good start I expect.

Yeah, collapsing devices make sense.

Sakari is working on a properties API to be added to Media
Controller entities/interfaces/links. Perhaps he could add this
requirement to the API he's working with.

Regards,
Mauro



--Sig_/85QEHftu1iQbUJv4BgkM3V9
Content-Type: application/pgp-signature
Content-Description: Assinatura digital OpenPGP

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWJl8TAAoJEAhfPr2O5OEVLw4QAIYvpMSeUNCRyb3YQlmV1bf/
znqcU/svBhrHiE3Nd3jio317gkFCgmWbGIE1DH3u1lYp/otsg7L2+7PHQDqgAETq
6BhP3LC0mQ0LGU6OMOttXIBVf+5hCe4UFKpdA/N0ADULdJuJQYaYRInLOPaRmBTx
a8D3dmfN5ljjJB60M5h9IjlEOmygeeINvQaM349OVgOYvDz09WupcpMXFrHIQSeD
sXC+2qZ8bJJQBq4ABU76UDkl7pb01iSmbQC+IaYiqkKz0FEbsO7eOxgywZvgUP0O
rYy9e2160AO5mCYbPVw1QDSTozlfPImQm8mUzt3SUILWUZcSvahDcWeKcMoi8pSE
R0fyyhMxIwKzO/03VyDQfTH9F4rHMSw05EA/kA3Wxcw0aB9Z2XiuqQrWSVE8U5X4
/tV45VkST0j3Ejg2z8ga5vg8m9PYQymUQXB9UKqQFpevNNg9KjN4jlBgHKekSZsU
rfRGO3E3LpGdwB6FyazQfP6yHMAr9Crkdl9MZti8LlkATpkuzvgaxuNBzRW3B8l/
mu33RyT82Xbzu2txb5RVrIGOSbJOpVJOif7emEVpyHlWWnFezGndDwxENPrtI0a1
64IxN41vsrI7MeDiUsaur7RMXqHy5kIKgqEEUXQSiaPBkOtlidzDbGecffDO6APW
CB5PvW1+P5aTrOLd5yJ/
=xk3K
-----END PGP SIGNATURE-----

--Sig_/85QEHftu1iQbUJv4BgkM3V9--
