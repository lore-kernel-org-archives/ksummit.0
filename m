Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 64ECDC84
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 11:39:29 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CFF5E102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 11:39:28 +0000 (UTC)
Date: Thu, 13 Sep 2018 12:39:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20180913113919.GD8411@sirena.org.uk>
References: <20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
	<20180912162422.37d545ec@vmware.local.home>
	<20180913101955.3163ef05@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VMt1DrMGOVs3KQwf"
Content-Disposition: inline
In-Reply-To: <20180913101955.3163ef05@canb.auug.org.au>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--VMt1DrMGOVs3KQwf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 13, 2018 at 10:19:55AM +1000, Stephen Rothwell wrote:
> On Wed, 12 Sep 2018 16:24:22 -0400 Steven Rostedt <rostedt@goodmis.org> wrote:

> > If a bot discovers a new failure in linux-next, do you look to see
> > which tree caused it? And then create a new linux-next without that
> > tree?

> Sometimes a bot will actually identify the actual commit and sometimes
> not.  Sometimes I don't even see the notifications :-(

Do you want to see these sent to you directly as a matter of course
(rather than just if they're particularly disruptive)?  I don't CC you
on stuff normally because I figure it'd be too noisy.

--VMt1DrMGOVs3KQwf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluaTGcACgkQJNaLcl1U
h9A95gf/aAjpxMcpme5S8Tyaf+54jTLw7IDWeTo2dXGNqkjZ6QOEXLxAVNHYCvZj
Z5uxABdxB9Ez1DORfJN7r129yifpxvlhn/7RtDqs9nIb+s0z6ytjP1X5JasMGMwx
CpTlZ+77LFBw+5mCbAtLg021Vh8ljFckBAy3DxwxDuuHD5TMoQ3Q37u/jKAR59Le
j/PP1oLFsV8l3tJQH4rtXR8LHBKWOr8pY0yTb4IRtznW5fKMKOnf5JOYYuq1zrcC
DI6l09fxbBth1ZHKnblWNkMVVRMF06trEHYoCEmcqoXfpqoqpGsSQPmhjnZ49Frd
9KO0EnlnkHkjxkVvzhOzdG32z2alHg==
=wBOI
-----END PGP SIGNATURE-----

--VMt1DrMGOVs3KQwf--
