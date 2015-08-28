Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 599C6D95
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Aug 2015 18:17:35 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF4A3F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Aug 2015 18:17:34 +0000 (UTC)
Date: Fri, 28 Aug 2015 19:17:18 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20150828181718.GU12027@sirena.org.uk>
References: <20150828173005.GA31345@thunk.org>
	<1440784090.2202.40.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/neOAU127r7zg3jS"
Content-Disposition: inline
In-Reply-To: <1440784090.2202.40.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] The first round of kernel summit invites have
 gone out...
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--/neOAU127r7zg3jS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 28, 2015 at 10:48:10AM -0700, James Bottomley wrote:

> That basically means the entire service provider netblock is blacklisted
> because someone bought a co-lo to send spam ... talk about group
> punishments.  The problem is that companies trust services they pay for
> (however unreliable the providers are) so as this creeps along we're
> going to find large areas of the internet not accepting email from
> people who don't send it from a large mail aggregator (like gmail)
> because setting up a spam list based on extrapolation from a few reports
> is a cheap thing to do.

It's not just random companies doing this, a lot of the more militant
anti-spam people tend to get angry with providers (and sometimes whole
countries) based on their normal incoming traffic patterns so they're
willing to tolerate what they see as a vanishingly small false positive
rate.  Which means you end up being able to tell them that the reason
you're not replying to their mail is that they've blacklisted the entire
country you're in (even with a relay if they scan received lines) :/

--/neOAU127r7zg3jS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJV4KWtAAoJECTWi3JdVIfQHJwH/AurbbTK7bBmyi7qu+XRBCd7
SmvkOKy+m3kAiScvRvRcCZ94juY1Q98II1zHMJx69hk6x5yL2m3QpP5F3jrgtdN6
jbwaXf6FPtPPuBG6Hanhvzy1xsM7KkqMgIXzMT/Td54qftZkyTv0/zs0416rJ5Dc
iwWtUzirw4raLoiCvX/7UKPdDYVywYAAdGa1bcNW0m2SIraMVZfxyXYUFEcoRg8g
wNrByL1vXdNrORTW/f+Dn75NMiqwdhYTx7wP6FmxmPndqzjzgLmdeG6uLM2XGErP
F/5QFjJVRnYsNRenU4lUSrxq6SNoy4/NjufktIy377fROJ8rvlTsPl6a1nNuX2M=
=2n8J
-----END PGP SIGNATURE-----

--/neOAU127r7zg3jS--
