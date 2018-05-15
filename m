Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A4888BF7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 May 2018 11:55:20 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A33386A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 May 2018 11:55:19 +0000 (UTC)
Date: Tue, 15 May 2018 21:54:58 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Krzysztof Kozlowski <krzk@kernel.org>
Message-ID: <20180515215458.00f92def@canb.auug.org.au>
In-Reply-To: <CAJKOXPf=y_D4qA-M=cf4nuL3-J4D9k5UrVo=fDPjJwtntCUBFA@mail.gmail.com>
References: <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<20180509090346.GY13402@sirena.org.uk>
	<20180509204727.7ff38021@canb.auug.org.au>
	<20180509105534.GE7985@vkoul-mobl>
	<20180509224313.5e5fe381@canb.auug.org.au>
	<CAJKOXPf=y_D4qA-M=cf4nuL3-J4D9k5UrVo=fDPjJwtntCUBFA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/7NifbdT/4FMpEq.FRvUTzAM";
	protocol="application/pgp-signature"
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/7NifbdT/4FMpEq.FRvUTzAM
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Tue, 15 May 2018 12:42:49 +0200 Krzysztof Kozlowski <krzk@kernel.org> wr=
ote:
>
> Please merge following fixes branches from my trees:
> Tree: samsung-krzk
> git://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git
> branch: fixes
>=20
> Tree: pinctrl-samsung
> git://git.kernel.org/pub/scm/linux/kernel/git/pinctrl/samsung.git
> branch: pinctrl-fixes
>=20
> Although both are currently empty... but I guess you are collecting
> this also for future.

Yes, indeed.

Added from tomorrow.

Thanks for adding your subsystem tree as a participant of linux-next.  As
you may know, this is not a judgement of your code.  The purpose of
linux-next is for integration testing and to lower the impact of
conflicts between subsystems in the next merge window.=20

You will need to ensure that the patches/commits in your tree/series have
been:
     * submitted under GPL v2 (or later) and include the Contributor's
        Signed-off-by,
     * posted to the relevant mailing list,
     * reviewed by you (or another maintainer of your subsystem tree),
     * successfully unit tested, and=20
     * destined for the current or next Linux merge window.

Basically, this should be just what you would send to Linus (or ask him
to fetch).  It is allowed to be rebased if you deem it necessary.

--=20
Cheers,
Stephen Rothwell=20
sfr@canb.auug.org.au

--Sig_/7NifbdT/4FMpEq.FRvUTzAM
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlr6ypIACgkQAVBC80lX
0GzXrAf+Iie5ugOF7rKgcAVgkS6uk/BxzEuseZukkmPsEew5mncMmmf88uZlhN+L
0zJFtpKwLulKyu8NeIqiHzGDB3NfHVrmGEBTWD1TDw24aHBufZkoXZgM/w5SAszt
anO1tNMMO6BpjBXHkTp5mxOEqkFkkjpfAZsegFi+HJ9eoZf6iAiWoAnwmF9jZHDo
Abyifbqt7SlU00wZ6UXgcppc+pVg6MC1HenUJ/hjZ9l6/pJTdk04pGSp2DDO6yvs
H6hRUWMwRoVN4gT6JCs3EU5uPVqsolw0YQ/RxIJX7fV992o2xLCHxXK/JK40XG2f
L5WIS1vyKa4XSFYdAvAffL1E88W9zw==
=jkXy
-----END PGP SIGNATURE-----

--Sig_/7NifbdT/4FMpEq.FRvUTzAM--
