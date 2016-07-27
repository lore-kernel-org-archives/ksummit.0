Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 635E883D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 18:03:57 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E088D294
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 18:03:56 +0000 (UTC)
Date: Wed, 27 Jul 2016 19:03:46 +0100
From: Mark Brown <broonie@kernel.org>
To: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20160727180346.GP11806@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727172636.GM11806@sirena.org.uk>
	<20160727175829.GG5537@wotan.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dZihrQ6eCIduWT38"
Content-Disposition: inline
In-Reply-To: <20160727175829.GG5537@wotan.suse.de>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
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


--dZihrQ6eCIduWT38
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 27, 2016 at 07:58:29PM +0200, Luis R. Rodriguez wrote:
> On Wed, Jul 27, 2016 at 06:26:36PM +0100, Mark Brown wrote:
> > > to help enable asynchronous probe, however for built-in devices this requires
> > > very specific platform knowledge otherwise using async probe will blow up
> > > your kernel -- if you get it right though, using async probe can help with

> > I'm not sure what specific platform knowledge you're thinking of here?
> > We have coverage for most things in the form of deferred probe (messy
> > though it is).

> Deferred probe is a complete a hack and sub-optimal. Being able to address

Sure, I don't think anyone disagrees on that but it does mean we don't
actually blow up easily like we used to - it's messy but it does get
there safely.  I was specifically querying your statement that things
would blow up.

--dZihrQ6eCIduWT38
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXmPeBAAoJECTWi3JdVIfQMcQIAIcAga64otMKcUOwI0pNKY4z
wYcMpBcXFnX7B9B80MiQfuXvy6we64cvrO2GZxt0I253pb4cggBnOMHOlr0WlHq1
eW55Qgdts4e6YfGVdJLO4JJsAXcqPylfijX7gHgtAVNFMM8Urh3qJWzlw64aeJ4X
nvZKRntRK1g7yfW9956IoaYDndRs3DvCDT7Ansr4+H21vi+fugoLUvDLoecdLQ8D
noJwv/13/wMj4HEy4FelKBwLi8AaYwylmkCmQnpvBV0056EYS9y1sA0eWW564Dwi
wc1c1IE1VEiesbenDEq245McsT74fqJKsg4BL++j8akJrnskRncoOPWTjCA0tTU=
=7OkA
-----END PGP SIGNATURE-----

--dZihrQ6eCIduWT38--
