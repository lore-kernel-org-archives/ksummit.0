Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 681FD71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 17:01:38 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EB968172
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 17:01:37 +0000 (UTC)
Date: Thu, 4 Aug 2016 18:01:26 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160804170126.GC10383@sirena.org.uk>
References: <20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
	<20160804082018.GA27204@kroah.com>
	<20160804093355.30096bbe@gandalf.local.home>
	<20160804154444.GA10323@sirena.org.uk>
	<1470326213.2411.26.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dkEUBIird37B8yKS"
Content-Disposition: inline
In-Reply-To: <1470326213.2411.26.camel@HansenPartnership.com>
Cc: Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--dkEUBIird37B8yKS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 04, 2016 at 08:56:53AM -0700, James Bottomley wrote:

> What I'm pointing out is that Fixes: has uses that go way beyond
> stable.  That's why I do think it's good practice for the kernel.  It's
> something we should already be doing that can assist the stable
> process, not something that's just been invented for the purpose.

Right, I'm not saying it's not good practice just that I don't think
insisting on it as a matter of pure process and bookeeping is the best
way forwards - if people are providing it because it's good practice and
they've done the analysis against upstream that's great but if someone
is filling it in because they've got to check that box on the form I'm
less convinced.  I'm not sure that the degredation in the quality of
information that gets recorded (I'm pretty sure I at least don't have
the capacity to actively verify every Fixes tag), or cases where fixes
don't end up in stable because the submitter doesn't care about that,
are going to be worth it.

I've had some bad experiences with some similar reporting requirements
in the past - if people aren't actively engaged and supportive they end
up working around rather than with the process which can make it harder
to use the information later on.  Perhaps I'm overreacting to those but
I'd much rather see this promoted as good practice than a stick to beat
people with.

--dkEUBIird37B8yKS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXo3TiAAoJECTWi3JdVIfQdh4H/ReQGNSF238p2hdNk6N+Ebll
ze8kt3YOl18qlnuMSTyE5LYMhvxCtl7XJa7lLJAhgRoJAIPZB5d5g+z1VUThdjQa
jgg3MTMh75tQMmBtdudNkf9XZXD0wyibGhzfHqWz3l42XJrdXu//46gWIWhU9O0U
SOBFFgntZYRT6AoAd+50yv1qxJf6zBvNmuT+IRmuG8/sVWoyH7EVkiW05yzPCRAf
wiNIqRpn48d+R0QKjUer0VCerme/NEwGqdwV1KU8EgkA77ev8lunLNlcnlMDniz4
zCg6tche6POZNyZm7tb3xn7u9YOFH8ASy/jeP9ys15kig3lZC4WirV9DqSQkDL0=
=4tal
-----END PGP SIGNATURE-----

--dkEUBIird37B8yKS--
