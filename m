Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A8A11C4E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 11:33:29 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4374510C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 11:33:29 +0000 (UTC)
Date: Wed, 26 Aug 2015 12:33:16 +0100
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Message-ID: <20150826113316.GA2977@sirena.org.uk>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com> <55B82222.3010409@samsung.com>
	<20150729074011.GB12557@amd> <55DCBB21.8070009@sonymobile.com>
	<55DD14C3.8090707@samsung.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline
In-Reply-To: <55DD14C3.8090707@samsung.com>
Cc: =?iso-8859-1?Q?Andersson=2C_Bj=F6rn?= <Bjorn.Andersson@sonymobile.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 26, 2015 at 10:22:11AM +0900, Krzysztof Kozlowski wrote:

> Thanks for updated numbers. Interesting that for the same SoC vendor
> (MSM) the difference between phone vendors is significant, e.g. 3.1M of
> Samsung/MSM insertions, 2.6M of LG insertions and only 1.8M of Sony and
> Motorola.

> In the same time number of mainline contributors from LG, Sony and
> Motorola is similar... so why LG and Samsung/MSM need more than 1M of
> additional code out of tree?

One thing that happens here is that there's a wide variation in how much
the hardware gets customized from the reference designs provided by the
SoC vendors which has knock on effect on the amount of additional work
that is needed in order to support a given board.  I know the Korean
manufacturers do tend to make quite a few modifications to their designs
so I'd not be surprised if that were contributing to the number of code
changes required.

> Mali GPU drivers are an interesting case:
> 1. They are open (I believe Linux version is entirely under GPLv2).

Well, there's the in kernel stubs and the actual driver...

> 2. They are developed for many OS-es.

> 3. They are present on may end-user products (using SoCs from Allwinner,
> Mediatek, Rockchip, Samsung and more).

> 4. Their coding style is so different that I can't imagine mainlining
> them into staging area... Recently I was digging into Mali400 and it was
> literally hurting my eyes to see that coding style. It's like opposite
> of kernel.

The other thing here is that they don't (AIUI) offer a stable ABI, the
ABI can change between IP revisions.

--d6Gm4EdcadzBjdND
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJV3aP5AAoJECTWi3JdVIfQThIH/3StQWh/UrhPbJcz9z4doOj2
dFu/lNG04ORdR8vvn6lmttLupLUOjIJnDxqZ9+K89Id3CBDVfbcDSM/oKbnX94Sv
K/8m+Ou01UyHJyksJCQJ//ipCYQn3KwT65USGBDfOeubNtjlQTW69uH5EqR+umXO
LNh9Yb/CvOOz2prmoG9xAmCgyLCyWoI+gPjWbAaLAbWHmAUQKyYgmS1ek9VG/yhS
tBopMqYkNVRhsYMnlV5szkApjREEg5NKuqJeED6wMYm0MoIMjctXRUtGabRHH+26
/1w07jZ7vudEpdmmnu0wNtyMowkQPrr5OBnXV7QlaBt0uuTa0r0Bb0E7fzAlxxU=
=LoV7
-----END PGP SIGNATURE-----

--d6Gm4EdcadzBjdND--
