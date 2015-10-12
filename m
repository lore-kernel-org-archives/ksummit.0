Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8A5435AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Oct 2015 18:45:10 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B011823D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Oct 2015 18:45:09 +0000 (UTC)
Date: Mon, 12 Oct 2015 19:44:54 +0100
From: Mark Brown <broonie@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20151012184454.GA14956@sirena.org.uk>
References: <CAKdAkRQLGRqMT-CJz6FemPqyo78wFrM6Kc=pR_BKxqLZqEzjQA@mail.gmail.com>
	<alpine.DEB.2.10.1508210805500.2566@hadrien>
	<20150821161409.GA26302@localhost>
	<20150821165852.GH12027@sirena.org.uk>
	<CAKdAkRRrqCNojwBHQ809APetuC-u1XqwViRVp5fBB2tO+naQ_g@mail.gmail.com>
	<20150821174150.GL12027@sirena.org.uk>
	<20150821175231.GM12027@sirena.org.uk>
	<CAKdAkRSywrXnRdwVyn406qoN1hQbTkFCM34Xt4NaC-ZfZ64MQg@mail.gmail.com>
	<20150821181833.GN12027@sirena.org.uk>
	<20151012183607.GA29127@thunk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline
In-Reply-To: <20151012183607.GA29127@thunk.org>
Cc: Tejun Heo <tj@kernel.org>, Shuah Khan <shuah.kh@samsung.com>,
	Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 12, 2015 at 02:36:07PM -0400, Theodore Ts'o wrote:

> This thread has meandered pretty far afield from the original topic
> proposal, and it's not clear whether there is something that is worth
> talking about at the kernel summit.  I don't _think_ there is, but it's
> possible I've missed something.  Please speak up if there's something
> that you think would be worth having a face-to-face discussion about.

Having gone and found the context to refresh my memory I do see there
was the discussion about providing an interface for drivers to more
easily manage the lifetime of objects allocated for userspace use (which
devm_ isn't).  I'm not sure if that needs a KS discussion or someone to
step up and try to code something though.

--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWG/+lAAoJECTWi3JdVIfQ+3QH/RkVOdwwbJ3Di9dNPejnA3h0
fyl/i2Y4netrriMGXEU8mMbOLCc5mdXmYoFfoJWmdtTUezIM+p6O96H7cpiYSUWe
UfXVIVSCquMFPjxoFkYhMDQ0p+B7CNecq5RvNDKZ3VFhXYziIj9JCWBsaGhp+GC5
eCOGgS/qRQnxSgvP94cEZOQI1NRM1s5y6oG6EJ4a/jSvBhdNVIk/+kRquDGGgWY/
wEgd8sg6f0PZsTC+Ns+yOrAiqBSO/azyVs5/+7DyrGHxF48/nRQHVEdacZLU+77e
O+71B4984hucjAQua4JY1us5hcg27dOPwWbUDxlJiSListNXO3JYaSWYYDGJtHg=
=hq2v
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--
