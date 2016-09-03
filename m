Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BDEF5486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 Sep 2016 00:07:32 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4E497122
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 Sep 2016 00:07:32 +0000 (UTC)
Date: Sat, 3 Sep 2016 01:07:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Vinod Koul <vinod.koul@intel.com>
Message-ID: <20160903000719.GO3950@sirena.org.uk>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<27648120.ey0ZEtExVa@wuerfel> <20160731175753.GQ9681@localhost>
	<3132432.DrxSMjl1Vi@wuerfel> <20160902104619.GD9355@localhost>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="562f9N4fbIs+fPrJ"
Content-Disposition: inline
In-Reply-To: <20160902104619.GD9355@localhost>
Cc: ksummit-discuss@lists.linuxfoundation.org, Dave Airlie <airlied@linux.ie>,
	"Nikula, Jani" <jani.nikula@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--562f9N4fbIs+fPrJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 02, 2016 at 04:16:20PM +0530, Vinod Koul wrote:
> On Mon, Aug 01, 2016 at 08:56:30AM +0200, Arnd Bergmann wrote:

> > Sounds good. Let me know if you end up having to add a 'depends on ARM'
> > dependency anywhere, as that might indicate that we are doing something
> > different on ARM that should be done in a more generic way.

> Only one thing :)

> Arm seems to define NO_IRQ. This is not available in other arch and one
> driver (moxart-dma) is using it. I don't see why this should be arm specific.

> FWIW, now I have a single arm config like x86, ppc, mips for my subsystem with
> this change.

The general direction here is to not use NO_IRQ in new code.

--562f9N4fbIs+fPrJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXyhQ2AAoJECTWi3JdVIfQZNcH/1TYSirkuyvv1P82v3sdDXjR
ukKRk1VJ/y+YYIkrqMfrUq9rLwTr97PapYgHeJuYgVU0VCuHxHlw+HbWAeQlhBHQ
kTXNCN+uA9WcsZoI/4/ASYK76v86nOcGkVxKEqQw3I1lSpZhBSSXfaQGl++z0P+u
iOLkcvCME4/g3qHPTggSPTl89oOR0WUc+VH0NdpzsRUUOGxnePTh/zQE8HAG+m+Y
R4AthOg1kVkSh0Uagi5sxv1mNw4GPlXfWanMCZW2+eioFYf+/A5kHGdz5lgIzrIJ
vKXMhtAfSw3cOAOe8NspcPt6liVQPghQtnrz1mQaoYpCGE6uX5LU1pZTCwhmPUc=
=glbE
-----END PGP SIGNATURE-----

--562f9N4fbIs+fPrJ--
