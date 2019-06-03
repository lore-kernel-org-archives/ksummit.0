Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8D916D38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 22:11:41 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 651F5A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Jun 2019 22:11:40 +0000 (UTC)
Date: Mon, 3 Jun 2019 23:11:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Message-ID: <20190603221131.GE2456@sirena.org.uk>
References: <0bc02b84-4d9a-59a7-e6c6-a3b602adca73@linuxfoundation.org>
	<1018c8ba-61a0-c024-cd98-3b82ebd710ec@redhat.com>
	<20190602180913.GR12898@sasha-vm>
	<667d4900-0a9a-d6f8-7012-3c15c2df7da8@linuxfoundation.org>
	<20190603180953.GA17954@chatter.i7.local>
	<CAHk-=wgVYafLVe-ggAyWdC4Fxg7fCvJP5vgkLJSWPQhk_Xi-Cw@mail.gmail.com>
	<20190603211004.GU12898@sasha-vm>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Oh6wehMCKJhhoxlo"
Content-Disposition: inline
In-Reply-To: <20190603211004.GU12898@sasha-vm>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Squashing bugs!
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--Oh6wehMCKJhhoxlo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 05:10:04PM -0400, Sasha Levin wrote:

> Would it make sense to do some bikeshedding around how an ideal email
> bug report should look like, and then get syzbot and maybe kernelci to
> switch to using this new format as an experiment?

> A bunch the syzbot/kernelci/etc folks will be at LPC as well, and we'll
> have the testing & fuzzing MC going on where this can be discussed and
> agreed on once there is a concrete proposal.

I think we'll find that there's a lot of variation in what's useful to
report directly in the e-mail and how comes from the particular tests
that are being done, what's critical information about the environment
will vary quite a bit and there's going to be taste differences as well.
A lot of this is a combination of common sense and the reporters being
able to be responsive to feedback from their users, there's not much
commonality in the formatting of the existing reports from static
analysis but they're pretty much all useful (at least the ones I tend to
get are useful to me).

There is the question of tooling to track the bugs between multiple bots
which would benefit if they were doing standard things but if people are
working on that rather than trying to serve both humans and computers at
once we might be better off with some sort of API and providing a URL in
the emails for the machines to go and look at.

--Oh6wehMCKJhhoxlo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz1mxIACgkQJNaLcl1U
h9DJSAf+Ih1Qzv75oCs2TFhuS90AslRidVRBgH27dsMivpF1dBkN5rPxb7e1CYPX
7vtNSvn8qbBddd5nTDKUSyXsfEQXA0HeETodkl80RW9bRmBb/Mnfo3rTjg2IzY+g
WMINJv8dbbnJp+vl7cp7o7CeIGFrgutCW3ecKmNZH27ja2aEl/qpqX+XCSCRH7E3
drDdsDeftY0Uu3Q0sKgkec+RgR2Qb3NDsjQRbA9PPgz3fVesAtSxCDj1c2Ci4DTR
ZKvvPsK23vkGa4VXna1GqFo1LNwa1NX65y5r53sUomW0vXsxsmpxqANdJ56YS1r9
usq5NZ6FlctUMkgROAfp+gjdPeBN7A==
=1zzp
-----END PGP SIGNATURE-----

--Oh6wehMCKJhhoxlo--
