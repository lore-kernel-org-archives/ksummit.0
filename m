Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8534AFE2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:27:59 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0926F71C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:27:58 +0000 (UTC)
Date: Thu, 6 Sep 2018 11:27:51 +0100
From: Mark Brown <broonie@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20180906102751.GC5360@sirena.org.uk>
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
	<CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
	<20180905083120.GA28353@kroah.com>
	<CAKMK7uHLACdr4vGexqO-oh+QrRqxq0_KyJdhnr_eAZy6ApwWUQ@mail.gmail.com>
	<CACRpkdYP1_kG+nzg0Op-3VoLqRm8nUpXf8Daf_1B17-wWJyLjA@mail.gmail.com>
	<87va7jylra.fsf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kVXhAStRUZ/+rrGn"
Content-Disposition: inline
In-Reply-To: <87va7jylra.fsf@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Challenges in Upstream
 vs. Embargoed Development in Intel Graphics.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--kVXhAStRUZ/+rrGn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 06, 2018 at 01:15:53PM +0300, Jani Nikula wrote:
> On Thu, 06 Sep 2018, Linus Walleij <linus.walleij@linaro.org> wrote:

> > - Classify the components into embargoed and non-embargoed
> >   so anything not affected by embargo can be pushed upstream.
> >   (OK it's maybe obvious).

> It should be obvious, but given the dual mode of operation, people tend
> to err on the side of caution, and you need to constantly have an eye
> out for stuff that should be refactored and sent to upstream directly.

I suspect this is harder for things like the i915 driver where divisions
are less clear but it's usually fairly easy for things like SoCs or more
standalone chips where you're typically working with completely separate
drivers that are easy to segment.

--kVXhAStRUZ/+rrGn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluRAScACgkQJNaLcl1U
h9BEqQf+Oyj+RU4kp7q0WkDx6rxRhExEgpnkq51OFT+L+eiGTx3EVqwV7JDWmfP0
6LmHNQeco6788OgZ3CcbCD1S0VNxYqpKHilLJ/qJDN0JLWOdeAYVwjEXvdCFGOGu
wu/TyexyKGR4XJHBT1uoHbTGUfqLKnFxnnyNv2W2PH6xVChwfQebks7hozVeFU20
IOhEecPA385tghroXycrQEw671Tyl2fKAL2mPbPHGayird87AEdXUKMY3elTAsqx
W8g4YisFrdRXv04e2cv4e9qayHf8IgP5sw3wHIdlqW0UYPgji5jw4vVjH1qwoTth
EQiTwKC4m5vwKq6/YkImnrHCRS9scQ==
=fDdj
-----END PGP SIGNATURE-----

--kVXhAStRUZ/+rrGn--
