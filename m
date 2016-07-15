Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7C842982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 12:38:25 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0D3871C5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 12:38:24 +0000 (UTC)
Date: Fri, 15 Jul 2016 13:38:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20160715123815.GH30372@sirena.org.uk>
References: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
	<20160715111034.GF30372@sirena.org.uk>
	<20160715114037.GA27936@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2oox5VnwalALFvA7"
Content-Disposition: inline
In-Reply-To: <20160715114037.GA27936@kroah.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--2oox5VnwalALFvA7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 15, 2016 at 08:40:37PM +0900, Greg KH wrote:
> On Fri, Jul 15, 2016 at 12:10:34PM +0100, Mark Brown wrote:

> > I do think that could be a useful topic to cover in stable discussions
> > at KS, we've always focused on the stable trees but there's a much
> > broader spectrum of work going on there.

> I agree it would be fun to talk about it, but the relevance of it to 90%
> of the people in the room whose day-job doesn't have to deal with that
> type of thing, is probably very low.

> Let's stick to the stable workflow issues here, not the "why aren't
> companies getting their code upstream and have to keep these big trees"
> issue.  Which might be a fine separate topic to bring up, but usually we
> all know the reasons there, and no one who is invited to KS can resolve
> them...

I wasn't thinking about the out of tree code discussion but rather the
discussion we've been having here about workflows for feature backports
and use/applicability of things like LTSI for sharing those.  That seems
to have generated some interest, it seems clear that we've got some
interest and some diversity of opinion.  Perhaps it might fit better
outside the main day as a breakout session of some kind but we ought to
be able to something useful.

> > > of patches, not a kernel tree, meaning merges or cherry-picks are non-trivial.
> > > Sure, one can create a kernel tree from it, but that is not the same.

> > This is actually the main reason why I've never got around to pushing
> > things back into LTSI (it has been a little while since I last did that
> > admittedly).  The effort involved in figuring out the tooling for LTSI
> > always got in the way before anything productive came of it, having a
> > directly usable git tree would be *so* much easier.

> Ok fine, I'll work on that, but if I do so, I will expect to see patches
> from you for it :)

I think I can manage two patches :)

--2oox5VnwalALFvA7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXiNk2AAoJECTWi3JdVIfQsgcH/jyeEPPy3l8cb0kZM/dyZQ4+
abl2USzzR3kF4ahNjrt1kW3Fti5CimLDdpB1xqt6srSEvlyI/kZ2tJuKWtHckndD
EJ7b7iEjTgwBdIOAzCAgn0G5LfOBuR91CdbuhrKxgSAdOmSxtFFr6axlIXkjpSCC
Pjvsfjze4CdQkNlIhFvtL3gZY7LH401741hrNpMNmzt0vLKxntyKF0BcuBZFExwF
tCPG+OIHFY7b+FF6WUkKppiNSPJ4+IWFXoEZyb6T3lLAXRAh+WkvEa2kLlvvjBn7
rWiH5pQxT2qhzN1KIWFLeXShmFNErMFeD+gSpbVWV5etZabmq9M2G+Chn3kePPg=
=x179
-----END PGP SIGNATURE-----

--2oox5VnwalALFvA7--
