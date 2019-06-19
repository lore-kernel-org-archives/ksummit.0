Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7B9E4B7A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 15:56:11 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F33FEE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 15:56:10 +0000 (UTC)
Date: Wed, 19 Jun 2019 16:56:02 +0100
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20190619155602.GU5316@sirena.org.uk>
References: <1560527386.27102.23.camel@HansenPartnership.com>
	<20190614130456.6c339c01@coco.lan>
	<1560528994.27102.34.camel@HansenPartnership.com>
	<20190614144836.0a71ebe5@coco.lan>
	<CAMuHMdUTDNFYJG5i26v5S6=YSHYomcVNaFNeQ=WhQfTOZxNiMw@mail.gmail.com>
	<20190617103115.670bf968@coco.lan> <20190619075351.GP28859@kadam>
	<CAKMK7uEZ0nvSZaOnQGxpghK+Md0YA0xfh+KjiferuJueeHDfwg@mail.gmail.com>
	<20190619113902.76bd169a@coco.lan>
	<20190619144808.GI21753@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MEAi/rlBiy15p0nd"
Content-Disposition: inline
In-Reply-To: <20190619144808.GI21753@pendragon.ideasonboard.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	media-submaintainers@linuxtv.org, kbuild@01.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [media-submaintainers] [MAINTAINERS SUMMIT]
 Pull network and Patch Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--MEAi/rlBiy15p0nd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 19, 2019 at 05:48:08PM +0300, Laurent Pinchart wrote:
> On Wed, Jun 19, 2019 at 11:39:02AM -0300, Mauro Carvalho Chehab wrote:

> > Specially on drivers that build with COMPILE_TEST[1], depending on the=
=20
> > architecture they're built, false-positive warnings rise, specially
> > on unusual architecture with has different defines for some=20
> > arch-specific typedefs (signed/unsigned, different integer type,
> > usage or not of volatile, a different address space, etc).

> All my kernel compilation scripts use -Werror, and that does a great job
> at catching problems. It can be a bit annoying at times when someone
> introduces a warning, but usually a fix will already be posted when I
> notice my build breaks. The more we use -Werror globally, the faster
> those new warnings will be caught.

-Werror is a bit user hostile, it can be incredibly irritating when
you're debugging things to get things like unused variable warnings from
your debug code or to be working with an unusual config/arch that throws
up warnings that aren't normally seen.  A clean build doesn't require us
to enable -Werror, it requires us to pay attention to warnings.

--MEAi/rlBiy15p0nd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0KWxEACgkQJNaLcl1U
h9DRkAf+IhHBPZsRm/FCrX/VhPNJozi/og5iW3nmqrYtZ8UB2OvOmftCyr8048pZ
vgBtjvxqy8HihUXr3aE2gf4gbXoDerEAVXalqpOPwm99S16VEn0xvGdnYVFrnPTW
3Dc5IlHnmyIG2wcZV6dHi6sQ/SxCKSDATUdKbu2EUI0GvoEeD6gX1bxBF0j8B6JZ
RinLUknhD6Mo+dxiyVhgIbDwXoc7LtMxpw9saNtJyQ3xMiDSZx/5vpKjzfQ4CTK4
Ow8Iw1Pn8jN4YtxjX0KwdYm0dOGVKaBffMWHGJ2qfXUeMHp4XdcsHGW5v+vv7kbF
w4s/EbQ9khKTYGHBpxWKXJc+8nduag==
=eLO7
-----END PGP SIGNATURE-----

--MEAi/rlBiy15p0nd--
