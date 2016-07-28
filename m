Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A67672C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 20:38:44 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 87418A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 20:38:43 +0000 (UTC)
Date: Thu, 28 Jul 2016 21:38:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <20160728203821.GO11806@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<4826466.kMrAaT2rsn@avalon>
	<cf4ea315-fcbc-a7f5-758a-298cfac321e8@xs4all.nl>
	<2071960.gyaMIhrJi3@avalon> <579A6715.6050700@metafoo.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="L977DYpOHGH1NqKf"
Content-Disposition: inline
In-Reply-To: <579A6715.6050700@metafoo.de>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--L977DYpOHGH1NqKf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 28, 2016 at 10:12:05PM +0200, Lars-Peter Clausen wrote:

> output each would get their own widget. Phase 2 in DAPM consists of the
> actual power-up/power-down sequencing. This is done in a order that
> avoids glitching and ensures all dependencies are powered-up before and
> powered-down after the dependent.

One fun thing here is that the power up/down sequences are somewhat
application specific however I think that's solvable in a general
environment (there was originally some provision for this in DAPM but it
died as we never found a need for it and the systems are only getting
simpler in this regard) and probably for the bulk of things we're
talking about there are fairly obvious orderings.

> One issue with this approach is that you need a power-sequence scheduler
> which sits above all devices. E.g. there is no master device that tells
> another device it now needs to turn its resources on, but all devices
> are equal in the graph and might be both resource provider and resource
> consumer. If there is only one scheduler the graph would contain all
> devices and be quite big and you'd run into lock contention issues if
> operations are performed on different subgraphs at the same time. If you
> have multiple schedulers how do you decide which device is managed by
> which scheduler as dependencies might be added and removed at runtime.

Lock contention and algorithm runtime are both indeed an issue, though
we've got a bunch of stuff which does a very good job of mitigating
against graph size in DAPM already which can most likely be lifted out
of it and there's doubtless inspiration to be drawn from runtime PM for
the locking.  The nature of ASoC is such that we've never really had to
worry about the locking, a single enormous lock really does make sense
for that specific problem domain.

It's certainly a very effective technique for mitigating against
dependency hell.

--L977DYpOHGH1NqKf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXmm08AAoJECTWi3JdVIfQL+4H/1O13kwhtLYxxkOTYRzH2otY
zrAnqVjAvdYu62ck5MxhRV5CgNp1xzEY6bT5DBmaFIIHR3dCEIE6vKwbXalRGwab
eSe3P+WKCym0bd2frmpF9/TJZjRQJuR5vOPJrChy4bJ+gh1Po1KofJDq1D6RccFY
E3XQTvlv8tU5lOanEu4RkWU1QHwYrwnUZyn0JjRDZ2ylP58mAZRQ/alPRbif2Ju/
jOGkRzVhriKYoWKWVrlWysSGp3nWhyJRhC6BB3TTw13ZLXngPHyO3KYqajrsFNyF
0Za5TbeObN9EJanRbmG8zO/Vfp6RQkMBcreBIwUQU/yfN+jAx5CgcaV3WadhqWo=
=btGK
-----END PGP SIGNATURE-----

--L977DYpOHGH1NqKf--
