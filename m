Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ADCB6FD5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 11:53:43 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9196A7DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 11:53:41 +0000 (UTC)
Date: Mon, 9 Sep 2019 12:53:38 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20190909115338.GD2036@sirena.org.uk>
References: <CAPM=9tx7toB7Bsif6RDo51HNxcGbbHDPHD7DjmF9i+zs-J0HRQ@mail.gmail.com>
	<1568025855.6613.5.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DrWhICOqskFTAXiy"
Content-Disposition: inline
In-Reply-To: <1568025855.6613.5.camel@HansenPartnership.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] vague topic for maintainers summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--DrWhICOqskFTAXiy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 09, 2019 at 11:44:15AM +0100, James Bottomley wrote:

> I haven't really found corporations attempting to apply pressure to get
> their patches merged as is, although I've heard of others having this

I've definitely faced this in various forms, mostly coming from
companies in the embedded space.  It feels like it's got better
over time as companies have become less prone to going on
substantial out of tree adventures but it's still there.

> problem.  My usual problem is that the creator of the patch is deeply
> wedded to their design and doesn't want to change so it's an individual
> rather than a corporate issue.

That's often a corporate problem as well, if the company has a
big investment in whatever approach or codebase they have they
may not want to spend the time on substantial rework.  Often it
seems fairly clear that the people doing the upstreaming have
inherited something from other engineers rather than having done
the design and original implementation themselves.  In my more
embedded experience I'd say that the corporate investment is a
more common issue than developers.

I'm not sure I have any particularly bright ideas other than
being clear with people about what the issues are and asking for
clearer explanations of what's being done and why it's different
to everything else.

--DrWhICOqskFTAXiy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl12PT4ACgkQJNaLcl1U
h9AZ6wf7BKya2b9zNvqhob+lVdcgUS5ro1a96F5+QQas2/PU5r8w/9qg3SsJeXUq
sTbmg8GcdPCsPBqqcOSKIGc9VNoJH5bPiEzMNd+AczRmyVJaok7PqhKKSHa6psUy
TqYNCDtWD10JDcPkerpByTbRLCmwHiuXFchbE+o6zccwI6M/8MvrFxgqEoAPTVEo
y8DBncf6o6dLOztbFgAZOoj0mizFep7iW/gtPdJCow8e73mtvpsbuH186A9R1Wn2
RdyP97TXwa/OOUWRH7s8nBN07ZNJSHRhLm2MxXlbTHB1asohFevRTRHQmATcB1JE
vBEmrcXyGV2BWg2JV156xeVd5Ls8Cw==
=gKRr
-----END PGP SIGNATURE-----

--DrWhICOqskFTAXiy--
