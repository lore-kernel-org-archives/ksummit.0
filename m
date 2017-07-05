Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B8B71BFA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 14:33:58 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3CC1F3CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 14:33:58 +0000 (UTC)
Date: Wed, 5 Jul 2017 15:33:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20170705143341.oees22k2snhtmkxo@sirena.org.uk>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="q6le5hl6g3lkr77a"
Content-Disposition: inline
In-Reply-To: <20170705140607.GA30187@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Thorsten Leemhuis <linux@leemhuis.info>,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--q6le5hl6g3lkr77a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 05, 2017 at 04:06:07PM +0200, Greg KH wrote:

> I don't mean to poo-poo the idea, but please realize that around 75% of
> the kernel is hardware/arch support, so that means that 75% of the
> changes/fixes deal with hardware things (yes, change is in direct
> correlation to size of the codebase in the tree, strange but true).

Then add in all the fixes for concurrency/locking issues and so on
that're hard to reliably reproduce as well...

--q6le5hl6g3lkr77a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAllc+MQACgkQJNaLcl1U
h9BLnwf+Lo4LU25hXUY+PtHfu7wv1X2LqldLncDv2RU+ZAKB/nbxHd1PZX4XuCBk
2KZ+3qyJVDpBZHY9JdqqqZ7sCkSAe9rHfLLc6dmERVlMHyLjCZCCBhT2UX2Gs17j
7DQBiknmvnGws3YavJxvA+0NoqgQRwCBQ0jsWznb1jis4qHcw7zi+UBlsQ25RqbQ
qnsjtk583EOo1Xjfuhx1OmYqndkkmill0dwBe/xOFEBwY1WuX7kD4HChqix4S8ud
+Ks9rQcZDdRbyhzu5yLoicNm7teFeNPac7A4R/wDGSQmxIx8aW/FTkxLmKXn2hb/
2IK0q49bGxMvorK64No8Y6GJoMrUfQ==
=uPYx
-----END PGP SIGNATURE-----

--q6le5hl6g3lkr77a--
