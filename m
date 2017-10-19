Return-Path: <broonie@sirena.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 040A8900
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Oct 2017 00:04:40 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5C31747E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Oct 2017 00:04:39 +0000 (UTC)
Date: Thu, 19 Oct 2017 01:04:33 +0100
From: Mark Brown <broonie@kernel.org>
To: Tom Rini <trini@konsulko.com>
Message-ID: <20171019000433.y3qt3xaw4nnzvsga@sirena.co.uk>
References: <CACxGe6sxKzNKZbdGA-G=Th2oHwuanyC2kGYuaFcKbSRkuhep+Q@mail.gmail.com>
	<20171017114823.58476908@bbrezillon>
	<CAGb2v67GU4uW7uPMrqFjTW0qBR6LPNeX4Md+tf9S=HRWT_GVqA@mail.gmail.com>
	<20171018110958.mh76pngzluazmc7y@sirena.co.uk>
	<20171018175910.GP12015@bill-the-cat>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lvrnqi4f33lcbutf"
Content-Disposition: inline
In-Reply-To: <20171018175910.GP12015@bill-the-cat>
Cc: Rob Herring <rob.herring@linaro.org>, Kumar Gala <kumar.gala@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	devicetree-spec@vger.kernel.org,
	Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
	Andy Gross <andy.gross@linaro.org>, Lucas Stach <l.stach@pengutronix.de>,
	David Gibson <david@gibson.dropbear.id.au>
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


--lvrnqi4f33lcbutf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 18, 2017 at 01:59:10PM -0400, Tom Rini wrote:
> On Wed, Oct 18, 2017 at 12:09:58PM +0100, Mark Brown wrote:

> > One meta issue I'm seeing here is that the u-boot people appear to have
> > their own divergent copy of some of the binding documents.

> Putting on my U-Boot hat now, it's mostly unintentional and something in
> general (yes, the initial topic here is not such an example) we try and
> avoid, or use u-boot, as the prefix on as it's something that had been
> previously rejected or deemed inappropriate to be in the upstream
> version of the binding.

Yeah, I didn't get the impression this was at all intentional.
Unfortunately it's a shared property with divergent definitions rather
than something u-boot specific that got added.

> But perhaps it's time to try and force the issue again, given what Rob
> and others have said in other parts of the thread.

Yeah, if DT is going to be cross project we need to do better here.

--lvrnqi4f33lcbutf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlnn7BAACgkQJNaLcl1U
h9B0Awf9Fb9ds/if88WdUyhXMveJnzD10GiVuZ+Q9QIo/Po1PFYUPHi9l4Fu6fbc
fc3HdxF1DDy7ID3ejBJkagio0xqHnI20snL7kTJKFz+wy1TT0irx0To6iJfc202I
3Ce/19fzEhes1uBpiMBhr9YJpi6ANBVGo6bOyYyva3ofgcmpUVizW0xPHCqwHcPA
UXe7IhtVWcTh4dulOHksPJKMXnmdpyewcIIeQkon9zJxOc5eGENlWmeVWq/ah/aD
JcEg1iin145YSBSCa3bIBlC+mXDC2vmJTD+SuylqZCSuOP2l8Iz5O+6plCwLlUGC
3i9SZ4FlkPg7YAYG0KiLKJnBinVQCw==
=Z5fZ
-----END PGP SIGNATURE-----

--lvrnqi4f33lcbutf--
