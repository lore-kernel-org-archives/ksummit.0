Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 950A3928
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 May 2014 18:51:56 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 21A0920277
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 May 2014 18:51:55 +0000 (UTC)
Date: Tue, 20 May 2014 19:51:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Kevin Hilman <khilman@linaro.org>
Message-ID: <20140520185140.GO12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <11117951.ql3xek1vCB@vostro.rjw.lan>
	<15562464.UYP7rKZIQt@vostro.rjw.lan> <6546269.8BCSq47QAR@avalon>
	<7hwqdgqtg5.fsf@paris.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="n8fXmQBcRwtEIsdY"
Content-Disposition: inline
In-Reply-To: <7hwqdgqtg5.fsf@paris.lan>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--n8fXmQBcRwtEIsdY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 20, 2014 at 09:57:14AM -0700, Kevin Hilman wrote:

> For most devices, input clocks are modeled by the clock framework (or
> managed by the SoC's runtime PM core), and therefore, a pm_runtime_get()
> (or possibly an explict clk_enable()) is used to ensure the input clock
> is running.  In this external device example, it sounds to me like the
> sensor driver has no knowledge of its input clock so it has to rely on
> some other layer to resume things in the right order for correct
> functionality.

> Maybe I'm wrong here (likely, since I haven't looked at the code, and am
> admittedly very ignorant of the camera and display subsystems) but it
> sounds to me like what's missing is the sensor driver having knowledge
> of it's input clock and/or a way for it to request it's input clock to
> be enabled (e.g. clk_get/clk_enable.)

> Alternatively, what would proably be even better would be that the
> sensor driver has a reference to the actual device that provides its
> input clock (possibly via a DT phandle?) so that the sensor driver can
> simply do a pm_runtime_get() on the device providing the clock.

We have this problem on ASoC too and for DT converted devices we've been
doing exactly as you suggest and just teaching the device it has a clock
and letting it work out what to do with it.  Ideally we'd be able to
rely on having a clock API (better yet, the common clock API
implementation) and just put the entire clock tree in there.  It's not
been causing us any problems thus far but it's not that widely rolled
out yet either.

--n8fXmQBcRwtEIsdY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTe6Q5AAoJELSic+t+oim9TnkP+wbR2mIGJqLGXttc8V5A44uv
W+xaOVpHQV+a7L/iVt/ah0DMLceYufOGGoB8fLj/eaB5vJn3z7vB1LGNn3Y/7Eak
3vfAPhngHpPfD7R8OKMCSeeESxsFm/QoqRacLsPwaTkH43f+hW62Qp3Z4wwVeCn/
xk9UH8RSHpFR+LFJ2XbrNR6ChuJ98lvDFfLRX/uQ3Nyu3v7JOzeR2uMaVmwJrxNQ
kqko30XT4EKYSK+89BYikv9jZWhV9UX39tggYgvFYxcoRnnSyC1t9RIgXmv2xlJH
+7huBuv/MwMIQUTGvfdzo/zGc3yhM8hEzrTDFbu+HVCKt9mFOJkOoc7ADdi1kKKS
dKFbgfKxDAFjzehwmA6ejx3LE9Qu6NdvQC0xshMtT+WlsdAuAPWKENbzh0R1jgwC
6xSEbtTxM+3CQ23Z0FNIHbFLJbyU9KgSl4MGw6r/6MHxVxj0yGJ6SM7+O746nMYf
gUnlCAfC1ppdCD2NZi2btYN9pT6aMpB1/K3ZfPZH5J//iWX5MoC1j0gDVNQTKfNj
r8ArKoF6Kgl+a1UO+ZyNs7ECrb8riZbEaWZ+oosAa+Zd/01w9jo1bApClC5Uqx8S
Bv6iz1j04Ib9CX8TCFZMT7Vu8ODOpN1mXYqsHt562R54CDEtanKfOp1hNFn4G0MZ
BxueoPJREWA6w293B2gD
=aSk2
-----END PGP SIGNATURE-----

--n8fXmQBcRwtEIsdY--
