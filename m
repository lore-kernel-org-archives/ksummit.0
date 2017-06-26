Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 491FE970
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 11:21:03 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C27EF3CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 11:21:02 +0000 (UTC)
Date: Mon, 26 Jun 2017 12:20:52 +0100
From: Mark Brown <broonie@kernel.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170626112052.oze7qxmxiyu67wzh@sirena.org.uk>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626083407.GA9621@amd>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s7ydhwmfshzgzi7t"
Content-Disposition: inline
In-Reply-To: <20170626083407.GA9621@amd>
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


--s7ydhwmfshzgzi7t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 26, 2017 at 10:34:07AM +0200, Pavel Machek wrote:

> > > 2) How to handle GSM audio?

> > What is the issue here?  Isn't GSM audio just another audio source/sink
> > which user-space can send where-ever it likes?

> It is somehow packetized, and has timestamps and gaps in it, I was
> told. That's why we use /dev/cmt_speech, not ALSA. Probably ALSA
> should be improved.

No, such systems can and do work absolutely fine with the existing
frameworks.  You just have non-upstream drivers that don't make any
effort to work within existing frameworks.  Most of the vendors came
round to doing the right thing on this some years ago.

--s7ydhwmfshzgzi7t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllQ7hQACgkQJNaLcl1U
h9ACRgf/T/6wAsYpRCmXWPedCg0ZG/uoxC0KzBb9QzboSgntnnsdCN8cNsqs/ide
r2FsZb96nv481Ijh3ivTcv4nDpDC46XqrULOJyAsTNAD6dBybV4Fe0rhG44Es0S8
n1xA7DDVmp203LS7IcAM+ku4RCy2oGT8VLU40VHZJFnBHhAZ6DcLdleRoxi4FRWy
ioeZNw7BhyQuctZZlsDyzquU3ySNuG7yd/86syi/5cPzx+ZGYOxDGEO1ghtw8is2
BCjM4FzPta1kV9WsZb1rNXAxwBDBP7RY/bPDoio+QkFhPaVt+XDDosPr7BaY/6Fp
cclZOsimVpc0oueI2/RHi/8V5vQ0Qw==
=RgVa
-----END PGP SIGNATURE-----

--s7ydhwmfshzgzi7t--
