Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 548261352
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:16:55 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CEB758D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 18:16:54 +0000 (UTC)
Date: Tue, 11 Sep 2018 19:16:52 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180911181652.GG10123@sirena.org.uk>
References: <20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
	<20180911170212.GC8284@roeck-us.net>
	<1536686530.3511.1.camel@HansenPartnership.com>
	<20180911175634.GF10123@sirena.org.uk>
	<1536688832.3511.10.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NPukt5Otb9an/u20"
Content-Disposition: inline
In-Reply-To: <1536688832.3511.10.camel@HansenPartnership.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--NPukt5Otb9an/u20
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 11, 2018 at 11:00:32AM -0700, James Bottomley wrote:
> On Tue, 2018-09-11 at 18:56 +0100, Mark Brown wrote:
> > On Tue, Sep 11, 2018 at 10:22:10AM -0700, James Bottomley wrote:

> > > Perhaps the -next tracking projects could have some sort of co-
> > > ordination list to prevent the five bug reports for the same issue
> > > problem?

> > We're not *that* overburdened with people running testing, and
> > especially not with people actively reporting the results, at the
> > minute.

> We are if a maintainer snapping at someone causes tests not to be run
> or results not to be reported.

That needn't follow - we don't know that this was lots of the automated
testing people reporting the same issue, one automated testing person
and some other people who were just trying to do work on the subsystem,
just the maintainer having a bad day or something else.  The automated
testing people coordinating with each other is only going to help if
it's only them.  In this case it sounds like it might be as much about
having someone report a bug who wasn't familiar with the unusual
processes the subsystem was using as anything else.

--NPukt5Otb9an/u20
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluYBpMACgkQJNaLcl1U
h9ABpQf+N/00NPL7OPNuzt19UgYI884KUsH0Snevnn45PevbbkCWjnMJxyWk8Z3c
MBm3WSGK51GK/xFMLxtTbo/s74P7HfVbpiiWa2AWnoGTZbwixA+NtC2rZyGvip6o
LeaDShsDZJF+Ct6bhL4Ea/W4vfMEP1uMtuPODd/fmCE6vrKBpfqpiIH8zAdoqDOA
DZWa7n1LQfyhDToOck3s0UI+YfpOk9Yf4Qri0ih7kYEi13Kj4oY8ioKt/4eQYsUP
j6dvzO53o+BoVOBjo+BdBooGVhc70FCK0WMfSz3HBkc9AQ685PeJQ11AnqbnkRec
EXkVbEx09vkIHg2+G2UgWwpPA6NSUg==
=EL07
-----END PGP SIGNATURE-----

--NPukt5Otb9an/u20--
