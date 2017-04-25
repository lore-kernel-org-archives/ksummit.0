Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 31C28B1F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Apr 2017 16:56:48 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BDA251AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Apr 2017 16:56:47 +0000 (UTC)
Date: Tue, 25 Apr 2017 17:56:32 +0100
From: Mark Brown <broonie@kernel.org>
To: Bart Van Assche <bart.vanassche@sandisk.com>
Message-ID: <20170425165632.5qvc62j2ex3h6rgg@sirena.org.uk>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<20188905.kHbMkj7sB6@avalon>
	<CA+55aFxFyX-6y0MH2QivC+GAVThEFNHVKc3DBZJzDBc9JU_nCQ@mail.gmail.com>
	<1834084.5qZ8rLimvk@avalon>
	<1492631703.3217.30.camel@HansenPartnership.com>
	<3f55980c-1e8d-c841-2555-472ed10eb2fc@sandisk.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2d7mcofwawfbjfwh"
Content-Disposition: inline
In-Reply-To: <3f55980c-1e8d-c841-2555-472ed10eb2fc@sandisk.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Doug Ledford <dledford@redhat.com>, David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--2d7mcofwawfbjfwh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 25, 2017 at 09:02:12AM -0700, Bart Van Assche wrote:

> I noticed myself is that for some subsystems I contribute to (e.g.
> block, SCSI and RDMA) maintainers provide feedback about patches within
> a very reasonable time. For two other subsystems I contribute to it can
> take weeks or months before adequate feedback is provided. Sorry but I
> don't think that it is acceptable that it takes that long before
> feedback is provided and hence that this is a topic that deserves to be
> discussed during the maintainer summit.

This comes up most years...  is a discussion likely to come up with
anything new that's concretely actionable?

That said a related thing that feels like it's definitely a maintainer
summit thing is getting new things into the kernel that somehow sit
between maintainers (new subsystems being the most obvious example) - we
do have a gap where people will negatively review things but won't
either take them or positively review them which can go on for very long
periods with people being just ignored (or worse just getting new people
popping up every once in a while with negative comments).  That's
obviously offputting for submitters, and can be especially bad if it's
coupled with other stuff like people taking on board the derogatory
comments that often get made about some segments of the industry.

--2d7mcofwawfbjfwh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlj/f78ACgkQJNaLcl1U
h9AutAf/eYgPJNfz/iwZsuZX1xJQi19kqHL3NpyiDvKruCVxlabl/0rR1gFAuE0W
9UwZ5wozjuQeTc7wQ20B8xprP44en6UVoP2mIGf5R5d9gKotUPpSVM5cEbjCRNg2
5804kTaLP698ZUiPj1vClqgLqeKtOMCK/vl2iq0XY1SAHtmNGdR7SUhlGNgyqP7b
Qj+HKQedYJUkR+FtD9l5mSDRlBDmsLkTAdIeNod33/GAPs1M3Ch9bOg2JlgJwDRR
YZs/HNKoHKVWncvQLtbqV0EcxJw0JHE02B5RKLaFf995UnbT4cgTccyYsbfdlcux
nsyQGQCTG45ub5p4wvmd07alUewutw==
=n8Qd
-----END PGP SIGNATURE-----

--2d7mcofwawfbjfwh--
