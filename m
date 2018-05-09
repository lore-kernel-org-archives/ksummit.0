Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DDB4B4A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 08:44:57 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3C7675D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 08:44:57 +0000 (UTC)
Date: Wed, 9 May 2018 17:44:40 +0900
From: Mark Brown <broonie@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Message-ID: <20180509084440.GW13402@sirena.org.uk>
References: <20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm>
	<20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aBaYPhOdNx+t7mr3"
Content-Disposition: inline
In-Reply-To: <CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--aBaYPhOdNx+t7mr3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 04, 2018 at 04:21:26PM +0200, Ulf Hansson wrote:

> Then, why don't we have a pre-integration tree for fixes? That would
> at least simply automated testing of fixes separately from new
> material.

> Perhaps this has already been discussed, and concluded and it's not
> worth it, then apologize for my ignorance.

I think this is an excellent idea, copying in Stephen for his input.
I'm currently on holiday but unless someone convinces me it's a terrible
idea I'm willing to at least give it a go on a trial basis once I'm back
home.

--aBaYPhOdNx+t7mr3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlrytPgACgkQJNaLcl1U
h9D63Qf/QlBiwp/EESFcBm2MHh4DWXDANQOzoL9MGxKH/xzaoErJI2VPSNc3XnD8
Kfay1kMcY+TZDfKIemq5vWRxaAodrL2EJFs+z9yEd/yVHWLzb6ptuAi5GeztiuSL
z6+wE+8IgfurggT/lg8f6azlOV9Jq0f///LsAdaycDUfS924Oug/V2VznGRWbcTB
lQeaADEyMmB65UWVr7F7Mu55bSev7t1+usM0kL0Jqa6OgKWl0EwNW/ylKUHPp3cG
io3Cn2vcuPIfVatpuPoYPXmRhGWEIoHi+a199jFQIYdmAwPpe5Cdyh25ZR3yWcWJ
7Qg3L/zUUvBFgiSorfRHtsg+avDhIQ==
=bfsk
-----END PGP SIGNATURE-----

--aBaYPhOdNx+t7mr3--
