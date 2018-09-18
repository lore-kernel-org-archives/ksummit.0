Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3F974EB1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 16:12:08 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C28838D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 16:12:07 +0000 (UTC)
Date: Tue, 18 Sep 2018 09:12:01 -0700
From: Mark Brown <broonie@kernel.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Message-ID: <20180918161200.GL2471@sirena.org.uk>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<20180905113715.GJ9781@sirena.org.uk>
	<20180905150315.GA10819@linux.vnet.ibm.com>
	<20180905115008.22e3d21f@gandalf.local.home>
	<20180905162007.GO4225@linux.vnet.ibm.com>
	<1536165914.3627.17.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809052119580.15880@cbobk.fhfr.pm>
	<1536176428.3627.28.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809062152330.15880@cbobk.fhfr.pm>
	<yq1bm8urker.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Bzq2cJcN05fcPrs+"
Content-Disposition: inline
In-Reply-To: <yq1bm8urker.fsf@oracle.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Bzq2cJcN05fcPrs+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 18, 2018 at 09:43:08AM -0400, Martin K. Petersen wrote:

> 1. I could just always revert instead of dropping the patches. The
>    downside is that we end up with a pretty messy history because, as I
>    pointed out above, it's usually a matter of dropping tens of patches
>    at a time and not reverting a single offending commit. In addition,
>    having a messy history makes it harder on distro kernel people to
>    track driver updates.

I used to deal with this by using topic branches heavily and making my
-next be an automated merge of those branches, if something went badly I
could just throw away the branch.  I stopped for a while because Linus
didn't like the number of branches I was creating, though it wasn't a
problem with the approach in general.

--Bzq2cJcN05fcPrs+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluhI9AACgkQJNaLcl1U
h9BAuAf/T5AvU3MTxylzxCW4gyqJWpoNxmxigX0NXrroitENUHdTwi5sMrsU/enj
+CwMHZkC5uZJhDJGWp2X+FdcLM7EDiQ4fureXIn+x54by0Aaihfxq8BczUsOlncF
h6QvwpAKH+hc08ageOU9acs0fhiOya99DMs6YnEjB4vGmnpGIsIMM7ZKnu3OJznv
yfTe3Lfv4VZnYFwOqSLpbK37aMjnv48nKQeGrpv7PoQjNo5912UeU942AfKZ+AGd
71FkP+A28PzIqLhJheeHhqgRSa97IRwxdDLJ1MoVU129R7LYlyOlHgdxKtStugy2
C7/+6zwslpXQIVdOD2+QaJGUWfaTwA==
=Sykr
-----END PGP SIGNATURE-----

--Bzq2cJcN05fcPrs+--
