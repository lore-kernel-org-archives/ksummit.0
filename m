Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DF678EA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 16:02:44 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DA20318
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 16:02:44 +0000 (UTC)
Date: Tue, 18 Sep 2018 09:02:36 -0700
From: Mark Brown <broonie@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20180918160236.GK2471@sirena.org.uk>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<2174637.IVJC5EhCEq@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1y1tiN5hVw5cPBDe"
Content-Disposition: inline
In-Reply-To: <2174637.IVJC5EhCEq@avalon>
Cc: mchehab+samsung@kernel.org, Tim Bird <tim.bird@sony.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--1y1tiN5hVw5cPBDe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 18, 2018 at 01:38:09PM +0300, Laurent Pinchart wrote:

> Would there be some value in creating new git-send-gmail or git-send-outl=
ook=20
> scripts that would work around the issues with common mail providers ?

At least with Outlook the problem is partly that Outlook's model of how
e-mail works isn't really able to cope with what we need, it translates
everything into internal formats in a way that is at best fragile for
what we need.

A while ago Tim Bird (CCed) had the idea to release a VM image which
sysadmins could easily deploy inside a company providing services that'd
be needed to interact with the community - things like a mechanism to
send and recieve e-mail.  The theory was that something that was nicely
packaged, documented and auditable would be more approachable for
corporate admins who aren't experts.

--1y1tiN5hVw5cPBDe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluhIZsACgkQJNaLcl1U
h9DbJgf+MghiA4Gg6c/yH+s0rnVEx/ouQmF6sRUNb9/ExlL5v+WDZYQy5cngSsB7
lrbwKB06CbptvR4XyrIUSYvJSyVmULSb1LUYNyzpe/lRo2uIxXosaOz1hXQDKcU3
R1GO0ZoKmw/rk3OGVdgy3p1GayH+vhilAxFmJ8XmsEMA/Id7vITaKvSwir8TwAKI
WIRmYP5FBk/TNA6fNKqonDrQREGComNHmP4eSa+oI9PS23ibaOjXJ06OdjZFPXVb
6KaAPzzEOJd32mZudUcUOws6H6/iIBawZ4tCdOiVVesyD6mR+6uiln2EP0QxwPkN
Qf1QZEQuThrmH0DWnjU1YzDkVdX4FA==
=YODl
-----END PGP SIGNATURE-----

--1y1tiN5hVw5cPBDe--
