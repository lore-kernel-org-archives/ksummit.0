Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5B682979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 20:59:12 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C0E8E201B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 20:59:11 +0000 (UTC)
Date: Mon, 12 May 2014 21:58:54 +0100
From: Mark Brown <broonie@kernel.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Message-ID: <20140512205854.GQ12304@sirena.org.uk>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
	<CAP245DV9U+L2D-LPHd-M=zuT_Jh2cuxXzo59-=GLbaMdfCjGeA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yfIbrPjRokFEZXK3"
Content-Disposition: inline
In-Reply-To: <CAP245DV9U+L2D-LPHd-M=zuT_Jh2cuxXzo59-=GLbaMdfCjGeA@mail.gmail.com>
Cc: Len Brown <len.brown@intel.com>, ksummit-discuss@lists.linuxfoundation.org,
	Peter Zijlstra <peterz@infradead.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH(CORE?) TOPIC] Energy conservation bias
 interfaces
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--yfIbrPjRokFEZXK3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 12, 2014 at 05:23:11PM +0530, Amit Kucheria wrote:
> On Tue, May 6, 2014 at 6:24 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:

> > First of all, it would be good to have a place where subsystems and device
> > drivers can go and check what the current "energy conservation bias" is in
> > case they need to make a decision between delivering more performance and
> > using less energy.  Second, it would be good to provide user space with

> Drivers are always designed to go as fast as possible until there is
> nothing to do and runtime PM kicks in. Do we really want drivers that
> slow down file copy to the USB stick because we are on battery? Or
> degrade audio/video quality to save power? The only usecase I can come
> up with where this makes sense is the wifi connection where the driver
> should perhaps throttle bitrates if the network isn't being used
> actively. But that is a driver-internal decision.

There's some tradeoffs around audio as well actually - typically there
is a lot of room for degrading performance without much impact on real
world users.  That said of course hardware manufacturers are constantly
working to eliminate the need for such tradeoffs so the longer we leave
this stuff the less relevant it becomes.  I'd guess this is fairly
common for analogue circuits, a similar thing used to be the case with
PMICs though for modern devices the need for explict tuning has been
mostly eliminated and the hardware can do it autonomously (at least for
the bits that burn most power).

--yfIbrPjRokFEZXK3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTcTYLAAoJELSic+t+oim9GUMQAJbYBHBY1uH0VGkT1YL/8qFc
jL8ApTbDrfskATGUs8u1TLK7e6m+TqsE2wF3oV9qiRtz53EXJNqSJCUdQAcnYg8L
KY6K5eL9rRntiVrJR0QrE0tHj5ZlkviRA9SWzAA/JBdlKdbIBfPfFYt9gBvXGHdb
jlstmXuQE1gMbz+2lMWGDStAU53RQtjV5SaEqCxi26BCXZwdF1NLHS381ZD/McVA
X4O5vExemNmX29mftAlbLWZkdEob/fJ23p+a+2SbxwHYJqLbcG6S5iqtxjL90XdW
fB9xvMZ548iaTABTAEa/OLSDuvmVsjMdENkZ6VJWROhKcuyT3FPro/jrtoIK+f9E
ACNdim0moBnpkHICxA6sgohaBd3TrbcXltfkpyfu+53IgfYzw5+FES/IbJAS84Jh
rcN7K1vONgysE1/6EMSI3gJyIe65ZK+e4ITJcgr2r+fIJ+snfSBP7EF7T1kDFsLY
GAKRpQzIk78hpvFK+l9j/9TF3y+9kzQwiNrPTiPpr9voqlTTxWgyihUmsdrdQ3XP
3he5eQfFM2KrxHj2wBhqGOq4/LrEDSLFIY1dUpMMGcv/RS+6sq/s8KBAXmoY+O5G
W7nXq98LXegd0dqBwa3RG7g74o4rGOIlyhNPaXXtfzepYPHh2sVDjqPUnzc1Fgjy
OJ9eUcUy5TSh5Yen0Zjb
=AeLL
-----END PGP SIGNATURE-----

--yfIbrPjRokFEZXK3--
