Return-Path: <broonie@sirena.org.uk>
Date: Mon, 5 Sep 2016 12:04:16 +0100
From: Mark Brown <broonie@kernel.org>
To: NeilBrown <neilb@suse.com>
Message-ID: <20160905110416.GV3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
	<1472827326.2519.14.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D4A52@USCULXMSG01.am.sony.com>
	<87twdv9l0v.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MzUyxqdXrKJm2YZW"
Content-Disposition: inline
In-Reply-To: <87twdv9l0v.fsf@notabene.neil.brown.name>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>
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


--MzUyxqdXrKJm2YZW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 05, 2016 at 11:45:52AM +1000, NeilBrown wrote:
> On Sat, Sep 03 2016, Bird, Timothy wrote:

> > Where we are now with some of these SoCs is at millions of lines of
> > code out-of-tree.  It's being reduced, slowly, but there are still
> > significant areas where the mainline kernel just doesn't have the
> > support needed for shipping product. My pet peeve is support for
> > charging over USB, where Linaro has had a patch set
> > being stalled and/or ignored by the USB maintainer for 2 years!!

> Do you have a link to that?  I have an interest in charging over USB.

This is it:

    https://lkml.org/lkml/2016/7/1/35

it's been more like one year than two and there has been progress but
there's also been an awful lot of latency in the process too.

--MzUyxqdXrKJm2YZW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXzVErAAoJECTWi3JdVIfQTz8H/RFSsjgRtgY2i5vKtoMLOQrw
NpDW08oPsAaCPtSrtLQiLhMckzciaddeZB8k1iohHlXGFZtTJjlr2D1c5TxQdvkJ
muvkFbdM1PdX7AP9ensYG1QoJNFWYEJxbOAW4FvNnxDPWcnUciJwUopArisfpOAH
TuCnboTDDyKKdy3lMC2ONfHNoc/0anKpm3zAaRJyO/ph1gJ00nNYQANX96nyCLJM
J7OyxJen21gpbFm4gdtHlwX1ppU4jO1KgkX5B3UrMh+TL1QXI2/eBuZa0hLt1Sxy
bU8Ly513NmCPhm4xwUBvnDdlADhJOUk64xnG1NYovNtuDekhClrUDjJbdc1G+8w=
=oynf
-----END PGP SIGNATURE-----

--MzUyxqdXrKJm2YZW--
