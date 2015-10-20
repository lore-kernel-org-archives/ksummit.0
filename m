Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7B2B37AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 15:56:41 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 62B75173
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Oct 2015 15:56:40 +0000 (UTC)
Date: Tue, 20 Oct 2015 16:56:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Message-ID: <20151020155631.GC32054@sirena.org.uk>
References: <20151012190137.GA1992@thunk.org>
	<20151019103304.27e596a5@recife.lan>
	<20151019135348.GH14956@sirena.org.uk>
	<1445272076.2481.37.camel@loki>
	<20151019173419.042d5e8b@recife.lan>
	<20151020131330.GY32054@sirena.org.uk>
	<20151020132955.4294915d@recife.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iv66pGDkNHRbjGM5"
Content-Disposition: inline
In-Reply-To: <20151020132955.4294915d@recife.lan>
Cc: Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Lars-Peter Clausen <lars@metafoo.de>, Mark Brown <broonie@kernel.og>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--iv66pGDkNHRbjGM5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 20, 2015 at 01:29:55PM -0200, Mauro Carvalho Chehab wrote:
> Mark Brown <broonie@kernel.org> escreveu:

> > It's still a program that has to be built for and installed on the
> > device under test which is the big bar for a lot of users (consider the
> > case where an audio expert is doing system tuning on a device using a
> > firmware image supplied from elsewhere, it may be difficult for them to
> > build new programs for the image or request that they be included in the
> > image).

> Well, with such assumption, even having a debug option would be
> a problem, as the firmware image may not be compiled with such option.

> I think that it is actually easier to cross-compile a program with all
> libraries required statically linked and then copy it to the target
> than convincing the firmware image manufacturer to send an image
> compiled with some additional options.

No, not normally - this is usually within OEMs and in places where this
is a problem you've typically got separate teams looking after userspace
and kernel delivery.  The kernel team is providing the drivers, the
userspace team isn't really involved and so it's more natural to work
with the kernel people.  It's kind of a specific need but it's
surprisingly common, and if it's just a debugfs thing there's a
reasonable chance someone wanted debugfs anyway.

> > My main concern here is ending up with two different machine parsable
> > formats for exporting the topology information to userspace - it's
> > potentially a bit confusing for people to know which one to pick and
> > might end up needing multiple tools and libraries to parse depending on
> > the situation.  It would be much nicer if we could get a consistent
> > format between the two.

> I'm open to suggestions. The advantage of the MC next gen API is that it
> is subsystem independent, and we're adding some ways for an already
> existing MC graph to be used by other subsystems. So, it can provide an
> end-to-end graph that represents how the stream is wired on the entire
> Kernel.

Yeah, I like the idea behind MC - I think what I'm suggesting is mainly
looking at the topology binary format that has been defined for the DSPs
and seeing if it can be reused in the MC ABI (or if there's some
blockers to reuse which might also impact the topology code in its
current use cases which would be just as valuable).


--iv66pGDkNHRbjGM5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWJmQvAAoJECTWi3JdVIfQpcMH/jz6YIYzyWMwLv1EiY1T1AC8
PV69S98SKA+dcB43TuHyzNsd+9RfVuFPTc1+C4NHMC0nsNiwMifYgCPvMu0iNJBF
/r+2tI3VGnJ8AihntrQmpa/EKmVJ8YMVgAnQAjaDRFAeBpNxAUfupFDfvt5A+oGy
zh3Up7+GgXK96Dl2s08fnRAqHJHMYdxntzHvswnjRooq+pPhTuGF9h0DaaklO2kT
NZDIG3j5GwI43j6nrItYcdBriRb4US3xJg6ZBl6raTYkgSJ9xShm1ZTlmRphSnmM
jlZr5xWNP07krPtQZ2LpHuFg49esFT5SdauwRk76NbVzopMw26hy9ifXOc15jYk=
=9pVV
-----END PGP SIGNATURE-----

--iv66pGDkNHRbjGM5--
