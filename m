Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6ECCFDD4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 14:56:17 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F02C8174
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 14:56:16 +0000 (UTC)
Date: Fri, 14 Jun 2019 15:56:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20190614145612.GZ5316@sirena.org.uk>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
	<20190614101222.GA4797@pendragon.ideasonboard.com>
	<20190614102424.3fc40f04@coco.lan>
	<20190614133132.GB4797@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ca0/yK2c6QcOc1Rp"
Content-Disposition: inline
In-Reply-To: <20190614133132.GB4797@pendragon.ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Ca0/yK2c6QcOc1Rp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 14, 2019 at 04:31:32PM +0300, Laurent Pinchart wrote:
> On Fri, Jun 14, 2019 at 10:24:24AM -0300, Mauro Carvalho Chehab wrote:

> > There are other forums for discussing internal media maintainership,
> > like the weekly meetings we have and our own mailing lists.

> Is this really an internal matter ? If the pull network depths
> increases, which is the topic of this e-mail thread, I think it's
> important to decide on how pull requests should be handled along the

It's at least worth noting that this happens since cherry picking means
it's less obvious to scripting that there's a pull model going on so
things might look a lot flatter than they really are.

--Ca0/yK2c6QcOc1Rp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0DtYkACgkQJNaLcl1U
h9Cx9gf/VwEM4TJdwktDQRHnzXAvTiRKu0rgqJJzawajLHkkarab0M7Gk6V+pgtv
vfZ7YS0An7MSZ4RBvRBmZEAwk8hxYnlHsVZ6tQOTqnaYM2qQO3Ks+Q2E68TM6bhL
JSl4gd9VH2VyxFuRMCqSmbs6fQ2pw0LmFgnxhTuQNKmEDXa3HAg0G9uQ5/VvfxHZ
2TaSIjH/QGhN4SRrTBMWGa438vW7LKAi1tM4jZs8MqdH46Cl96Lx56JlkLUFLFgR
m8DhiDs2i45akC4BiOmPKy24m5Ok6CaWmIYbpGQw8G2OL7q7BBcvDXLLnxyaUh7x
BTB2uEHa/lcKq6JZgqr0WPFYzGtZrw==
=WjQt
-----END PGP SIGNATURE-----

--Ca0/yK2c6QcOc1Rp--
