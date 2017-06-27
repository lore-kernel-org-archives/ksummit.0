Return-Path: <broonie@sirena.org.uk>
Date: Tue, 27 Jun 2017 16:33:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20170627153318.m77j53wfh34mxbwt@sirena.org.uk>
References: <20170623123936.42dab05f@lwn.net>
	<20170626121939.qedzaccvqflhocq6@sirena.org.uk>
	<CAKMK7uHwS0UsJtdOLstg01h3VajtPh_J7pzxQH65+fkJHfhgrQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yek3teccjc424cql"
Content-Disposition: inline
In-Reply-To: <CAKMK7uHwS0UsJtdOLstg01h3VajtPh_J7pzxQH65+fkJHfhgrQ@mail.gmail.com>
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--yek3teccjc424cql
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 27, 2017 at 10:38:54AM +0200, Daniel Vetter wrote:

> Looking at MAINTAINERS, there's relatively few entries for files under
> Documentation/, and most are for individual files (about 450). None
> are for one of the remaining DocBook files still in 4.12 afaics. I
> think we can fix this problem by making sure that a) docs are sorted
> usefully into directories (e.g. we put all the gpu stuff into
> Documentation/gpu/) and b) there's MAINTAINERS entries for all of them
> (which atm doesn't seem to be the case for a lot of stuff).

Yeah, there's directories there for my subsystems but I have to confess
I'd not checked the broader picture recently.

> But I think the lack of clear maintainer responsibilities for docs was
> something Jon already brough up at the previous KS, and we didn't
> really get anywhere with it.

Is that a case of people actively getting in the way somehow or more a
case that we're not able to generate enough interest for people to
actually work on improving the docs (which is partly about us showing
that we care of course)?

--yek3teccjc424cql
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllSer0ACgkQJNaLcl1U
h9BNwwf9EaY4/zGtwP5Bt7ocVYpolUe/CFM/Zhxkc7kVmsnpRacwHo/lzWbviFoW
Jkx00sExUEn5ao85/h7haFPIt7xSaYbWOL0AWhRIx4FmuFmKwhKu0ZxoL2JZrhGv
/o2PGxGut/Luw4AB0ePs81g7OaPZ+GItvW1SlLxu58Ba5ANsY3pX5ZuyA1GJ0ITV
MCl2kGrMrNGn0JD4l8pjFi5vm3en8cvVWfkRtWHEhcwox0Cd6wfnVm0Y7mbuHlgp
q4AJ7x+fDE0JdsyaWjCfrjZlsTXMcOp13VZRtTJ8iazpF6R4cUTl33hunIpnqkcF
5zP9J8EkCEDahGXRsh1K2nI2SEkZJw==
=jsQQ
-----END PGP SIGNATURE-----

--yek3teccjc424cql--
