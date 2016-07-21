Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 41D40256
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 16:21:27 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3EEC6107
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 16:21:25 +0000 (UTC)
Date: Thu, 21 Jul 2016 17:21:07 +0100
From: Mark Brown <broonie@kernel.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20160721162107.GN6509@sirena.org.uk>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160719173120.GE30372@sirena.org.uk>
	<1469109732.120686.168.camel@infradead.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VBq/nvTu32OVLBUP"
Content-Disposition: inline
In-Reply-To: <1469109732.120686.168.camel@infradead.org>
Cc: Behan Webster <behanw@gmail.com>, ksummit-discuss@lists.linuxfoundation.org,
	sumit.semwal@linaro.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] Support (or move
 towards to) LLVM
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--VBq/nvTu32OVLBUP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 21, 2016 at 03:02:12PM +0100, David Woodhouse wrote:
> On Thu, 2016-07-21 at 07:41 -0600, Shuah Khan wrote:

> > Would you be willing to share your experiences and the nature of bugs
> > you were able to find using LLVM. Maybe that could be folded into this
> > discussion as a real life experience.

> http://llvm.linuxfoundation.org/index.php/Bugs

> Probably horrifically out of date. Behan is the best person to ask for
> a current status, I suspect...

CCing in Sumit who I believe has also been looking at some issues
building kernels with LLVM.

--VBq/nvTu32OVLBUP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXkPZyAAoJECTWi3JdVIfQ6XQH/2RSxPjzvsA/Xrzj5ly9UdUc
YzZGr7NFeUyITe0g1P4sK8isn545KrkaS1iec14W0Q6q7yLkGk0c3kBKb7rryjhJ
iC8KMKfbcJftpt2OM8wpQAAgEn9ump9uqqA0Ov/4w/bRpTYS0P6LTvsw9OFFUuD8
SKPqDQC2IAIYC/5B2bUoqJ+8F6YwHP/NE9l9WMYB4rEJWPcU58LWlkX56o2C+5c7
GMfY/Gul4v3vm5HowbTJyql6hbmbZe2W46E+yff/Jexp8oAsx/1GpPglgCwFMcEu
z8s1f0VUmeUltSqNR40zXRnyjPrm5mnK8mOlQaYf17EHoIYdSXWlbZKEyuCR8I8=
=xnAW
-----END PGP SIGNATURE-----

--VBq/nvTu32OVLBUP--
