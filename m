Return-Path: <broonie@sirena.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1C67AACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 11:10:09 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 95BA74EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Oct 2017 11:10:05 +0000 (UTC)
Date: Wed, 18 Oct 2017 12:09:58 +0100
From: Mark Brown <broonie@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Message-ID: <20171018110958.mh76pngzluazmc7y@sirena.co.uk>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
	<CAGb2v67GU4uW7uPMrqFjTW0qBR6LPNeX4Md+tf9S=HRWT_GVqA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bzphq2jqparykyo3"
Content-Disposition: inline
In-Reply-To: <CAGb2v67GU4uW7uPMrqFjTW0qBR6LPNeX4Md+tf9S=HRWT_GVqA@mail.gmail.com>
Cc: Rob Herring <rob.herring@linaro.org>, Kumar Gala <kumar.gala@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	devicetree-spec@vger.kernel.org,
	Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
	Andy Gross <andy.gross@linaro.org>, Lucas Stach <l.stach@pengutronix.de>,
	Tom Rini <trini@konsulko.com>, David Gibson <david@gibson.dropbear.id.au>
Subject: Re: [Ksummit-discuss] Devicetree Workshop at Kernel Summit Prague
 (26 Oct 2017)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--bzphq2jqparykyo3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 18, 2017 at 06:35:24PM +0800, Chen-Yu Tsai wrote:

> I'd like to add something on the topic of non-Linux projects. In this
> case it's diverging DT bindings from U-boot:

> https://patchwork.ozlabs.org/patch/823158/

> U-boot already has a set of devicetree binding additions:
> https://github.com/u-boot/u-boot/tree/master/doc/device-tree-bindings

> The patch in question wants to ab(use) the regulator-name property for
> driver instance binding. In my opinion this is not going to fly, as
> boards are free to define the names. This either sees no use other than
> as a dirty workaround for dts files that aren't following the PMIC
> regulator bindings (regulator node names should follow well defined,
> identifying names), or results in divergence of the DT files.

One meta issue I'm seeing here is that the u-boot people appear to have
their own divergent copy of some of the binding documents.

--bzphq2jqparykyo3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlnnNoYACgkQJNaLcl1U
h9Aqqgf/Tt4qP1izi+d7AxDn/VDK+wgO0/ocjIkcXydHOqk0RhEn8wavrIJhHbbt
4f4xxJbZ17LOCFEAWpF4mK0zq4TOkWqx3WUgmV82rXAa8ItYReSH1u3/e61gvrOI
5dzN3UQkP6f6D16nams1ObLkzQ/UzfsYyVIXoOkV3Rq6kXY5CYM5QD1ugPJWIw7g
Y3PB9nBdbTf8tDKBONCkL4G2JPC0ZWP7vL5D0rKfXshW3B+/4m2njuHi1LRwcuz2
i19ma/YxjEXmhKSGL1YdU9kQtoKJgGI1XLX81YjYWYUoFnCTh9cv4kYFky01Smp2
mkqC+lRLx+0VIcTNfzjwiP5Nnxwnrg==
=fc0l
-----END PGP SIGNATURE-----

--bzphq2jqparykyo3--
