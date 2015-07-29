Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CC6EE499
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 13:33:02 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DF601B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 13:33:02 +0000 (UTC)
Date: Wed, 29 Jul 2015 14:32:44 +0100
From: Mark Brown <broonie@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20150729133244.GH20130@sirena.org.uk>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723202901.GA30318@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WRT3RXLOp/bBMgTI"
Content-Disposition: inline
In-Reply-To: <20150723202901.GA30318@amd>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	riverful.kim@samsung.com, kyungmin.park@samsung.com,
	John Stultz <john.stultz@linaro.org>,
	Bjorn Andersson <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--WRT3RXLOp/bBMgTI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 23, 2015 at 10:29:02PM +0200, Pavel Machek wrote:

> 4) voice link to modem: Nokia people tell us that ALSA is not suitable
> interface to modem audio. What is the right interface, then?

ALSA is the right interface for this, this is going to be some
misunderstanding on their part about how to use it or limitations in
the drivers for their particular system (and possibly some unfortunate
hardware design, it sounds like they may still be bouncing the voice
call through the AP which isn't the most wonderful idea ever).  There
are rather a lot of production phones using ALSA out there without undue
complaints.

--WRT3RXLOp/bBMgTI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVuNX7AAoJECTWi3JdVIfQ5VkH/RFLc04mwzBCtjYaLh6+hiDg
0FT5+qwoSWX2riSKIhyqo9Py/Ul94SlIVCUkbeZMaQM/NtlZ+GB05VhhUQdevzXC
s84qmuXWaFqEuuU2r083TX7gM/QgPqG6w+RChV4H3Wa2GzenJ03q5yaXWWYw8ZYG
aA+xoGKUbZxDPqLwJJ3VlRvXB37H6I+sG0iFJqE3TR4sdky8icJthDwVZsxT5mD5
9nPzi2FvORUKCJ9XZF/6jl2mBO5Ss1VWJvdPWZyJZoh7dFeovyxsljZZebjRmZ6J
VF1iSTP/aijv1jr8bw/it8t+N6oEPOV++fE8JfVvTX8xc6cxfUu6CH/ybviqcTI=
=c8pQ
-----END PGP SIGNATURE-----

--WRT3RXLOp/bBMgTI--
