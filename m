Return-Path: <broonie@sirena.org.uk>
Date: Mon, 11 Jul 2016 18:17:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Olof Johansson <olof@lixom.net>
Message-ID: <20160711171718.GE3701@sirena.org.uk>
References: <20160709000631.GB8989@io.lakedaemon.net>
	<1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
	<20160711151300.GB3701@sirena.org.uk>
	<20160711170333.GE3890@thunk.org>
	<20160711171146.GD3701@sirena.org.uk>
	<CAOesGMiBo=tVJcyBmCtanvEWNzX+6oNUn_5ou4O_EzCv6QkOVA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3XA6nns4nE4KvaS/"
Content-Disposition: inline
In-Reply-To: <CAOesGMiBo=tVJcyBmCtanvEWNzX+6oNUn_5ou4O_EzCv6QkOVA@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--3XA6nns4nE4KvaS/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 11, 2016 at 10:13:56AM -0700, Olof Johansson wrote:
> On Mon, Jul 11, 2016 at 10:11 AM, Mark Brown <broonie@kernel.org> wrote:
> > On Mon, Jul 11, 2016 at 01:03:33PM -0400, Theodore Ts'o wrote:

> > > Very few people will actually be merging them, and in fact maybe
> > > having a patch queue which is checked into git might actually work
> > > better, since it sounds like most people are just cherry-picking
> > > specific patches.

> > I think at this point even if people are cherry picking patches it's
> > probably still going to be easier for people to work with a git tree
> > than anything else - the workflow for git cherry-pick, looking for
> > dependent patches and so on is pretty clear, the upstream commit IDs are
> > there if you prefer to go direct to them and if you really do want a raw
> > patch stack then it's easy to translate into one.

> Yeah, git-backed is much preferred -- you can easily do git log on a
> subdirectory, git annotate file contents, etc.

Probably also worth mentioning that this was one of the blockers for
getting kernelci.org testing Greg's queue for quite a while - it only
knows how to consume git branches.

--3XA6nns4nE4KvaS/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXg9SdAAoJECTWi3JdVIfQEV0H/3oVNfK8uc3JK+0e7OoBlLDO
wDBfahm2k5j/r4N9FPFZuXutPbYYa8LBAPx9uIVlJqundcGWls8hLMulxJtD1Mmg
lWyLBTWZp4vYJYK/GtIvo7uxzCJPtRKMIC9yK3zpEcrFPxFGmfgkH3zszOZwEzz6
Lj4A3Qxlu1h98vAtbQ2lXpPaBMTguteZyyHOmXjpHJ1cdlgRTi28sUCOcm1FFhJ8
mjcB88t4J+N/EznRC0rtdKwv9QPDw4rGPscrWF7ZRZYBX4iQ62G8xpOhGpKF79qw
9TGIlJP/8/lppVFO3WYYtbh8zTV8qv9dGQFmSELo5wWzYMcxoRsp6vATXKKjCSg=
=6+1U
-----END PGP SIGNATURE-----

--3XA6nns4nE4KvaS/--
