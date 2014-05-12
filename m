Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 236D0979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 20:32:07 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5EEA2033B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 20:32:06 +0000 (UTC)
Date: Mon, 12 May 2014 21:31:53 +0100
From: Mark Brown <broonie@sirena.org.uk>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20140512203153.GH12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <20140512201438.GE12304@sirena.org.uk>
	<1890814.sS5FutD9xo@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ff6ksNNlJWENvJ9B"
Content-Disposition: inline
In-Reply-To: <1890814.sS5FutD9xo@avalon>
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


--ff6ksNNlJWENvJ9B
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 12, 2014 at 10:27:14PM +0200, Laurent Pinchart wrote:
> On Monday 12 May 2014 21:14:38 Mark Brown wrote:

> > This is something ASoC has been resolving since forever with the machine
> > drivers, Russell King recently created a generic version of the code
> > that does the dependency deferral glue (see linux/component.h).  It's
> > not a model of elegance but it ends up getting the job done.

> That solves the probe time dependencies, but unfortunately not the runtim=
e PM=20
> dependencies.

It also solves the system suspend dependencies.  Why don't the runtime
PM dependencies just work with reference counting?

--ff6ksNNlJWENvJ9B
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTcS+2AAoJELSic+t+oim9/N4P/irOlB0sZRQhPtBGJtTy8Fbc
w5IyfM47W5NmJ9WwsEDqhcbryVW8135nVGHcF/wJvYV/593eA2tBEqonxmOc8DeH
dtxr31sEJAwdSWkdNX1RjqskW+ed1cUMB+MbfVHRUiMHC+kTCaUkuHB4pXhq1ard
gBRMNFuI11xhPp40rZZx4aA9Q9CjFYqVOfdFcz3y0UKOj8esA+hDA9Y3x9b8kjwv
qlsEManZtsnG/UrwmEYakjgolK+wqX3IzTrF2PDOh/EAHOl3KoISigqqZi2hB+Iy
dKfAtxt+ZnPBqtx9bfIQ99ib7G1u15CfK8SPHGmhWdRFJZZyS5zVhMLVdemjJ0J2
SLSRd5IxQC3xvduSAOLTff5ILP+MeLinrDXoXWsa/JumBrXaSazmb8CrAj1boRG7
H5qFt7+cxuMCW32LjqpH99wZR0nBsEW8uAsRkgctH8CdNd8GESWVqQ161aWh9Z3R
weoXgtLWZTqn6UVdvG0I388I+QrXJ+vhYBeQOogyq7UcefwHvmDnuPuuj/G23Vaf
cgSduCkuwftyEc5FoSRMKPdsK5BsI8UqaxjgkGvZdtqoGI8fEIqIDRSJORutFc3U
lvj3o4CtL6yKGh0Be1ro666nw48hyO9psMZGsOucTo8zRmu3+sfZeCNjwYFYBHY8
ALON7l8tP0XxPMwnY3pe
=xRxI
-----END PGP SIGNATURE-----

--ff6ksNNlJWENvJ9B--
